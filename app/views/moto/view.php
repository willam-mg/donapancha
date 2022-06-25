<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;
use yii\helpers\ArrayHelper;

use kartik\grid\GridView;
/* @var $this yii\web\View */
/* @var $model app\models\Moto */

$this->title = 'Motos ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Motos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="moto-view">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered">
            <div class="card">
                <div class="card-content">
                    <h4><?= Html::encode($this->title) ?></h4>
                    <hr>
                    
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                            <div class="imagen-profile" style="height:auto;">
                                <?php if( $model->foto != "" ){ ?>
                                    <a href="<?=$model->strFoto?>" target="_blank" title="Ver en otra pestaña">
                                        <?= Html::img($model->strFoto, ['alt' => 'Fotografia']) ?>
                                    </a>
                                <?php }else{ ?>
                                    <?= Html::img('@web/images/no-image.jpg') ?>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                            <?= DetailView::widget([
                                'model' => $model,
                                'attributes' => [
                                    'nombre',
                                    'ciudad',
                                    'sucursal.nombre:text:Sucursal',
                                    'telefono',
                                    'user.email:email:Email',
                                    [
                                        'attribute'=>'autentificado',
                                        'value'=>function($model) {
                                            return $model->strAutentificado;
                                        }
                                    ]
                                ],
                            ]) ?>
                            
                            
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <h4>Pedidos realizados</h4>
                                    <div class="table-responsive">
                                        <?= GridView::widget([
                                            'dataProvider' => $pedidos,
                                            'columns' => [
                                                ['class' => 'yii\grid\SerialColumn'],
                                                'sucursalDelivery.nombrecompleto:text:Sucursal',
                                                'telefono:text:Telefono',
                                                'strEstado',
                                                [
                                                    'class' => 'kartik\grid\ActionColumn',
                                                    'urlCreator' => function($action, $model, $key, $index) { 
                                                            return Url::to([$action,'id'=>$key]);
                                                    },
                                                    'width'=>'200px',
                                                    'template'=>'{view}',
                                                    'buttons'=>[
                                                        'view' => function ($url, $model, $key) {
                                                            return Html::a('<i class="material-icons">visibility</i>', ['//pedidodelivery/view', 'id'=>$model->id], [
                                                                'class'=>'btn btn-info btn-round btn-just-icon', 
                                                                'title'=>'Ver',
                                                                'aria-label'=>'Ver',
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
                    


                     <div class="form-group text-right">
                        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], ['class' => 'btn btn-simple', 'title'=>'Cerrar',]) ?>
                        <?= Html::a( "<i class='material-icons'>edit</i> ".'Modificar', ['update', 'id' => $model->id], ['class' => 'btn btn-round btn-warning', 'title'=>'Modificar',]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
