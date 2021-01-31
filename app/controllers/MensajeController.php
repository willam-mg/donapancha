<?php

namespace app\controllers;

use Yii;
use app\models\Ciudad;
use app\models\CiudadSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile; 
use yii\base\DynamicModel;

/**
 * CiudadController implements the CRUD actions for Ciudad model.
 */
class MensajeController extends Controller
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

    private function sendMessage($mensaje){
		$content      = array(
            "en" => $mensaje
        );
        $hashes_array = array();
        array_push($hashes_array, array(
            "id" => "like-button",
            "text" => "Like",
            "icon" => "https://xn--doapanchita-2db.com/images/btm-style.png",
            "url" => "https://xn--doapanchita-2db.com/"
        ));
        array_push($hashes_array, array(
            "id" => "like-button-2",
            "text" => "Like2",
            "icon" => "https://xn--doapanchita-2db.com/images/btm-style.png",
            "url" => "https://xn--doapanchita-2db.com/"
        ));
        $fields = array(
            'app_id' => "4b681f2a-1ede-4597-9769-ee96f8c23524",
            // 'app_id' => "8adc39f0-68b7-4a59-a87e-34130a7823ec",// for test
            'included_segments' => array(
                'All'
            ),
            'data' => array(
                "foo" => "bar"
            ),
            'contents' => $content,
            'web_buttons' => $hashes_array
        );
        
        $fields = json_encode($fields);
        // print("\nJSON sent:\n");
        // print($fields);
        
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json; charset=utf-8',
            'Authorization: Basic ZWU0OTVkOTMtY2QxOC00MTY1LWEwNjktYmIyNWIxZmE4OTM3'
            // 'Authorization: Basic NTg4MjQxZGItMzE1Mi00YTgxLTg5MDEtZGY4MWQ1YzY2NzZh'// for test
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        
        $response = curl_exec($ch);
        curl_close($ch);
        
        return $response;
	}


    /**
     * Lists all Ciudad models.
     * @return mixed
     */
    public function actionIndex()
    {
        $request = Yii::$app->request;
        $model = DynamicModel::validateData([
                'mensaje', 
            ], 
            [
                [['mensaje'], 'required'],
                [['mensaje'], 'string'],
            ]
        );

        if ( $model->load(Yii::$app->request->post()) && $model->validate() ) {
            try {
                $response = $this->sendMessage($model->mensaje);
                \Yii::$app->session->setFlash('success', 'Mensaje enviado correctamente');
                return $this->redirect(['index']);
            } catch (\Throwable $e) {
                Yii::$app->session->setFlash('warning', $e->getMessage() );
            }
        }

        return $this->render('index', [
            'model' => $model,
        ]);
    }
    
}
