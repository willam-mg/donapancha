<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "historia".
 *
 * @property int $id
 * @property string $titulo
 * @property string $descripcion
 */
class Historia extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'historia';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['titulo'], 'string', 'max' => 100],
            [['descripcion'], 'string', 'max' => 2000],
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
        ];
    }
}
