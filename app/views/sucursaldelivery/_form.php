<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use app\assets\SucursalAsset;
SucursalAsset::register($this);

/* @var $this yii\web\View */
/* @var $model app\models\Sucursaldelivery */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sucursaldelivery-form">

    <?php $form = ActiveForm::begin([
        'options'=>[
            'class' => 'disable-submit-buttons',
        ] 
    ]); ?>

    <input id="isView" type="hidden" value="0">

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ciudad')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'detalle')->textInput(['maxlength' => true]) ?>
    
    <?= $form->field($model, 'estado')->dropDownList([ 'Activo' => 'Activo', 'Inactivo' => 'Inactivo', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'latitude')->label(false)->hiddenInput([
        'maxlength' => true,
    ]) ?>
    <?= $form->field($model, 'longitude')->label(false)->hiddenInput([
        'maxlength' => true, 
    ]) ?>

    <div id="map"></div>

    <div class="form-group text-right">
        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], [
            'class' => 'btn btn-simple',
            'title'=>'Cerrar',
        ]) ?>
        <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Guardar', ['class' => $model->isNewRecord?'btn btn-round btn-success':'btn btn-round btn-warning']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
