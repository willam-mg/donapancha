<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "beneficio".
 *
 * @property int $id
 * @property string $titulo
 * @property string $descripcion
 * @property string $foto
 */
class Beneficio extends \yii\db\ActiveRecord
{
    const PATH = '/Beneficio/';
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'beneficio';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['titulo', 'foto'], 'string', 'max' => 100],
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
            'descripcion' => 'Descripcion',
            'foto' => 'Foto',
        ];
    }
}
