<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "categoria_producto".
 *
 * @property int $id
 * @property string $nombre
 * @property string $producto
 * @property string $estado
 *
 * @property Producto[] $productos
 */
class Categoriaproducto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'categoria_producto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'estado', 'producto'], 'required'],
            [['estado'], 'string'],
            [['nombre', 'producto'], 'string', 'max' => 200],
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
            'producto' => 'Producto',
            'estado' => 'Estado',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductos()
    {
        return $this->hasMany(Producto::className(), ['categoria_producto_id' => 'id']);
    }
}
