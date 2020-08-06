<?php

namespace app\controllers;

use Yii;
use app\models\Paquete;
use app\models\Imagenpaquete;
use app\models\PaqueteSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
/**
 * PaqueteController implements the CRUD actions for Paquete model.
 */
class PaqueteController extends Controller
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
     * Lists all Paquete models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PaqueteSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Paquete model.
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
     * Creates a new Paquete model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Paquete();

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                $model->save();
                $image = UploadedFile::getInstance($model, 'foto');
                if ($image){
                    $imageName = 'paquete_'.$model->id.date('ymdHis').'.'.$image->getExtension();
                    $image->saveAs(\Yii::getAlias('@imagePath').Paquete::PATH.$imageName);
                    $model->foto = $imageName;
                }
                $catalogo = UploadedFile::getInstance($model, 'catalogo');
                if ($catalogo){
                    $catalogoName = 'paquete_'.$model->id.date('ymdHis').'.'.$catalogo->getExtension();
                    $catalogo->saveAs(\Yii::getAlias('@imagePath').Paquete::PATH.$catalogoName);
                    $model->catalogo = $catalogoName;
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
     * Updates an existing Paquete model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                $model->save();
                $image = UploadedFile::getInstance($model, 'foto');
                if ($image){
                    $imageName = 'paquete_'.$model->id.date('ymdHis').'.'.$image->getExtension();
                    $image->saveAs(\Yii::getAlias('@imagePath').Paquete::PATH.$imageName);
                    $model->foto = $imageName;
                }
                $catalogo = UploadedFile::getInstance($model, 'catalogo');
                if ($catalogo){
                    $catalogoName = 'paquete_'.$model->id.date('ymdHis').'.'.$catalogo->getExtension();
                    $catalogo->saveAs(\Yii::getAlias('@imagePath').Paquete::PATH.$catalogoName);
                    $model->catalogo = $catalogoName;
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
     * Deletes an existing Paquete model.
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
     * Finds the Paquete model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Paquete the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Paquete::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionImagenes($id)
    {
        $Imagenpaquete = new Imagenpaquete();
        $Imagenpaquete->paquete_id = $id;


        if (Yii::$app->request->isPost && $Imagenpaquete->load(Yii::$app->request->post())) {
            $Imagenpaquete->save();
            $image = UploadedFile::getInstance($Imagenpaquete, 'imagen');
            $imageName = 'paquete_'.$id.'_'.$Imagenpaquete->id.'.'.$image->getExtension();
            $image->saveAs('uploads/Paquete/'.$imageName);
            $Imagenpaquete->imagen = $imageName;
            $save = $Imagenpaquete->save();
            if ($save) {
                Yii::$app->session->setFlash('success', "Se registro correctamente");        
                return $this->redirect(['imagenes', 'id' => $id]);
            }else{
                Yii::$app->session->setFlash('warning', "hubo un problema ala registrar la imagen" );        
            }
        }

        return $this->render('imagenes', [
            'paquete' => $this->findModel($id),
            'imagen'=> $Imagenpaquete,
            'imagenes'=>Imagenpaquete::find()->where(['paquete_id'=>$id])->asArray()->all() ,
        ]);
    }

    public function actionQuitarimagen($id, $paquete){
        $imagen = Imagenpaquete::findOne($id);
        $imagen->delete();
        return $this->redirect(['/paquete/imagenes', 'id'=>$paquete]);
    }
}
