<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "sucursal_delivery".
 *
 * @property int $id
 * @property string $nombre
 * @property string $detalle
 * @property string $estado
 *
 * @property PedidoDelivery[] $pedidoDeliveries
 */
class Sucursaldelivery extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'sucursal_delivery';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['estado', 'nombre', 'ciudad'], 'required'],
            [['estado'], 'string'],
            [['ciudad'], 'string', 'max' => 45],
            [['nombre'], 'string', 'max' => 45],
            [['detalle'], 'string', 'max' => 3000],
            [['latitude'], 'string', 'max' => 100],
            [['longitude'], 'string', 'max' => 100],
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
            'ciudad' => 'Ciudad',
            'detalle' => 'Detalle',
            'estado' => 'Estado',
            'latitude' => 'Latitude',
            'longitude' => 'Longitude',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPedidoDeliveries()
    {
        return $this->hasMany(PedidoDelivery::className(), ['sucursal_delivery_id' => 'id']);
    }

    public function getNombrecompleto(){
        return $this->ciudad.' '.$this->nombre;
    }
}
