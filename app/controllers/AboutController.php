<?php

namespace app\controllers;

use Yii;
use app\models\About;
use app\models\AboutSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * AboutController implements the CRUD actions for About model.
 */
class AboutController extends Controller
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
     * Lists all About models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AboutSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single About model.
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
     * Creates a new About model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new About();

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                $model->save();
                $image = UploadedFile::getInstance($model, 'foto');
                if ($image){
                    $imageName = 'about_'.$model->id.date('ymdHis').'.'.$image->getExtension();
                    $image->saveAs(\Yii::getAlias('@imagePath').About::PATH.$imageName);
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
     * Updates an existing About model.
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
                        $imageExist = Yii::getAlias('@imagePath').About::PATH.$model->foto;
                        if ( file_exists($imageExist) ){
                            unlink($imageExist);
                        }
                    }
                    $imageName = 'about_'.$model->id.date('ymdHis').'.'.$image->getExtension();
                    $image->saveAs(\Yii::getAlias('@imagePath').About::PATH.$imageName);
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
     * Deletes an existing About model.
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
     * Finds the About model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return About the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = About::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
