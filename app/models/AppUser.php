<?php

namespace app\models;

use Yii;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "app_user".
 *
 * @property int $id
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $email
 * @property int $rol
 * @property string $access_token
 * @property int $moto_id
 * @property int $cliente_id
 * @property int $status
 * @property int $created_at
 * @property int $updated_at
 */
class AppUser extends \yii\db\ActiveRecord
{
    /**
     * Constante para el Rol estudiante
     */
    const ROL_CLIENTE = 1;
    
    /**
     * Constante para el rol interesado
     */
    const ROL_MOTO = 2;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'app_user';
    }

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            TimestampBehavior::className(),
            
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['password_hash', 'access_token', 'email'], 'required'],
            [['rol', 'moto_id', 'cliente_id'], 'integer'],
            ['email', 'unique', 'targetClass' => 'app\models\AppUser', 'message' => 'El email ya se encuentra registrado.'],
            [['password_hash', 'password_reset_token', 'email', 'access_token', 'auth_key'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'password_hash' => 'Password Hash',
            'password_reset_token' => 'Password Reset Token',
            'email' => 'Email',
            'rol' => 'Rol',
            'auth_key' => 'Auth Key',
            'access_token' => 'Access Token',
            'moto_id' => 'Moto',
            'cliente_id' => 'Cliente',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    // /**
    //  * @return \yii\db\ActiveQuery
    //  */
    // public function cliente()
    // {
    //     return $this->hasOne(Cliente::className(), ['id' => 'cliente_id']);
    // }
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMoto()
    {
        return $this->hasOne(Moto::className(), ['id' => 'moto_id']);
    }
}
