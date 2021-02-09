<?php

namespace app\controllers;

use Yii;
use app\models\Moto;
use app\models\MotoSearch;
use app\models\AppUser;
use app\models\Pedidodelivery;
use app\models\Cliente;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\data\ActiveDataProvider;
use yii\helpers\ArrayHelper;

/**
 * MotoController implements the CRUD actions for Moto model.
 */
class MotoController extends Controller
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
     * Lists all Moto models.
     * @return mixed
     */
    public function actionIndex()
    {
        // $this->validAccess();
        $searchModel = new MotoSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Moto model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        // $this->validAccess();
        $model = $this->findModel($id);

        $ids = ArrayHelper::getColumn($model->getAsignaciones()->all(), 'pedido_id');
        $query = Pedidodelivery::find();
        $pedidos = new ActiveDataProvider([
            'query' => $query,
        ]);
        $query->where([
            'id'=>$ids
        ])->all();

        return $this->render('view', [
            'model' => $model,
            'pedidos' => $pedidos,
        ]);
    }

    /**
     * Creates a new Moto model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {   
        // $this->validAccess();
        $request = Yii::$app->request;
        $model = new Moto();
        $user = new AppUser();
        if ($request->isPost && $model->load($request->post()) &&  $user->load($request->post()) && $model->validate()) {
            $transaction = \Yii::$app->db->beginTransaction();
            try {
                if (!$model->save()){
                    throw new \Exception(\app\components\errors\ErrorsComponent::formatJustString($model->errors));
                }
                $image = UploadedFile::getInstance($model, 'foto');
                if ($image){
                    $imageName = 'moto_'.$model->id.date('ymdHis').'.'.$image->getExtension();
                    $image->saveAs(\Yii::getAlias('@imagePath').Moto::PATH.$imageName);
                    $model->foto = $imageName;
                }
                $model->save();

                $user->password_hash = Yii::$app->security->generatePasswordHash($model->telefono);
                $user->access_token = Yii::$app->security->generateRandomString();
                $user->rol = AppUser::ROL_MOTO;
                $user->moto_id = $model->id;
                if (!$user->save()){
                    throw new \Exception(\app\components\errors\ErrorsComponent::formatJustString($user->errors));
                }

                // creando su cliente
                $cliente = new Cliente();
                $cliente->telefono = $model->telefono;
                $cliente->razon_social = $model->nombre;
                $cliente->save();
                $user->cliente_id = $cliente->id;
                $user->save();

                $transaction->commit();
                return $this->redirect(['view', 'id' => $model->id]);
            } catch (\Throwable $e) {
                $transaction->rollBack();
                Yii::$app->session->setFlash('warning', $e->getMessage() );
            }
        }

        return $this->render('create', [
            'model' => $model,
            'user' => $user,
        ]);
    }

    /**
     * Updates an existing Moto model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        // $this->validAccess();
        $request = Yii::$app->request;
        $model = $this->findModel($id);
        $user = $model->user;
        $fotoAux = $model->foto;

        if ($request->isPost && $model->load($request->post()) &&  $user->load($request->post()) && $model->validate()) {
            $transaction = \Yii::$app->db->beginTransaction();
            try {
                if (!$model->save()){
                    throw new \Exception(\app\components\errors\ErrorsComponent::formatJustString($model->errors));
                }
                $model->foto = $fotoAux;
                $image = UploadedFile::getInstance($model, 'foto');
                if ($image){
                    $imageName = 'moto_'.$model->id.date('ymdHis').'.'.$image->getExtension();
                    $image->saveAs(\Yii::getAlias('@imagePath').Moto::PATH.$imageName);
                    $model->foto = $imageName;
                }
                $model->save();

                $transaction->commit();
                return $this->redirect(['view', 'id' => $model->id]);
            } catch (\Throwable $e) {
                $transaction->rollBack();
                Yii::$app->session->setFlash('warning', $e->getMessage() );
            }
        }

        return $this->render('update', [
            'model' => $model,
            'user' => $user,
        ]);
    }

    /**
     * Deletes an existing Moto model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        // $this->validAccess();
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Moto model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Moto the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Moto::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    private function validAccess(){
        // if ($rol == \app\models\User::ROLE_ADMINISTRADOR || $rol == \app\models\User::ROLE_SUPER_USER) {
        // }
        $rol = \Yii::$app->user->identity->rol;
        if ($rol == \app\models\User::ROLE_SUCURSAL || $rol == \app\models\User::ROLE_CALL_CENTER) {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
