<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "imagen_paquete".
 *
 * @property int $id
 * @property string $imagen
 * @property int $paquete_id
 *
 * @property Paquete $paquete
 */
class Imagenpaquete extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'imagen_paquete';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['paquete_id'], 'required'],
            [['paquete_id'], 'integer'],
            [['imagen'], 'string', 'max' => 50],
            [['paquete_id'], 'exist', 'skipOnError' => true, 'targetClass' => Paquete::className(), 'targetAttribute' => ['paquete_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'imagen' => 'Imagen',
            'paquete_id' => 'Paquete ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPaquete()
    {
        return $this->hasOne(Paquete::className(), ['id' => 'paquete_id']);
    }
}
