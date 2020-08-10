<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "precio_delivery".
 *
 * @property int $id
 * @property string $nombre
 * @property string $descripcion
 * @property string $precio
 * @property string $estado
 *
 * @property PedidoDelivery[] $pedidoDeliveries
 */
class Preciodelivery extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'precio_delivery';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['estado', 'nombre', 'precio', 'estado', 'sucursal_id'], 'required'],
            [['estado'], 'string'],
            [['nombre'], 'string', 'max' => 200],
            [['descripcion'], 'string', 'max' => 3000],
            [['precio'], 'string', 'max' => 50],
            [['sucursal_id'], 'integer'],
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
            'precio' => 'Precio',
            'estado' => 'Estado',
            'sucursal_id' => 'Sucursal',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPedidoDeliveries()
    {
        return $this->hasMany(PedidoDelivery::className(), ['precio_delivery_id' => 'id']);
    }
    
    public function getCordenadas()
    {
        return $this->hasMany(PrecioCoordinates::className(), ['precio_delivery_id' => 'id']);
    }
    
    public function getSucursal()
    {
        return $this->hasOne(Sucursaldelivery::className(), ['id' => 'sucursal_id']);
    }

    public function getNombrePrecio(){
        return $this->nombre.' - '.$this->precio.' Bs.';
    }
}
