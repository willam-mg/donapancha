<?php

namespace app\controllers;

use Yii;
use app\models\Historiaimg;
use app\models\HistoriaimgSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * HistoriaimgController implements the CRUD actions for Historiaimg model.
 */
class HistoriaimgController extends Controller
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
     * Lists all Historiaimg models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new HistoriaimgSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Historiaimg model.
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
     * Creates a new Historiaimg model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Historiaimg();

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                $model->save();
                $image = UploadedFile::getInstance($model, 'foto');
                if ($image){
                    $imageName = 'historiaimg_'.$model->id.date('ymdHis').'.'.$image->getExtension();
                    $image->saveAs(\Yii::getAlias('@imagePath').Historiaimg::PATH.$imageName);
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
     * Updates an existing Historiaimg model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

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
                        $imageExist = Yii::getAlias('@imagePath').Historiaimg::PATH.$model->foto;
                        if ( file_exists($imageExist) ){
                            unlink($imageExist);
                        }
                    }
                    $imageName = 'historiaimg_'.$model->id.date('ymdHis').'.'.$image->getExtension();
                    $image->saveAs(\Yii::getAlias('@imagePath').Historiaimg::PATH.$imageName);
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
     * Deletes an existing Historiaimg model.
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
     * Finds the Historiaimg model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Historiaimg the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Historiaimg::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
