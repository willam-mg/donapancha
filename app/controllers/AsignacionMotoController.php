<?php

namespace app\controllers;

use Yii;
use app\models\AsignacionMoto;
use app\models\AsignacionMotoSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\models\Pedidodelivery;
use app\models\Moto;
use Carbon\Carbon;
use app\components\OneSignalComponent;

/**
 * AsignacionMotoController implements the CRUD actions for AsignacionMoto model.
 */
class AsignacionMotoController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all AsignacionMoto models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AsignacionMotoSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single AsignacionMoto model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new AsignacionMoto model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate($pe = null)
    {
        $model = new AsignacionMoto();
        $model->fecha = Carbon::now()->format('Y-m-d');
        $model->hora = Carbon::now()->format('H:i:s');
        $model->fecha_despacho = Carbon::now()->format('Y-m-d');
        $model->hora_despacho = Carbon::now()->format('H:i:s');
        $model->pedido_id = $pe;
        $pedidos = Pedidodelivery::find()->where([
            'estado'=>Pedidodelivery::ESTADO_EN_ESPERA,
        ])->all();
        $motos = Moto::find()->all();
        if ( \Yii::$app->user->can(\Yii::$app->user->identity::ROLE_SUCURSAL) && !\Yii::$app->user->can(\Yii::$app->user->identity::ROLE_ADMINISTRADOR) ){
            $motos = Moto::find()
                ->where([
                    'sucursal_id'=>\Yii::$app->user->identity->sucursal_id
                ])
                ->all();
        }
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                if ( !$model->save() ){
                    throw new \Exception( ErrorsComponent::formatJustString($model->errors) );
                }

                $pedido = Pedidodelivery::findOne($model->pedido_id);
                if (!$pedido){
                    throw new \Exception( 'No hay pedido' );
                }
                $pedido->estado = Pedidodelivery::ESTADO_ASIGNADO;
                $pedido->save();

                $message = 'Pedido '.$pedido->cliente->razon_social.' '.$pedido->fecha_entrega.' '.$pedido->hora_entrega;
                $transaction->commit();
                Yii::$app->session->setFlash('success', 'Assignacion correcta' );
                
                $res = OneSignalComponent::sendMessageDevice($model->moto->player_id, $message, $pedido);
                // return print_r($res);
                return $this->redirect(['/pedidodelivery/view', 'id' => $model->pedido_id]);
            } catch (\Throwable $e) {
                $transaction->rollBack();
                Yii::$app->session->setFlash('warning', $e->getMessage() );
            }
        }

        return $this->render('create', [
            'model' => $model,
            'pedidos' => $pedidos,
            'motos' => $motos,
        ]);
    }

    /**
     * Updates an existing AsignacionMoto model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing AsignacionMoto model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the AsignacionMoto model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return AsignacionMoto the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = AsignacionMoto::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
