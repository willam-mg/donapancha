<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Pedidodelivery;
use Carbon\Carbon;
/**
 * PedidodeliverySearch represents the model behind the search form of `app\models\Pedidodelivery`.
 */
class PedidodeliverySearch extends Pedidodelivery
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'producto_id', 'precio_delivery_id', 'sucursal_delivery_id', 'tipo_pedido_id', 'estado'], 'integer'],
            [['razon_social', 'nit', 'telefono', 'zona', 'direccion', 'latitude', 'longitude', 'zoom', 'instrucciones', 'fecha_entrega'], 'safe'],
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
        $query = Pedidodelivery::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort'=> [
                'defaultOrder' => ['id'=>SORT_DESC]
            ],
        ]);

        $this->load($params);


        // if (!$this->validate()) {
        //     // uncomment the following line if you do not want to return any records when validation fails
        //     // $query->where('0=1');
        //     return $dataProvider;
        // }

        $sucursal = null;
        $user = \Yii::$app->user;
        $rol = $user->identity::ROLE_SUCURSAL;
        if ($user->can($rol)  && $user->identity->rol == $rol ){
            $sucursal = \Yii::$app->user->identity->sucursal_id;
        }
        
        if ($this->fecha_entrega == '' || $this->fecha_entrega == null){
            $this->fecha_entrega = Carbon::now()->format('Y-m-d');
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'estado' => $this->estado,
            'sucursal_delivery_id' => $sucursal,
            'fecha_entrega' => $this->fecha_entrega,
            'is_temp' => 0,
        ]);

        $query->andFilterWhere(['like', 'telefono', $this->telefono]);

        return $dataProvider;
    }
}
