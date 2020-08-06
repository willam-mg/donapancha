<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;

use kartik\grid\GridView;
use app\models\Sucursaldelivery;

/* @var $this yii\web\View */
/* @var $searchModel app\models\MotoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Motos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="moto-index">

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered">
            <div class="card card-stats">
                <div class="card-header hide-mobile" data-background-color="red">
                    <i class="material-icons">date_range</i>
                </div>
                <div class="card-content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 text-left">
                            <h4>
                                <?= Html::encode($this->title) ?>
                            </h4>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-right pull-right">
                            <?=  Html::a( "<i class='material-icons'>add</i> Nueva " .'Moto', ['create'], ['class' => 'btn btn-round btn-success']) ?>
                        </div>
                    </div>

                                                                <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
                    

                                            <?= GridView::widget([
                            'dataProvider' => $dataProvider,
                            'filterModel' => $searchModel,
                            'columns' => [
                                ['class' => 'yii\grid\SerialColumn'],
                                [
                                    'attribute' => 'sucursal_id',
                                    'contentOptions' => ['style' => 'width:200px'],
                                    'value' => function($model){
                                        return $model->sucursal->nombre;
                                    },
                                    'filter' => ArrayHelper::map(Sucursaldelivery::find()->all(), 'id', 'nombrecompleto'),
                                    'filterType' => GridView::FILTER_SELECT2,
                                    'filterWidgetOptions' => [
                                        'options' => ['prompt' => 'Todos'],
                                        'pluginOptions' => [
                                            'allowClear' => true,
                                            'width'=>'resolve'
                                        ],
                                    ],
                                ],
                                'nombre',
                                'ciudad',
                                'telefono',
                                // [
                                //     'attribute'=>'estado',
                                //     'value'=>function($model){
                                //         return $model->strEstado;
                                //     },
                                //     'contentOptions' => ['style' => 'width:100px'],
                                //     'filter' => [
                                //         app\models\Moto::DISPONIBLE=>'Disponible',
                                //         app\models\Moto::OCUPADO=>'Ocupado',
                                //     ],
                                //     'filterType' => GridView::FILTER_SELECT2,
                                //     'filterWidgetOptions' => [
                                //         'options' => ['prompt' => 'Todos'],
                                //         'pluginOptions' => [
                                //             'allowClear' => true,
                                //             'width'=>'resolve'
                                //         ],
                                //     ],
                                // ],

                                [
                                    'class' => 'kartik\grid\ActionColumn',
                                    'urlCreator' => function($action, $model, $key, $index) { 
                                            return Url::to([$action,'id'=>$key]);
                                    },
                                    'width'=>'200px',
                                    'template'=>'{view} {update} {delete}',
                                    'buttons'=>[
                                        'view' => function ($url, $model, $key) {
                                            return Html::a('<i class="material-icons">visibility</i>', $url, [
                                                'class'=>'btn btn-info btn-round btn-just-icon', 
                                                'title'=>'Ver',
                                                'aria-label'=>'Ver',
                                                'data-pjax'=>0
                                            ]);
                                        },
                                        'update' => function ($url, $model, $key) {
                                            return Html::a('<i class="material-icons">edit</i>', $url, [
                                                'class'=>'btn btn-warning btn-round btn-just-icon', 
                                                'title'=>'Modificar',
                                                'aria-label'=>'Modificar',
                                                'data-pjax'=>0
                                            ]);
                                        },
                                        'delete' => function ($url, $model, $key) {
                                            return Html::a('<i class="material-icons">delete</i>', $url, [
                                                'class'=>'btn btn-danger btn-round btn-just-icon', 
                                                'title'=>'Eliminar',
                                                'aria-label'=>'Eliminar',
                                                'data-confirm'=>'¿ Esta seguro de eliminar este elemento ?',
                                                'data-method'=>'post'
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
