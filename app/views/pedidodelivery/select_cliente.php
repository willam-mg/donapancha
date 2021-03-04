<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ClienteSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Nuevo Pedido';
$this->params['breadcrumbs'][] = ['label' => 'Lista de pedidos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cliente-index">

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered">
            <div class="card card-stats">
                <div class="card-content">
                <div class="row">
                    <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                        <h4>Seleccione al cliente</h4>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 text-right" style="padding-top:20px">
                        <?=  Html::a( "<i class='material-icons'>add</i> Nuevo Cliente", ['/cliente/create'], [
                            'class' => 'btn btn-round btn-simple',
                            'style'=>'border:1px solid #4caf50'
                        ]) ?>
                    </div>
                </div>

                <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
                <?= GridView::widget([
                            'dataProvider' => $dataProvider,
                            'filterModel' => $searchModel,
                            'columns' => [
                                ['class' => 'yii\grid\SerialColumn'],

                                'razon_social',
                                'nit',
                                'telefono',
                                'zona',
                                'direccion',
                                // 'hasAcount',
                                [
                                    'class' => 'kartik\grid\ActionColumn',
                                    'urlCreator' => function($action, $model, $key, $index) { 
                                            return Url::to([$action,'id'=>$key]);
                                    },
                                    'width'=>'150px',
                                    'template'=>'{select}',
                                    'buttons'=>[
                                        'select' => function ($url, $model, $key) {
                                            return Html::a('<i class="material-icons">done</i>', ['create', 'cl'=>$key], [
                                                'class'=>'btn btn-success btn-round btn-just-icon', 
                                                'title'=>'seleccionar',
                                                'aria-label'=>'seleccionar',
                                                'data-pjax'=>0
                                            ]);
                                        },
                                    ]
                                ],
                            ],
                            'bordered' => true,
                            'striped' => false,
                            'hover' => true,
                            'condensed' => false,
                            'responsive' => true,          
                            'responsiveWrap' => false,                 
                            'resizableColumns' => false,   
                        ]); ?>
                                        
                </div>
            </div>
        </div>
    </div>
</div>
