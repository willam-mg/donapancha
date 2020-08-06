<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use app\models\Cliente;
use app\models\Paquete;
use kartik\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\ReservaSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Reservas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="reserva-index">

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered">
            <div class="card card-stats">
                <div class="card-header" data-background-color="purple">
                    <i class="material-icons">date_range</i>
                </div>
                <div class="card-content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 text-left">
                            <h4>
                                <?= Html::encode($this->title) ?>
                            </h4>
                        </div>
                        
                    </div>

                        <?php Pjax::begin(); ?>
                            <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    

                            <?= GridView::widget([
                            'dataProvider' => $dataProvider,
                            'filterModel' => $searchModel,
                            'columns' => [
                                ['class' => 'yii\grid\SerialColumn'],

                                'fecha_registro',
                                
               
                                [
                                    'attribute'=>'Cliente_id',
                                    'value'=>function($model){
                                    $cliente = Cliente::findOne($model->id);
                                    return $cliente->nombre_completo;
                                    },
                                ],

                              
                                [
                                    'attribute'=>'paquete_id',
                                    'value'=>function($model){
                                    $paquete = Paquete::findOne($model->paquete_id);
                                    return $paquete->nombre;
                                    },
                                ],
                                'estado',

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
                        <?php Pjax::end(); ?>

                </div>
            </div>
        </div>
    </div>
</div>
