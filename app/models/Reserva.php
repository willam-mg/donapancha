<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "reserva".
 *
 * @property int $id
 * @property string $fecha_registro
 * @property string $estado
 * @property int $Cliente_id
 * @property int $paquete_id
 *
 * @property Cliente $cliente
 * @property Paquete $paquete
 */
class Reserva extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'reserva';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fecha_registro'], 'safe'],
            [['estado'], 'string'],
            [['Cliente_id', 'paquete_id'], 'required'],
            [['Cliente_id', 'paquete_id'], 'integer'],
            [['Cliente_id'], 'exist', 'skipOnError' => true, 'targetClass' => Cliente::className(), 'targetAttribute' => ['Cliente_id' => 'id']],
            [['paquete_id'], 'exist', 'skipOnError' => true, 'targetClass' => Paquete::className(), 'targetAttribute' => ['paquete_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'fecha_registro' => 'Fecha Registro',
            'estado' => 'Estado',
            'Cliente_id' => 'Cliente ID',
            'paquete_id' => 'Paquete ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCliente()
    {
        return $this->hasOne(Cliente::className(), ['id' => 'Cliente_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPaquete()
    {
        return $this->hasOne(Paquete::className(), ['id' => 'paquete_id']);
    }
}
