<?php

namespace app\controllers;

use yii\data\ActiveDataProvider;
use app\models\Pedidodelivery;
use app\models\PedidoDeliveryDetalle;
use app\models\Sucursaldelivery;
use yii\base\DynamicModel;

class ReporteController extends \yii\web\Controller
{
    public function actionPedidosProducto()
    {
        $request = \Yii::$app->request;
        $model = DynamicModel::validateData([
                'fecha_inicio', 
                'fecha_fin',
                'numero_celular',
            ], 
            [
                [['fecha_inicio'], 'date'],
                [['fecha_fin'], 'date'],
                [['numero_celular'], 'integer'],
            ]
        );
        $model->fecha_inicio = date('Y-m-d');
        $model->fecha_fin = date('Y-m-d');
        
        $model->load($request->get());

        $query = Pedidodelivery::find();
        $pedidos = new ActiveDataProvider([
            'query' => $query,
        ]);
        $query->andFilterWhere(['>=', 'fecha_entrega', $model->fecha_inicio])
            ->andFilterWhere(['<=', 'fecha_entrega', $model->fecha_fin])
            ->andFilterWhere(['like', 'telefono', $model->numero_celular])->all();
    
        return $this->render('pedido_productos', [
            'pedidos'=>$pedidos,
            'model'=>$model,
        ]);
    }
    
    /**
     * Reporte de productos
     */
    public function actionProductos()
    {
        $request = \Yii::$app->request;
        $model = DynamicModel::validateData([
                'fecha_inicio', 
                'fecha_fin',
                'numero_celular',
            ], 
            [
                [['fecha_inicio'], 'date'],
                [['fecha_fin'], 'date'],
                [['numero_celular'], 'integer'],
            ]
        );
        $model->fecha_inicio = date('Y-m-d');
        $model->fecha_fin = date('Y-m-d');
        
        $model->load($request->get());

        $query = PedidoDeliveryDetalle::find();
        $pedidos = new ActiveDataProvider([
            'query' => $query,
        ]);
        $query
            ->select('pedido_delivery_detalle.producto_id, sum(pedido_delivery_detalle.cantidad) as cantidad')
            ->joinWIth('pedidoDelivery')
            ->andFilterWhere(['>=', 'pedido_delivery.fecha_entrega', $model->fecha_inicio])
            ->andFilterWhere(['<=', 'pedido_delivery.fecha_entrega', $model->fecha_fin])
            ->andFilterWhere(['like', 'pedido_delivery.telefono', $model->numero_celular])
            // ->sum('pedido_delivery_detalle.cantidad')
            ->groupBy(['pedido_delivery_detalle.producto_id'])
            ->all();
    
        return $this->render('productos', [
            'pedidos'=>$pedidos,
            'model'=>$model,
        ]);
    }

}
