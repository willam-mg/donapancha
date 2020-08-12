<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Horario;

/**
 * HorarioSearch represents the model behind the search form of `app\models\Horario`.
 */
class HorarioSearch extends Horario
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'atendiendo', 'hora_pickup', 'hora_entrega_inmediata', 'hora_entrega_programada'], 'integer'],
            [['inicio', 'fin'], 'safe'],
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
        $query = Horario::find();

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
            'inicio' => $this->inicio,
            'fin' => $this->fin,
            'atendiendo' => $this->atendiendo,
            'hora_pickup' => $this->hora_pickup,
            'hora_entrega_inmediata' => $this->hora_entrega_inmediata,
            'hora_entrega_programada' => $this->hora_entrega_programada,
        ]);

        return $dataProvider;
    }
}
