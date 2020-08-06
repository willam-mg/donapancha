<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Nosotros */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="nosotros-form">

    <?php $form = ActiveForm::begin([
            // 'type' => ActiveForm::TYPE_HORIZONTAL,
            'options'=>[
                'class' => 'disable-submit-buttons',
            ] 
        ]); ?>

    <?= $form->field($model, 'subtitulo')->textInput([
        'maxlength' => true,
        'placeholder'=>'Subtitulo',
    ]) ?>

    <?= $form->field($model, 'parrafo')->textArea([
        'maxlength' => true, 
        'rows'=>6,
        'placeholder'=>'Parrafo',
    ]) ?>

    <?= $form->field($model, 'publicado')
        ->widget(SwitchInput::className(), [
            'pluginOptions' => [
                'size' => 'small',
                'onColor' => 'success',
                'offColor' => 'danger',
                'onText' => 'SI',
                'offText' => 'NO',
            ]
        ]
    )?>

    <div class="form-group text-right">
        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], [
            'class' => 'btn btn-default',
            'title'=>'Cerrar',
        ]) ?>
        <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Guardar', ['class' => $model->isNewRecord?'btn btn-success':'btn btn-warning']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
