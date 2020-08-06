<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cliente".
 *
 * @property int $id
 * @property string $nit
 * @property string $telefono
 * @property string $zona
 * @property string $direccion
 * @property string $razon_social
 * @property string $zoom
 * @property string $foto
 * @property string $latitude
 * @property string $longitude
 *
 * @property Reserva[] $reservas
 */
class Cliente extends \yii\db\ActiveRecord
{
    public $ubicacion;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'cliente';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['telefono', 'razon_social'], 'required'],
            [['nit', 'razon_social', 'latitude', 'longitude'], 'string', 'max' => 50],
            [['telefono'], 'string', 'max' => 15],
            [['zona'], 'string', 'max' => 100],
            [['direccion'], 'string', 'max' => 500],
            [['zoom'], 'string', 'max' => 45],
            [['foto'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'razon_social' => 'Nombre o Razon Social',
            'nit' => 'N° NIT',
            'telefono' => 'Telefono o Celular',
            'zona' => 'Zona',
            'direccion' => 'Dirección Especifica',
            'zoom' => 'Zoom',
            'foto' => 'Foto',
            'latitude' => 'Latitude',
            'longitude' => 'Longitude',
            'hasAcount' => 'Tiene Cuenta',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getReservas()
    {
        return $this->hasMany(Reserva::className(), ['Cliente_id' => 'id']);
    }
    
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(AppUser::className(), ['Cliente_id' => 'id']);
    }

    public function getNombrecompleto(){
        return $this->razon_social.' | Telf:'.$this->telefono.' | Nit:'.$this->nit;
    }

    public function getHasAcount(){
        return $this->user?'Si':'No';
    }
}
