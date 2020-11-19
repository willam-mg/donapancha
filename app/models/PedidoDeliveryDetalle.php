<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pedido_delivery_detalle".
 *
 * @property int $id
 * @property int $pedido_delivery_id
 * @property int $producto_id
 * @property int $cantidad
 * @property string $observacion
 */
class PedidoDeliveryDetalle extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pedido_delivery_detalle';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['pedido_delivery_id', 'producto_id', 'cantidad'], 'required'],
            [['pedido_delivery_id', 'producto_id', 'cantidad'], 'integer'],
            [['observacion'], 'string', 'max' => 200],
            [['descuento'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'pedido_delivery_id' => 'Pedido Delivery ID',
            'producto_id' => 'Producto ID',
            'cantidad' => 'Cantidad',
            'observacion' => 'Observacion',
            'descuento' => 'Descuento',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPedidoDelivery()
    {
        return $this->hasOne(Pedidodelivery::className(), ['id' => 'pedido_delivery_id']);
    }
    
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProducto()
    {
        return $this->hasOne(Producto::className(), ['id' => 'producto_id']);
    }

    public function getSubtotal(){
        $subtotal = $this->producto->costo * $this->cantidad;
        if ($this->descuento != 0){
            return $subtotal - ($subtotal * $this->descuento);
        }
        return $subtotal;
    }
}
