<?php

namespace app\controllers;
use yii\base\DynamicModel;
use yii\data\ActiveDataProvider;
use app\models\Pedidodelivery;
use app\models\Sucursaldelivery;

class ReporteEsperaController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $request = \Yii::$app->request;
        $model = DynamicModel::validateData([
                'sucursal',
                'fecha', 
                'hora',
            ], 
            [
                [['fecha'], 'date'],
                [['hora'], 'time'],
                [['sucursal'], 'integer'],
            ]
        );
        if ( $request->isPost ){
            $model->load($request->post());
            if ($model->hora == '00:00'){
                $model->hora = null;
            }
        }

        $query = Pedidodelivery::find();
        $pedidos = new ActiveDataProvider([
            'query' => $query,
            'pagination' => false,
        ]);
        $query->where([
              'estado'=>Pedidodelivery::ESTADO_EN_ESPERA  
            ])
            ->andFilterWhere([
            'sucursal_delivery_id'=>$model->sucursal,
            'fecha_entrega'=>$model->fecha,
            'hora_entrega'=>$model->hora,
        ])->all();

        $sucursales = Sucursaldelivery::find()->all();
        return $this->render('index', [
            'pedidos'=>$pedidos,
            'model'=>$model,
            'sucursales'=>$sucursales
        ]);
    }

}
