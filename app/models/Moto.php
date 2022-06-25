<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "moto".
 *
 * @property int $id
 * @property string $nombre
 * @property string $ciudad
 * @property int $sucursal_id
 * @property string $telefono
 * @property string $foto
 */
class Moto extends \yii\db\ActiveRecord
{
    const PATH = '/motos/';

    // const DISPONIBLE = 0;
    // const OCUPADO = 1;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'moto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'ciudad', 'sucursal_id', 'telefono'], 'required'],
            [['sucursal_id', 'estado'], 'integer'],
            [['nombre', 'ciudad'], 'string', 'max' => 50],
            [['telefono'], 'string', 'max' => 15],
            [['foto'], 'string', 'max' => 200],
            [['player_id'], 'string', 'max' => 500],
            ['autentificado', 'boolean']
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
            'ciudad' => 'Ciudad',
            'sucursal_id' => 'Sucursal',
            'telefono' => 'Telefono',
            'foto' => 'Foto',
            'estado' => 'Estado',
            'player_id' => 'Player id',
            'autentificado' => 'Autentificado',
        ];
    }

    public function getUser()
    {
        return $this->hasOne(AppUser::className(), ['moto_id' => 'id']);
    }
    
    public function getSucursal()
    {
        return $this->hasOne(Sucursaldelivery::className(), ['id' => 'sucursal_id']);
    }

    public function getNombrecompleto(){
        // return $this->sucursal->nombre.' '.$this->nombre.' '.$this->telefono;
        return $this->nombre.' '.$this->telefono;
    }

    public function getAsignaciones()
    {
        return $this->hasMany(AsignacionMoto::className(), ['moto_id' => 'id']);
    }

    // private function UR_exists($url){
    //     $headers=get_headers($url);
    //     return stripos($headers[0],"200 OK")?true:false;
    // }

    /**
     * obtiene foto
     * @return string
     */
    public function getStrFoto(){
        if ( $this->foto ){
            return  \Yii::getAlias('@imagePathApiServer').self::PATH.$this->foto;
            // if ( $this->UR_exists($foto) ){
            //     return $foto;
            // }
            // $foto = \Yii::getAlias('@imagePathBackofficeServer').self::PATH.$this->foto;
            // if ( $this->UR_exists($foto) ){
            //     return $foto;
            // }
        }
        return null;
    }

    // public function getStrEstado(){
    //     return $this->estado==0?'Disponible':'Ocupado';
    // }

    public function getStrAutentificado() {
        return $this->autentificado?'Si':'No';
    }
}
