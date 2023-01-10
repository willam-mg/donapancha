<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "version".
 *
 * @property int $id
 * @property string $nombre
 * @property string $fecha_subida
 * @property string $hora_subida
 */
class Version extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'version';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'fecha_subida', 'hora_subida'], 'required'],
            [['fecha_subida', 'hora_subida'], 'safe'],
            [['nombre'], 'string', 'max' => 50],
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
            'fecha_subida' => 'Fecha Subida',
            'hora_subida' => 'Hora Subida',
        ];
    }
}
