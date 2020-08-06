<?php

namespace app\controllers;

use Yii;
use app\models\Galeria;
use app\models\GaleriaSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
/**
 * GaleriaController implements the CRUD actions for Galeria model.
 */
class GaleriaController extends Controller
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
     * Lists all Galeria models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new GaleriaSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Galeria model.
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
     * Creates a new Galeria model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Galeria();

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                $model->save();
                $image = UploadedFile::getInstance($model, 'foto');
                if ($image){
                    $imageName = 'galeria_'.$model->id.date('ymdHis').'.'.$image->getExtension();
                    $image->saveAs(\Yii::getAlias('@imagePath').Galeria::PATH.$imageName);
                    $model->foto = $imageName;
                }
                $model->save();
                $transaction->commit();
                Yii::$app->session->setFlash('success', 'Se registro correctamente');
                return $this->redirect(['view', 'id' => $model->id]);
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
     * Updates an existing Galeria model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        // $model = $this->findModel($id);

        $model = $this->findModel($id);

        $auxFoto = $model->foto;
        
        if ($model->load(Yii::$app->request->post()) ) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                $model->foto = $auxFoto;
                $model->save();
                
                $image = UploadedFile::getInstance($model, 'foto');
                if ($image){
                    if ( $model->foto != "" ){
                        $imageExist = Yii::getAlias('@imagePath').Galeria::PATH.$model->foto;
                        if ( file_exists($imageExist) ){
                            unlink($imageExist);
                        }
                    }
                    $imageName = 'galeria_'.$model->id.date('ymdHis').'.'.$image->getExtension();
                    $image->saveAs(\Yii::getAlias('@imagePath').Galeria::PATH.$imageName);
                    $model->foto = $imageName;
                }
                $model->save();
                $transaction->commit();
                Yii::$app->session->setFlash('success', 'Se actualizo correctamente');
                return $this->redirect(['view', 'id' => $model->id]);
            } catch (\Throwable $e) {
                $transaction->rollBack();
                Yii::$app->session->setFlash('warning', $e->getMessage() );
            }
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Galeria model.
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
     * Finds the Galeria model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Galeria the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Galeria::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
