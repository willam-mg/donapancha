<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "galeria".
 *
 * @property int $id
 * @property string $nombre
 * @property string $foto
 * @property string $estado
 */
class Galeria extends \yii\db\ActiveRecord
{
    const PATH = '/Galeria/';
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'galeria';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['estado'], 'string'],
            [['nombre', 'foto'], 'string', 'max' => 100],
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
            'foto' => 'Foto',
            'estado' => 'Estado',
        ];
    }
}
