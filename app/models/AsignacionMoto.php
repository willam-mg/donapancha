<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "asignacion_moto".
 *
 * @property int $id
 * @property int $moto_id
 * @property int $pedido_id
 * @property string $fecha
 * @property string $hora
 */
class AsignacionMoto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'asignacion_moto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['moto_id', 'pedido_id', 'fecha', 'hora'], 'required'],
            [['moto_id', 'pedido_id'], 'integer'],
            [['fecha', 'hora'], 'safe'],
            [['fecha_despacho', 'hora_despacho'], 'safe'],
            [['fecha_entrega', 'hora_entrega'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'moto_id' => 'Moto',
            'pedido_id' => 'Pedido',
            'fecha' => 'Fecha',
            'hora' => 'Hora',
            'fecha_despacho' => 'Despachado en',
            'hora_despacho' => 'Dspachado a Hrs.',
            'fecha_entrega' => 'Entregado en',
            'hora_entrega' => 'Entregado a Hrs.',
        ];
    }

    public function getPedido()
    {
        return $this->hasOne(Pedidodelivery::className(), ['id' => 'pedido_id']);
    }
    
    public function getMoto()
    {
        return $this->hasOne(Moto::className(), ['id' => 'moto_id']);
    }
}
