<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\HorarioSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="horario-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'inicio') ?>

    <?= $form->field($model, 'fin') ?>

    <?= $form->field($model, 'atendiendo') ?>

    <?= $form->field($model, 'hora_pickup') ?>

    <?php // echo $form->field($model, 'hora_entrega_inmediata') ?>

    <?php // echo $form->field($model, 'hora_entrega_programada') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
