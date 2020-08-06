<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "producto".
 *
 * @property int $id
 * @property string $producto
 * @property string $detalle
 * @property string $costo
 * @property string $estado
 * @property int $categoria_producto_id
 *
 * @property PedidoDelivery[] $pedidoDeliveries
 * @property CategoriaProducto $categoriaProducto
 */
class Producto extends \yii\db\ActiveRecord
{
    const PATH = '/productos/';


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'producto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['estado'], 'string'],
            [['categoria_producto_id'], 'required'],
            [['categoria_producto_id'], 'integer'],
            [['producto'], 'string', 'max' => 200],
            [['detalle'], 'string', 'max' => 3000],
            [['costo'], 'string', 'max' => 50],
            [['categoria_producto_id'], 'exist', 'skipOnError' => true, 'targetClass' => Categoriaproducto::className(), 'targetAttribute' => ['categoria_producto_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'producto' => 'Producto',
            'detalle' => 'Detalle',
            'costo' => 'Costo',
            'estado' => 'Estado',
            'categoria_producto_id' => 'Categoria Producto',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPedidoDeliveries()
    {
        return $this->hasMany(PedidoDelivery::className(), ['producto_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategoria()
    {
        return $this->hasOne(Categoriaproducto::className(), ['id' => 'categoria_producto_id']);
    }

    public function getNombreFoto(){
        $begginrow = '<div>';
            $beginCol1 = '<div>';
            $beginCol2 = '<div style="padding:auto">';
        $end = '</div>';
        if( $this->foto != "" ){ 
            $image = yii\helpers\Html::img('@web/uploads'.\app\models\Producto::PATH.$this->foto, [
                'alt' => 'Fotografia',
                'width' => '70',
            ]); 
            return $image.' '.$this->producto;
        }else{ 
            $image = yii\helpers\Html::img('@web/images/no-image.jpg', [
                'alt' => 'Fotografia',
                'width' => '70',
            ]);
            return $image.' '.$this->producto;
        } 
    }
}