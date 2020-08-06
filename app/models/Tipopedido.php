<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tipo_pedido".
 *
 * @property int $id
 * @property string $nombre
 * @property string $descripcion
 * @property string $estado
 *
 * @property PedidoDelivery[] $pedidoDeliveries
 */
class Tipopedido extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tipo_pedido';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['estado', 'nombre'], 'required'],
            [['estado'], 'string'],
            [['nombre'], 'string', 'max' => 45],
            [['descripcion'], 'string', 'max' => 600],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Nombre',
            'descripcion' => 'Descripcion',
            'estado' => 'Estado',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPedidoDeliveries()
    {
        return $this->hasMany(PedidoDelivery::className(), ['tipo_pedido_id' => 'id']);
    }
}
