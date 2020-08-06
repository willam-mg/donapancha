<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\AsignacionMoto;

/**
 * AsignacionMotoSearch represents the model behind the search form of `app\models\AsignacionMoto`.
 */
class AsignacionMotoSearch extends AsignacionMoto
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'moto_id', 'pedido_id'], 'integer'],
            [['fecha', 'hora', 'fecha_despacho', 'hora_despacho', 'fecha_entrega', 'hora_entrega'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = AsignacionMoto::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'moto_id' => $this->moto_id,
            'pedido_id' => $this->pedido_id,
            'fecha' => $this->fecha,
            'hora' => $this->hora,
            'fecha_despacho' => $this->fecha_despacho,
            'hora_despacho' => $this->hora_despacho,
            'fecha_entrega' => $this->fecha_entrega,
            'hora_entrega' => $this->hora_entrega,
        ]);

        return $dataProvider;
    }
}
