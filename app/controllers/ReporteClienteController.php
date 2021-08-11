<?php

namespace app\controllers;

use app\models\Cliente;
use yii\data\ActiveDataProvider;

class ReporteClienteController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $query = Cliente::find();
        $clientes = new ActiveDataProvider([
            'query' => $query,
        ]);
        $query->all();

        return $this->render('index', [
            'clientes'=>$clientes
        ]);
    }

}
