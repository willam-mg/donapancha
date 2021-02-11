<?php

namespace app\controllers;

use yii\data\ActiveDataProvider;
use app\models\Pedidodelivery;
use app\models\AsignacionMoto;
use app\models\Moto;
use app\models\Sucursaldelivery;
use yii\base\DynamicModel;
use kartik\mpdf\Pdf;

class ReporteMotosController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $request = \Yii::$app->request;
        $model = DynamicModel::validateData([
                'fecha', 
                'moto_id',
            ], 
            [
                [['fecha'], 'date'],
                [['moto_id'], 'integer'],
            ]
        );
        $model->fecha = date('Y-m-d');
        if ( $request->isPost ){
            $model->load($request->post());
        }

        $query = AsignacionMoto::find();
        $pedidos = new ActiveDataProvider([
            'query' => $query,
            'pagination' => false,
        ]);
        $query
            ->andFilterWhere([
                'fecha_entrega'=>$model->fecha,
                'moto_id'=>$model->moto_id,
            ])
            ->andFilterWhere([])
            ->all();
        
        $motos = Moto::find()->all();
        
        return $this->render('index', [
            'pedidos'=>$pedidos,
            'model'=>$model,
            'motos'=>$motos,
        ]);
    }

    public function actionExportPdf($param_moto_id, $fecha) {
        $request = \Yii::$app->request;
        $moto = Moto::findOne($param_moto_id);

        $query = AsignacionMoto::find();
        $pedidos = new ActiveDataProvider([
            'query' => $query,
            'pagination' => false,
        ]);
        $query
            ->andFilterWhere([
                'fecha_entrega'=>$fecha,
                'moto_id'=>$moto?$moto->id:null,
            ])
            ->andFilterWhere([])
            ->all();
        
        $content = $this->renderPartial('print_pdf', [
            'pedidos'=>$pedidos,
            'moto'=>$moto,
            'fecha'=>$fecha,
        ]);
        // return $content;
        $height = 60 + (16 * count($pedidos->models));
        // return $height;
        // $pdf = new Pdf('utf-8', array(190,236));
        $pdf = new Pdf([
        // set to use core fonts only
            'mode' => Pdf::MODE_UTF8,
            // 'mode' => Pdf::MODE_CORE, 
            // 'format' => Pdf::FORMAT_A3, 
            'format' => [80, $height], 
            'orientation' => Pdf::ORIENT_PORTRAIT, 
            'destination' => Pdf::DEST_BROWSER, 
            'content' => $content,  
            'cssFile' => 'css/kv-mpdf-bootstrap.css',
            // 'cssInline' => '.kv-heading-1{font-size:18px}', 
            'options' => ['title' => 'Krajee Report Title'],
            'marginLeft'=>2,
            'marginRight'=>2,
            'marginTop'=>2,
            'marginBottom'=>2,
            // 'methods' => [
            //     'SetHeader' => ['Krajee Report Header'],
            //     'SetFooter' => ['{PAGENO}'],
            // ]
        ]);
    
        return $pdf->render(); 
    }

}
