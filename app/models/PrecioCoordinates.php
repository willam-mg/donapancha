<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "precio_coordinates".
 *
 * @property int $id
 * @property int $precio_delivery_id
 * @property int $lat
 * @property int $lng
 */
class PrecioCoordinates extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'precio_coordinates';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['precio_delivery_id', 'lat', 'lng'], 'required'],
            [['precio_delivery_id'], 'integer'],
            [['lat', 'lng'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'precio_delivery_id' => 'Precio Delivery ID',
            'lat' => 'Lat',
            'lng' => 'Lng',
        ];
    }

    public function getPrecioDelivery()
    {
        return $this->hasOne(Preciodelivery::className(), ['id' => 'precio_delivery_id']);
    }
}
