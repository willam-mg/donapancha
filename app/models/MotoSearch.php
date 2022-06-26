<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Moto;

/**
 * MotoSearch represents the model behind the search form of `app\models\Moto`.
 */
class MotoSearch extends Moto
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'sucursal_id', 'estado'], 'integer'],
            [['nombre', 'ciudad', 'telefono', 'foto'], 'safe'],
            [['autentificado', 'bloqueado'], 'boolean']
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
        $query = Moto::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort'=> ['defaultOrder' => ['id'=>SORT_DESC]],
            'pagination' => [
                'defaultPageSize' => 5,
            ],
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
            'sucursal_id' => $this->sucursal_id,
            'estado' => $this->estado,
            'autentificado' => $this->autentificado,
            'bloqueado' => $this->bloqueado,
        ]);

        $query->andFilterWhere(['like', 'nombre', $this->nombre])
            ->andFilterWhere(['like', 'ciudad', $this->ciudad])
            ->andFilterWhere(['like', 'telefono', $this->telefono])
            ->andFilterWhere(['like', 'foto', $this->foto]);

        return $dataProvider;
    }
}
