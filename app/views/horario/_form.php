<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use kartik\time\TimePicker;


/* @var $this yii\web\View */
/* @var $model app\models\Horario */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="horario-form">

    <?php $form = ActiveForm::begin(); ?>
    
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <?=$form->field($model, 'inicio')->hint('Formato 24 horas')->widget(TimePicker::classname(), [
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

            <?=$form->field($model, 'fin')->hint('Formato 24 horas')->widget(TimePicker::classname(), [
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

            <?= $form->field($model, 'atendiendo')->radioList( [
                1=>'Abierto', 
                0 => 'Cerrado'
            ]) ?>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <?= $form->field($model, 'hora_pickup')->hint('Minutos')->textInput(['type'=>'number']) ?>

            <?= $form->field($model, 'hora_entrega_inmediata')->hint('Minutos')->textInput(['type'=>'number']) ?>

            <?= $form->field($model, 'hora_entrega_programada')->hint('Minutos')->textInput(['type'=>'number']) ?>

            <?= $form->field($model, 'descuento_app_movil')->hint('min 0 max 100')->textInput([
                'type'=>'number',
                'min'=>0,
                'max'=>100,
            ]) ?>
        </div>
    </div>
    
    


    <div class="form-group text-right">
        <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Guardar', [
            'class' => 'btn btn-round btn-warning',
            'data-confirm'=>'¿Guardar configuracion?'
        ]) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
