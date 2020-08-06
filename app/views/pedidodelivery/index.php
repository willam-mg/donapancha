<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use kartik\grid\GridView;
use yii\widgets\Pjax;
use app\models\Sucursaldelivery;
/* @var $this yii\web\View */
/* @var $searchModel app\models\PedidodeliverySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Lista de pedidos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pedidodelivery-index">

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered">
            <div class="card card-stats">
                <div class="card-header hide-mobile" data-background-color="red">
                    <i class="material-icons">rate_review</i>
                </div>
                <div class="card-content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 text-left">
                            <h4>
                                Lista de pedidos
                            </h4>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-right pull-right">
                            <?=  Html::a( "<i class='material-icons'>add</i> Nuevo " .'pedido', ['create'], ['class' => 'btn btn-round btn-success']) ?>
                        </div>
                        <div>
                            <button class="btn btn-round btn-success" type="button" onclick="document.location.reload();">Actualizar Pedidos</button>
                        </div>
                    </div>

                        
                        <?= $this->render('_search', ['model' => $searchModel]) ?>
                    

                        <?= GridView::widget([
                            'dataProvider' => $dataProvider,
                            // 'filterModel' => $searchModel,
                            // 'rowOptions'=>function($model){
                            //     if ( !$model->sucursal_delivery_id || !$model->precio_delivery_id ){
                            //         return ['class' => 'danger'];
                            //     }
                            // },
                            'columns' => [
                                ['class' => 'yii\grid\SerialColumn'],

                                [
                                    'class' => 'kartik\grid\ActionColumn',
                                    'urlCreator' => function($action, $model, $key, $index) { 
                                            return Url::to([$action,'id'=>$key]);
                                    },
                                    // 'contentOptions'=>[
                                    //     'key'=>'Facturado',
                                    // ],
                                    'width'=>'200px',
                                    'template'=>'{facturado} {completar}',
                                    'buttons'=>[
                                        'facturado' => function ($url, $model, $key) {
                                            $label = "";
                                            $aria = "";
                                            if ($model->facturado == 0){
                                                $aria = "Sin factura";
                                                $label = '<span class="label label-danger">Sin factura</span>';
                                            }else{
                                                $aria = "Con factura";
                                                $label = '<span class="label label-warning">Con factura</span>';
                                            }
                                            return Html::a($label, ['/pedidodelivery/facturado', 'id'=>$model->id], [
                                                // 'class'=>'btn btn-danger btn-round btn-just-icon', 
                                                'aria-label'=>$aria.', clic para cambiar',
                                                'title'=>$aria.', clic para cambiar',
                                                'data-confirm'=>'¢Ä Cambiar estado de la factura ?',
                                                // 'data-method'=>'get'
                                            ]);
                                        },
                                        'completar' => function ($url, $model, $key) {
                                            if ( !$model->sucursal_delivery_id || !$model->precio_delivery_id ){
                                                return Html::a('<span class="label label-info">Completar</span>', ['/pedidodelivery/asignar-sucursalprecio', 'pe'=>$model->id], [
                                                    'aria-label'=>'Completar informacion',
                                                    'title'=>'Completar informacion',
                                                ]);
                                            }
                                            return null;
                                        },
                                    ]
                                ], 
                                //'razon_social',
                                //'nit',
                                //'zona',
                                //'direccion',
                                // 'sucursal_delivery_id',
                                'fecha_entrega',
                                [
                                    'attribute' => 'sucursal_delivery_id',
                                    'contentOptions' => ['style' => 'width:300px'],
                                    'value' => function($model){
                                        if ($model->sucursalDelivery){
                                            return $model->sucursalDelivery->nombre;
                                        }
                                        return 'No seleccionado';
                                    },
                                    'filter' => ArrayHelper::map(Sucursaldelivery::find()->all(), 'id', 'nombre'),
                                    'filterType' => GridView::FILTER_SELECT2,
                                    'filterWidgetOptions' => [
                                        'options' => ['prompt' => 'Todos'],
                                        'pluginOptions' => [
                                            'allowClear' => true,
                                            'width'=>'resolve'
                                        ],
                                    ],
                                ],
                                'telefono',
                                'cliente.razon_social',
                                [
                                    'attribute' => 'estado',
                                    'value' => function($model){
                                        return $model->strEstado;
                                    },
                                    'filter' =>[
                                        [\app\models\Pedidodelivery::ESTADO_EN_ESPERA=>'Pendiente'],
                                        [\app\models\Pedidodelivery::ESTADO_ASIGNADO=>'Asignado'],
                                        [\app\models\Pedidodelivery::ESTADO_TERMINADO=>'Terminado']
                                    ],
                                    'filterType' => GridView::FILTER_SELECT2,
                                    'filterWidgetOptions' => [
                                        // 'options' => ['prompt' => 'Todos'],
                                        'pluginOptions' => [
                                            'allowClear' => true,
                                            'width'=>'resolve'
                                        ],
                                    ],
                                ],
                                // 'strEstado',
                                //'latitude',
                                //'longitude',
                                //'zoom',
                                //'instrucciones',
                                //'producto_id',
                                //'precio_delivery_id',
                                //'tipo_pedido_id',

                                [
                                    'class' => 'kartik\grid\ActionColumn',
                                    'urlCreator' => function($action, $model, $key, $index) { 
                                            return Url::to([$action,'id'=>$key]);
                                    },
                                    'width'=>'120px',
                                    'template'=>'{view} {delete}',
                                    'buttons'=>[
                                        'view' => function ($url, $model, $key) {
                                            return Html::a('<i class="material-icons">description</i>', $url, [
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
                                            if (\Yii::$app->user->can(\Yii::$app->user->identity::ROLE_ADMINISTRADOR)){
                                                return Html::a('<i class="material-icons">delete</i>', $url, [
                                                    'class'=>'btn btn-danger btn-round btn-just-icon', 
                                                    'title'=>'Eliminar',
                                                    'aria-label'=>'Eliminar',
                                                    'data-confirm'=>'Â¿ Esta seguro de eliminar este elemento ?',
                                                    'data-method'=>'post'
                                                ]);
                                            }
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