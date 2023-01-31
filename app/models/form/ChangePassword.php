<?php

namespace app\models\form;

use Yii;
use mdm\admin\models\User;
use yii\base\Model;

/**
 * Description of ChangePassword
 *
 * @author Misbahul D Munir <misbahuldmunir@gmail.com>
 * @since 1.0
 */
class ChangePassword extends Model
{
    public $oldPassword;
    public $newPassword;
    public $retypePassword;
    public $_user = false;
    public $id;

    const SCENARIO_ADMIN = 'admin';
    const SCENARIO_USER = 'user';

    public function scenarios()
    {
        return [
            self::SCENARIO_ADMIN => ['newPassword', 'retypePassword'],
            self::SCENARIO_USER => ['oldPassword', 'newPassword', 'retypePassword'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['newPassword', 'retypePassword'], 'required', 'on' => self::SCENARIO_ADMIN],
            [['retypePassword'], 'compare', 'compareAttribute' => 'newPassword', 'on' => self::SCENARIO_ADMIN],
            [['id'], 'integer', 'on' => self::SCENARIO_ADMIN],
            
            [['oldPassword', 'newPassword', 'retypePassword'], 'required', 'on' => self::SCENARIO_USER],
            [['oldPassword'], 'validatePassword', 'on' => self::SCENARIO_USER],
            [['newPassword'], 'string', 'min' => 6, 'on' => self::SCENARIO_USER],
            [['retypePassword'], 'compare', 'compareAttribute' => 'newPassword', 'on' => self::SCENARIO_USER],
            [['id'],'integer', 'on' => self::SCENARIO_USER],
        ];
    }

    /**
     * Validates the password.
     * This method serves as the inline validation for password.
     */
    public function validatePassword()
    {
        /* @var $user User */
        $user = $this->getUser();
        if (!$user || !$user->validatePassword($this->oldPassword)) {
            $this->addError('oldPassword', 'Incorrect old password.');
        }
    }

    /**
     * Change password.
     *
     * @return User|null the saved model or null if saving fails
     */
    public function change()
    {
        if ($this->validate()) {
            /* @var $user User */
            $user = $this->getUser();
            $user->setPassword($this->newPassword);
            $user->generateAuthKey();
            if ($user->save()) {
                return true;
            }
        }

        return false;
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels(){
        return [
            'oldPassword'=>'Antigua contraseña',
            'newPassword'=>'Nueva contraseña',
            'retypePassword'=>'Repetir contraseña',
        ];
    }

    public function getUser()
    {
        return User::findOne($this->id);
        // if ($this->_user === false) {
        //     $this->_user = User::findOne($this->id);
        // }

        // return $this->_user;
    }
}
