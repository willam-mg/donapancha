<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Version */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="version-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'fecha_subida')->textInput() ?>

    <?= $form->field($model, 'hora_subida')->textInput() ?>

    <div class="form-group text-right">
        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], [
            'class' => 'btn btn-default',
            'title'=>'Cerrar',
        ]) ?>
        <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Guardar', ['class' => $model->isNewRecord?'btn btn-success':'btn btn-warning']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
