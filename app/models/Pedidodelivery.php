<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pedido_delivery".
 *
 * @property int $id
 * @property string $razon_social
 * @property string $nit
 * @property string $telefono
 * @property string $zona
 * @property string $direccion
 * @property string $latitude
 * @property string $longitude
 * @property string $zoom
 * @property string $instrucciones
 * @property int $producto_id
 * @property int $precio_delivery_id
 * @property int $sucursal_delivery_id
 * @property int $tipo_pedido_id
 *
 * @property Pedidodelivery $precioDelivery
 * @property Producto $producto
 * @property Sucursaldelivery $sucursalDelivery
 * @property Tipopedido $tipoPedido
 */
class Pedidodelivery extends \yii\db\ActiveRecord
{
    const ESTADO_EN_ESPERA = 0;
    const ESTADO_ASIGNADO = 1;
    const ESTADO_TERMINADO = 2;

    public $ubicacion;
    public $cantidad = 1;

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pedido_delivery';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['precio_delivery_id', 'tipo_pedido_id', 'cliente_id', 'fecha_entrega', 'hora_entrega'], 'required'],
            [['precio_delivery_id', 'sucursal_delivery_id', 'tipo_pedido_id', 'estado', 'cliente_id'], 'integer'],
            [['razon_social', 'nit', 'telefono', 'zona', 'latitude', 'longitude', 'zoom'], 'string', 'max' => 45],
            [['precio_delivery_id'], 'exist', 'skipOnError' => true, 'targetClass' => Preciodelivery::className(), 'targetAttribute' => ['precio_delivery_id' => 'id']],
            // [['producto_id'], 'exist', 'skipOnError' => true, 'targetClass' => Producto::className(), 'targetAttribute' => ['producto_id' => 'id']],
            [['sucursal_delivery_id'], 'exist', 'skipOnError' => true, 'targetClass' => Sucursaldelivery::className(), 'targetAttribute' => ['sucursal_delivery_id' => 'id']],
            [['tipo_pedido_id'], 'exist', 'skipOnError' => true, 'targetClass' => Tipopedido::className(), 'targetAttribute' => ['tipo_pedido_id' => 'id']],
            [['url_mapa'], 'string', 'max' => 400],
            [['direccion', 'instrucciones'], 'string', 'max' => 400],
            [['facturado'], 'boolean'],
            [['precio_delivery'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'cliente_id' => 'Cliente',
            'razon_social' => 'Nombre o Razon Social',
            'nit' => 'N° NIT',
            'telefono' => 'Telefono o Celular',
            'zona' => 'Zona',
            'direccion' => 'Dirección Especifica',
            'latitude' => 'Pegar URL. Localización (Google Maps)',
            'longitude' => 'Longitude',
            'zoom' => 'Zoom',
            'instrucciones' => 'Instrucciones Especiales',
            'producto_id' => 'Producto',
            'precio_delivery_id' => 'Precio (Delivery)',
            'sucursal_delivery_id' => 'Sucursal',
            'tipo_pedido_id' => 'Tipo Pedido',
            'estado' => 'Estado',
            'strEstado' => 'Estado',
            'url_mapa' => 'Url mapa',
            'facturado' => 'Facturado',
            'precio_delivery' => 'Precio delivery',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPrecioDelivery()
    {
        return $this->hasOne(Preciodelivery::className(), ['id' => 'precio_delivery_id']);
    }

    // /**
    //  * @return \yii\db\ActiveQuery
    //  */
    // public function getProducto()
    // {
    //     return $this->hasOne(Producto::className(), ['id' => 'producto_id']);
    // }
    
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAsignacionMoto()
    {
        return $this->hasOne(AsignacionMoto::className(), ['pedido_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSucursalDelivery()
    {
        return $this->hasOne(Sucursaldelivery::className(), ['id' => 'sucursal_delivery_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTipoPedido()
    {
        return $this->hasOne(Tipopedido::className(), ['id' => 'tipo_pedido_id']);
    }
    
    public function getCliente()
    {
        return $this->hasOne(Cliente::className(), ['id' => 'cliente_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDetalle()
    {
        return $this->hasMany(PedidoDeliveryDetalle::className(), ['pedido_delivery_id' => 'id']);
    }

    public function getTotal(){
        $suma = 0;
        foreach ($this->detalle as $key => $det) {
            $suma+=$det->subtotal;
        }
        return $suma;
    }

    public function getStrEstado(){
        switch ($this->estado) {
            case self::ESTADO_EN_ESPERA:
                return 'Pendiente';
                break;
            case self::ESTADO_ASIGNADO:
                return 'Asignado';
                break;
            case self::ESTADO_TERMINADO:
                return 'Terminado';
                break;
            
            default:
                return '';
                break;
        }
        return $this->estado?'Terminado':'Pendiente';
    }

    public function getNombrecompleto(){
        if ($this->cliente){
            return $this->cliente->razon_social.' | '.$this->zona.' | '.$this->fecha_entrega.' | '.$this->hora_entrega;
        }
        return $this->zona.' | '.$this->fecha_entrega.' | '.$this->hora_entrega;
    }
}