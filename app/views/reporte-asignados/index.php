<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use kartik\mpdf\Pdf;
use kartik\grid\GridView;
use kartik\time\TimePicker;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use kartik\select2\Select2;
/* @var $this yii\web\View */
/* @var $searchModel app\models\ClienteSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Reporte pedidos asignados';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cliente-index">

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered">
            <div class="card card-stats">
                <div class="card-header hide-mobile" data-background-color="red">
                    <i class="material-icons">notes</i>
                </div>
                <div class="card-content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 text-left">
                            <h4>
                                <?= Html::encode($this->title) ?>
                            </h4>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-right pull-right">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?php $form = ActiveForm::begin([
                                'action' => ['index'],
                                // 'method' => 'get',
                                'method' => 'post',
                                'options'=>[
                                    'class' => 'disable-submit-buttons',
                                ] 
                            ]);?>   
                                <div class="row">
                                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                                        <?= $form->field($model, 'sucursal')->widget(Select2::classname(), [
                                            'data' => ArrayHelper::map($sucursales, 'id', 'nombrecompleto'),
                                                'options' => [
                                                    'placeholder' => 'Seleccione una sucursal',
                                                    'style'=>'display:none',
                                                ],
                                                'pluginOptions' => [
                                                    'allowClear' => true
                                                ],
                                                'pluginEvents' => [
                                                    "change" => "function() { infoCliente(); }",
                                                ] 
                                            ]
                                        )?>
                                    </div>

                                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                                        <?= $form->field($model, 'fecha')->label('Fecha entrega')
                                            ->hint('Año - Mes - Dia')->widget(DatePicker::classname(), [
                                            'options' => ['placeholder' => 'Seleccione la fecha', 'autocomplete'=>'off'],
                                            'removeButton' => false,
                                            'pluginOptions' => [
                                                'autoclose'=>true,
                                                'format' => 'yyyy-mm-dd'
                                            ]
                                        ])?>
                                    </div>
                                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                                        <?=$form->field($model, 'hora')->label('Hora entrega')->hint('Formato 24 horas')->widget(TimePicker::classname(), [
                                            'pluginOptions' => [
                                                'showSeconds' => false,
                                                'showMeridian' => false,
                                                'minuteStep' => 1,
                                                'secondStep' => 5,
                                                'defaultTime' => '00:00',
                                                // 'template' => false
                                            ],
                                            'addonOptions' => [
                                                'asButton' => false,
                                                // 'buttonOptions' => ['class' => 'btn btn-primary']
                                            ],
                                            'options'=>[
                                                'readonly' => false,
                                                'autocomplete'=>'off',
                                            ]
                                        ])?>
                                    </div>
                                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                                        <div class="form-group text-right" style="padding-top:20px">
                                            <?= Html::submitButton('<i class="material-icons">search</i> Buscar', ['class' => 'btn btn-round btn-white']) ?>
                                        </div>
                                    </div>
                                </div>
                            <?php ActiveForm::end(); ?>
                        </div>
                    </div>

                    <?=GridView::widget([
                        'id'=>'crud-datatable-pjax',
                        'dataProvider' => $pedidos,
                        'layout'=>'
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    {summary}
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 text-right">
                                    <b>{export} </b>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                                {items}
                                {pager}
                        ',
                        'columns' => [
                            [
                                'attribute' => 'sucursal_delivery_id',
                                'value' => function($model){
                                    return $model->sucursalDelivery->nombrecompleto;
                                },
                            ],
                            'telefono',
                            'fecha_entrega',
                            'hora_entrega',
                            'asignacionMoto.moto.nombre:text:Moto',
                            'asignacionMoto.hora_despacho:text:Hora despacho',
                            'tipoPedido.nombre:text:Tipo pedido',
                            'precioDelivery.nombrePrecio:text:Precio delivery',
                            'instrucciones',
                            [
                                'attribute' => 'estado',
                                'value' => function($model){
                                    return $model->strEstado;
                                },
                            ],
                        ],
                        'pjax'=>true,
                        'bordered' => true,
                        'striped' => false,
                        'hover' => true,
                        'condensed' => false,
                        'responsive' => true,          
                        'responsiveWrap' => false,                 
                        'resizableColumns' => false,     
                        'showPageSummary' => false,
                        'export'=>[
                            'label'=>'Exportar como',
                            'options'=>[
                                'class' => 'btn btn-round btn-success',
                            ],
                        ],
                        'exportConfig' => [
                            GridView::EXCEL => [],
                            GridView::PDF => [
                                'filename' => 'pedidos_en_espera_'.date('YmdHis'),
                                'alertMsg' => 'Se exportara un archivo PDF para poder ser descargado',
                                'options' => ['title' => 'Pedidos en espera'],
                                'config' => [
                                    // 'mode' => 'utf-8',
                                    'mode' => Pdf::MODE_CORE,
                                    'format' => 'Letter',
                                    'destination' => 'I',
                                    'marginTop' => 20,
                                    'marginBottom' => 20,
                                    'methods' => [
                                        'SetHeader' => [Yii::$app->name.' - '.date('Y-m-d-Hi')],
                                        'SetFooter' => ['{PAGENO}']
                                    ],
                                'options' => [
                                        'title' => 'PDF Document Title',
                                        'subject' => 'PDF Document Subject',
                                        'keywords' => 'krajee, grid, export, yii2-grid, pdf'
                                ],
                                    'contentBefore'=>'<div class="text-center"><h3>Pedidos en espera</h3></div>',
                                ]
                            ],
                        ]         
                    ])?>
                </div>
            </div>
        </div>
    </div>
</div>
