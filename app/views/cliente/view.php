<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use kartik\grid\GridView;
use app\models\Sucursaldelivery;

/* @var $this yii\web\View */
/* @var $model app\models\Cliente */

$this->title = 'Clientes ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Clientes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="cliente-view">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
            <div class="card">
                <div class="card-content">
                    <h4><?=$this->title?></h4>
                    <hr>
                    <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            'razon_social',
                            'nit',
                            'telefono',
                            'zona',
                            'direccion',
                        ],
                    ]) ?>
                </div>
            </div>
        </div>
        
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
            <div class="card">
                <div class="card-content">
                    
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <h4>Pedidos realizados</h4>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group text-right">
                                <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], ['class' => 'btn btn-simple', 'title'=>'Cerrar',]) ?>
                                <?= Html::a( "<i class='material-icons'>edit</i> ".'Modificar', ['update', 'id' => $model->id], ['class' => 'btn btn-round btn-warning', 'title'=>'Modificar',]) ?>
                            </div>
                        </div>
                    </div>
                    

                    <?= $this->render('_search_pedido', [
                        'model' => $searchModel,
                        'id'=>$model->id
                    ]) ?>

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

                            
                            //'razon_social',
                            //'nit',
                            //'zona',
                            //'direccion',
                            [
                                'attribute'=>'user.username',
                                'label'=>'Pedido recepcionado por:'
                            ],
                            
                            // 'sucursal_delivery_id',
                            [
                                'attribute'=>'strTipo',
                                'width'=>'60px'
                            ],
                            'fecha_entrega',
                            [
                                'attribute' => 'sucursal_delivery_id',
                                'contentOptions' => [
                                    'style' => 'width:200px'
                                ],
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
                            [
                                'attribute' => 'estado',
                                'contentOptions' => ['style' => 'width:100px'],
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
                            
                            'tipoPedido.nombre:text:Tipo pedido',
                            'strOrigen',
                            [
                                'attribute'=>'strTipoPago',
                                'label'=>'Tipo de Pago'
                            ],

                            [
                                'class' => 'kartik\grid\ActionColumn',
                                'urlCreator' => function($action, $model, $key, $index) { 
                                        return Url::to([$action,'id'=>$key]);
                                },
                                // 'dropdown'=>true,
                                // 'dropdownButton'=>[
                                //     'label'=>'',
                                //     // 'carret'=>'<span class="caret"></span>'
                                // ],
                                // 'width'=>'500px',
                                'template'=>'{view} {delete} {facturado} {completar}',
                                'buttons'=>[
                                    'view' => function ($url, $model, $key) {
                                        return Html::a('<i class="material-icons">description</i>', ['pedidodelivery/view', 'id'=>$model->id], [
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
                                            return Html::a('<i class="material-icons">delete</i>', ['/pedidodelivery/delete', 'id'=>$model->id], [
                                                'class'=>'btn btn-danger btn-round btn-just-icon', 
                                                'title'=>'Eliminar',
                                                'aria-label'=>'Eliminar',
                                                'data-confirm'=>'¿ Esta seguro de eliminar este elemento ?',
                                                'data-method'=>'post'
                                            ]);
                                        }
                                    },
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
                                            'data-confirm'=>'��� Cambiar estado de la factura ?',
                                            // 'data-method'=>'get'
                                        ]);
                                    },
                                    'completar' => function ($url, $model, $key) {
                                        // si es de tipo envio delivery
                                        if ( !$model->tipo == 1 ){
                                            if ( !$model->sucursal_delivery_id || !$model->precio_delivery_id ){
                                                return Html::a('<span class="label label-info">Completar</span>', ['/pedidodelivery/asignar-sucursalprecio', 'pe'=>$model->id], [
                                                    'aria-label'=>'Completar informacion',
                                                    'title'=>'Completar informacion',
                                                ]);
                                            }
                                        }
                                        return null;
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
