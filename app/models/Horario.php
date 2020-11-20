<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "horario".
 *
 * @property int $id
 * @property string $inicio
 * @property string $fin
 * @property int $atendiendo
 * @property int $hora_pickup
 * @property int $hora_entrega_inmediata
 * @property int $hora_entrega_programada
 */
class Horario extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'horario';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['inicio', 'fin'], 'required'],
            [['inicio', 'fin'], 'safe'],
            [['atendiendo', 'hora_pickup', 'hora_entrega_inmediata', 'hora_entrega_programada'], 'integer'],
            [['descuento_app_movil'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'inicio' => 'Inicio',
            'fin' => 'Fin',
            'atendiendo' => 'Atendiendo',
            'hora_pickup' => 'Hora Pickup',
            'hora_entrega_inmediata' => 'Hora Entrega Inmediata',
            'hora_entrega_programada' => 'Hora Entrega Programada',
            'descuento_app_movil' => 'Descuento para clientes que usan la app mobil (%)',

        ];
    }
}
