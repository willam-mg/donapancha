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

$this->title = 'Reporte motos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="wraper-page-termic">
    <?php if ($moto) { ?>
        <table class="full-width">
            <tbody>
                <tr>
                    <td colspan="2" class="text-center">
                        <h4>
                            PEDIDOS REALIZADOS
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td> <?=$moto->nombre?> </td>
                </tr>
                <tr>
                    <td>Telefono:</td>
                    <td> <?=$moto->telefono?> </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td> <?=$moto->user->email?> </td>
                </tr>
                <tr>
                    <td>Fecha:</td>
                    <td> 
                        <b>
                            <?=$fecha?> 
                        </b>
                    </td>
                </tr>
            </tbody>
        </table>
    <?php } else { ?>
        <h4>No se selecciono una moto</h4>
        <h4>Fecha: <?=$fecha?></h4>
    <?php } ?>

    <?=GridView::widget([
        'id'=>'crud-datatable-pjax',
        'dataProvider' => $pedidos,
        'layout'=>'
            {items}
        ',
        'columns' => [
            [
                'label' => 'sucursal',
                'value' => function($model){
                    if ($model->pedido) {
                        if ($model->pedido->sucursalDelivery) {
                            return $model->pedido->sucursalDelivery->nombrecompleto;
                        }
                    }
                    return null;
                },
            ],
            [
                'label'=>'Hora',
                'value'=>function($model) {
                    return $model->hora_despacho;
                }
            ],
            [
                'label' => 'Estado',
                'value' => function($model){
                    if ($model->pedido) {
                        return $model->pedido->strEstado;
                    }
                    return null;
                },
            ],
            'pedido.precioDelivery.nombrePrecio:text:P. delivery',
            'pedido.strTipoPago:text:T. pago',
        ],
        'tableOptions'=>[
            'class'=>'table-termic'
        ],
        'pjax'=>true,
        'bordered' => true,
        'striped' => false,
        'hover' => false,
        'condensed' => false,
        'responsive' => true,          
        'responsiveWrap' => false,                 
        'resizableColumns' => false,     
        'showPageSummary' => false,
    ])?>
</div>
