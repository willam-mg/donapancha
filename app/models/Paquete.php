<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "paquete".
 *
 * @property int $id
 * @property string $nombre
 * @property string $precio
 * @property string $descripcion_corta
 * @property string $descripcion_larga
 * @property string $catalogo
 * @property string $estado
 * @property string $foto
 * @property int $categoria_id
 * @property string $temperatura
 * @property string $pais
 * @property string $ciudad
 *
 * @property ImagenPaquete[] $imagenPaquetes
 * @property Categoria $categoria
 * @property Relacionados[] $relacionados
 * @property Relacionados[] $relacionados0
 * @property Reserva[] $reservas
 */
class Paquete extends \yii\db\ActiveRecord
{
    const PATH = '/Paquete/';
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'paquete';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'precio', 'descripcion_corta', 'categoria_id'], 'required'],
            [['precio'], 'number'],
            [['estado'], 'string'],
            [['categoria_id'], 'integer'],
            [['nombre', 'catalogo'], 'string', 'max' => 45],
            [['descripcion_corta'], 'string', 'max' => 1000],
            [['descripcion_larga'], 'string', 'max' => 4000],
            [['foto', 'temperatura', 'pais', 'ciudad'], 'string', 'max' => 50],
            [['categoria_id'], 'exist', 'skipOnError' => true, 'targetClass' => Categoria::className(), 'targetAttribute' => ['categoria_id' => 'id']],
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
            'precio' => 'Precio',
            'descripcion_corta' => 'Descripcion Corta',
            'descripcion_larga' => 'Descripcion Larga',
            'catalogo' => 'Catalogo',
            'estado' => 'Estado',
            'foto' => 'Foto',
            'categoria_id' => 'Categoria ID',
            'temperatura' => 'Temperatura',
            'pais' => 'Pais',
            'ciudad' => 'Ciudad',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getImagenPaquetes()
    {
        return $this->hasMany(ImagenPaquete::className(), ['paquete_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategoria()
    {
        return $this->hasOne(Categoria::className(), ['id' => 'categoria_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRelacionados()
    {
        return $this->hasMany(Relacionados::className(), ['paquete_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRelacionados0()
    {
        return $this->hasMany(Relacionados::className(), ['paquete_relacionado_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getReservas()
    {
        return $this->hasMany(Reserva::className(), ['paquete_id' => 'id']);
    }
}
