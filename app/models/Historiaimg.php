<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "historia_img".
 *
 * @property int $id
 * @property string $descripcion
 * @property string $foto
 */
class Historiaimg extends \yii\db\ActiveRecord
{
    const PATH = '/Historiaimg/';
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'historia_img';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['descripcion'], 'string', 'max' => 50],
            [['foto'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'descripcion' => 'Descripcion',
            'foto' => 'Foto',
        ];
    }
}
