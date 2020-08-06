<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "slider".
 *
 * @property int $id
 * @property string $titulo
 * @property string $descripcion
 * @property string $foto
 * @property string $estado
 */
class Slider extends \yii\db\ActiveRecord
{
    const PATH = '/slider/';
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'slider';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['titulo', 'descripcion', 'estado'], 'required'],
            [['estado'], 'string'],
            [['titulo', 'foto'], 'string', 'max' => 100],
            [['descripcion'], 'string', 'max' => 200],
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
            'descripcion' => 'Descripcion',
            'foto' => 'Foto',
            'estado' => 'Estado',
        ];
    }
}
