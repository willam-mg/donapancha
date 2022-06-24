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
            // [['telefono'], 'unique'],
            [['is_duplicated'], 'integer'], // attr temporal para elimnar numeros duplicados 1= duplicado, 2 = el que se quedo con el telefono, 3 = el se quedo con el id en el telefono y debe ser actualizado.
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
            'miDescuento' => 'Mi descuento', // mi descuento en mi siguente pedido
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

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPedidos()
    {
        return $this->hasMany(PedidoDelivery::className(), ['cliente_id' => 'id']);
    }

    /**
     * Procetanje de descuento.
     * retorna el porcentaje en forma decimal del descuento 
     * de un numero pedido.
     * @param $numeroPedido int
     * @return null | float porcentaje de descuento
     */
    private function pDescuento($numeroPedido) {
        if ( $numeroPedido % 3 === 0 ) { // descuento del 100 %
            return 1;
        }
        if ( (($numeroPedido - 1) % 3) === 0 ) { // sin descuento
            return null;
        }
        if ( (($numeroPedido - 2) % 3) === 0 ) { // descuento del 50 %
            return 0.5;
        }
    }

    /**
     * Porcentaje de descuento en 
     * mi siguiente pedido.
     * @return Array ['numero_pedido', 'porcentaje']
     */
    public function getMiDescuento() {
        $numPedidos = $this->getPedidos()
            ->where(['is_temp'=>0])
            ->count();
        $numPedidos++;
        return [
            'numero_pedido'=> $numPedidos,
            'porcentaje'=>$this->pDescuento($numPedidos)
        ];
    }

    /**
     * Si el cliente tiene descuento
     * @return bool
     */
    public function tieneDescuento() {
        $descuento = $this->miDescuento();
        return $descuento == null? false: true;
    }
}
