<?php

namespace app\controllers;

use Yii;
use app\models\Cliente;
use app\models\ClienteSearch;
use app\models\PedidodeliverySearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ClienteController implements the CRUD actions for Cliente model.
 */
class ClienteController extends Controller
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
     * Lists all Cliente models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ClienteSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Cliente model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        $searchModel = new PedidodeliverySearch();
        $params = Yii::$app->request->queryParams;
        $dataProvider = $searchModel->misPedidos($id, $params);

        return $this->render('view', [
            'model' => $this->findModel($id),
            'searchModel'=>$searchModel,
            'dataProvider'=>$dataProvider
        ]);
    }

    /**
     * Creates a new Cliente model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Cliente();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $transaction = \Yii::$app->db->beginTransaction();
            try {
                if (!$model->save()){
                    throw new \Exception(\app\components\errors\ErrorsComponent::formatJustString($model->errors));
                }
                $transaction->commit();
                return $this->redirect(['/pedidodelivery/create', 'cl' => $model->id]);
            } catch (\Throwable $e) {
                $transaction->rollBack();
                Yii::$app->session->setFlash('warning', $e->getMessage() );
            }
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Cliente model.
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
     * Deletes an existing Cliente model.
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
     * Finds the Cliente model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Cliente the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Cliente::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    /**
     * modificar los telefonos para borar los telefonos duplicados
     */
    public function actionTempDuplicados() {
        set_time_limit(3000);
        $transaction = \Yii::$app->db->beginTransaction();
        try {
            $clientes = Cliente::find()->where([
                'is_duplicated'=>1
            ])->limit(10000)->all();

            $clientesDuplicados = [];
            foreach ($clientes as $key => $cliente) {
                $findDuplicados = Cliente::find()
                    ->where([
                        'telefono'=>$cliente->telefono,
                    ])
                    ->all();
                $idIndice = 0;
                $cliente->is_duplicated = 0;
                $cliente->save();
                if ( count($findDuplicados) > 1 ) {
                    $auxTelefono = $cliente->telefono;
                    // poniendo el id al telefono a todos
                    foreach ($findDuplicados as $key => $duplicado) {
                        $duplicado->telefono = strval($duplicado->id);
                        $duplicado->is_duplicated = 3;
                        if ( !$duplicado->save() ) {
                            throw new \Exception(\app\components\errors\ErrorsComponent::formatJustString($duplicado->errors));
                        }
                    }

                    // poniendo el telefono al cliente que tiene usuario
                    $conUserFinded = false;
                    foreach ($findDuplicados as $key => $duplicado) {
                        if ($duplicado->user) {
                            $conUserFinded = true;
                            $duplicado->telefono = strval($auxTelefono);
                            $duplicado->is_duplicated = 2;
                            if ( !$duplicado->save() ) {
                                throw new \Exception(\app\components\errors\ErrorsComponent::formatJustString($duplicado->errors));
                            }
                        }
                    }

                    // poninedo el telefono al primero de los duplicados
                    if ($conUserFinded == false) {
                        foreach ($findDuplicados as $key => $duplicado) {
                            if ( $key == 0 ) {
                                $duplicado->telefono = strval($auxTelefono);
                                $duplicado->is_duplicated = 2;
                                if ( !$duplicado->save() ) {
                                    throw new \Exception(\app\components\errors\ErrorsComponent::formatJustString($duplicado->errors));
                                }
                            }
                        }
                    }
                }
            }
            
            $transaction->commit();
            return 'Query success';
        } catch (\Throwable $e) {
            $transaction->rollBack();
            throw new \Exception( 'Query falled '.$e->getMessage() );
        }

        return false;
    }

    /**
     * mostrar los clientes duplicados
     */
    public function actionTempMostrar($showClientes = null) {
        $transaction = \Yii::$app->db->beginTransaction();
        try {
            $clientes = Cliente::find()
                ->where([
                    'is_duplicated'=>1,
                ])
                ->limit(1000)->all();
            if ($showClientes != null) {
                $clientes = $showClientes;
            }
            echo '<table><tbody>';
            echo '<thead><tr>
                    <td>Razon social</td>
                    <td>Cant duplicados</td>
                    <td>Cuenta</td>
                </tr></thead>';
            foreach ($clientes as $key => $cliente) {
                $findDuplicados = Cliente::find()
                ->where([
                    'telefono'=>$cliente->telefono,
                    ])
                    ->all();
                echo '<tr>';
                    echo '<td>'.$cliente->razon_social.'</td>';
                    echo '<td>'.count($findDuplicados).'</td>';
                    echo '<td>'.$cliente->hasAcount.'</td>';
                echo '</tr>';
            }
            echo '</table></tbody>';
            
            $transaction->commit();
        } catch (\Throwable $e) {
            $transaction->rollBack();
            throw new \Exception( 'Query falled '.$e->getMessage() );
        }

        return false;
    }

    public function actionTempDuplicadosRestantes() {
        $clientes = Cliente::find()
            ->where([
                'is_duplicated'=>2
            ])
            ->limit(1000)->all();

        $clientesDuplicados = [];
        foreach ($clientes as $key => $cliente) {
            $findDuplicados = Cliente::find()
                ->where([
                    'telefono'=>$cliente->telefono,
                ])
                ->all();
            $auxTelefono = $cliente->telefono;
            if ( count($findDuplicados) > 1 ) {
                // $cliente
                // poniendo el id al telefono a todos
                foreach ($findDuplicados as $key => $duplicado) {
                    $duplicado->telefono = strval($duplicado->id);
                    $duplicado->is_duplicated = 3;
                    if ( !$duplicado->save() ) {
                        throw new \Exception(\app\components\errors\ErrorsComponent::formatJustString($duplicado->errors));
                    }
                }
                // eliminando los duplicados restantes
                foreach ($findDuplicados as $key => $duplicado) {
                    if ( $key == 0 ) {
                        $duplicado->telefono = strval($auxTelefono);
                        $duplicado->is_duplicated = 2;
                        if ( !$duplicado->save() ) {
                            throw new \Exception(\app\components\errors\ErrorsComponent::formatJustString($duplicado->errors));
                        }
                    }
                }
                // array_push($clientesDuplicados, $cliente);
            }
        }
        // return $this->actionTempMostrar($clientesDuplicados);
    }

    public function actionTempMostrarRestantes() {
        $clientes = Cliente::find()->where([
                'is_duplicated'=>2
            ])->limit(1000)->all();

        $clientesDuplicados = [];
        foreach ($clientes as $key => $cliente) {
            $findDuplicados = Cliente::find()
                ->where([
                    'telefono'=>$cliente->telefono,
                ])
                ->all();

            if ( count($findDuplicados) > 1 ) {
                array_push($clientesDuplicados, $cliente);
            }
        }
        return $this->actionTempMostrar($clientesDuplicados);
    }
}
