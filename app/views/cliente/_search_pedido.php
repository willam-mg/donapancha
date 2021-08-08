<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use kartik\time\TimePicker;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\PedidodeliverySearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pedidodelivery-search">
    <?php $form = ActiveForm::begin([
        'action' => ['view', 'id'=>$id],
        'method' => 'get',
        'options'=>[
            'data-pjax' => 1,
            'class' => 'disable-submit-buttons',
        ] 
    ]); ?>
        <div class="row">
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <?= $form->field($model, 'fecha_inicio')->label('Fecha inicio')
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
                <?= $form->field($model, 'fecha_fin')->label('Fecha fin')
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
                <?= $form->field($model, 'estado', ['labelSpan'=>3])->widget(Select2::classname(), [
                    'data' => [
                        \app\models\Pedidodelivery::ESTADO_EN_ESPERA=>'Pendiente',
                        \app\models\Pedidodelivery::ESTADO_ASIGNADO=>'Asignado',
                        \app\models\Pedidodelivery::ESTADO_TERMINADO=>'Terminado'
                    ],
                    'options' => [ 
                        // 'placeholder' => 'Seleccionar estado'
                        'prompt' => 'Todos'
                    ],
                    'pluginOptions' => [
                        'allowClear' => true,
                        // 'escapeMarkup' => new JsExpression('function (markup) { return markup; }'),
                    ],
                ]); ?>
            </div>
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <div class="form-group text-right" style="padding-top: 20px;">
                <?= Html::submitButton('<i class="material-icons">search</i>'.'Buscar', ['class' => 'btn btn-round btn-white']) ?>
                </div>
            </div>
        </div>
    <?php ActiveForm::end(); ?>

</div>
