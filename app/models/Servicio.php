<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "servicio".
 *
 * @property int $id
 * @property string $titulo
 * @property string $foto
 * @property string $descripcion
 */
class Servicio extends \yii\db\ActiveRecord
{
    const PATH = '/Servicio/';
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'servicio';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['titulo'], 'string', 'max' => 50],
            [['foto'], 'string', 'max' => 100],
            [['descripcion'], 'string', 'max' => 1000],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'titulo' => 'Titulo',
            'foto' => 'Foto',
            'descripcion' => 'Descripcion',
        ];
    }
}
