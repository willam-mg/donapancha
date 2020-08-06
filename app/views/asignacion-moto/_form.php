<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use app\models\Moto;
use app\models\Pedidodelivery;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use kartik\time\TimePicker;

/* @var $this yii\web\View */
/* @var $model app\models\AsignacionMoto */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="asignacion-moto-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'pedido_id')->widget(Select2::classname(), [
        'data' => ArrayHelper::map($pedidos, 'id', 'nombrecompleto'),
            'options' => [
                'placeholder' => 'Seleccione un pedido',
                'style'=>'display:none',
                'disabled'=>true
            ],
            'pluginOptions' => [
                'allowClear' => true
            ],
        ]
    )?>

    <?= $form->field($model, 'moto_id')->widget(Select2::classname(), [
        'data' => ArrayHelper::map($motos, 'id', 'nombrecompleto'),
            'options' => [
                'placeholder' => 'Seleccione una moto',
                'style'=>'display:none'
            ],
            'pluginOptions' => [
                'allowClear' => true
            ],
        ]
    )?>

    
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <?= $form->field($model, 'fecha_despacho', ['labelSpan'=>3])->hint('Año - Mes - Dia')->widget(DatePicker::classname(), [
                'options' => ['placeholder' => 'Seleccione la fecha', 'autocomplete'=>'off'],
                'value' => date('Y-m-d'),
                'removeButton' => false,
                'pluginOptions' => [
                    'autoclose'=>true,
                    'format' => 'yyyy-mm-dd'
                ]
            ]) ?>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <?=$form->field($model, 'hora_despacho')->hint('Formato 24 horas')->widget(TimePicker::classname(), [
                'pluginOptions' => [
                    'showSeconds' => false,
                    'showMeridian' => false,
                    'minuteStep' => 1,
                    'secondStep' => 5,
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
    </div>
    



    <div class="form-group text-right">
        <?php if($model->pedido_id){ ?>
            <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['/pedidodelivery/view', 'id'=>$model->pedido_id], [
                'class' => 'btn btn-simple',
                'title'=>'Cerrar',
            ]) ?>
        <?php }else{ ?>
            <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['/pedidodelivery/index'], [
                'class' => 'btn btn-simple',
                'title'=>'Cerrar',
            ]) ?>
        <?php } ?>
        <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Guardar', ['class' => $model->isNewRecord?'btn btn-success':'btn btn-warning']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
