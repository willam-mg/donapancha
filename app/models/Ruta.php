<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "ruta".
 *
 * @property int $id
 * @property string $nombre
 * @property string $imagen
 */
class Ruta extends \yii\db\ActiveRecord
{
    const PATH = '/Ruta/';
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ruta';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre'], 'required'],
            [['nombre'], 'string', 'max' => 50],
            [['imagen'], 'string', 'max' => 100],
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
            'imagen' => 'Imagen',
        ];
    }
}
