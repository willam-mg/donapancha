<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;
use kartik\select2\Select2;

/* @var $this yii\web\View */
/* @var $model app\models\Ciudad */
/* @var $form yii\widgets\ActiveForm */
$this->title = 'Notificar a los usuarios';
?>

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-lg-6 col-centered">
        <div class="card">
            <div class="card-content">
                <div class="ciudad-form">

                    <?php $form = ActiveForm::begin(); ?>

                    <?= $form->field($model, 'mensaje')->textArea([
                        'maxlength' => true,
                        'placeholder'=>'Mensaje a enviar',
                        'autocomplete'=>'off',
                        'rows'=>5,
                    ]) ?>

                    <div class="form-group text-right">
                        <?= Html::submitButton('<i class="material-icons">send</i> Enviar', ['class' => 'btn btn-success']) ?>
                    </div>

                    <?php ActiveForm::end(); ?>

                </div>
            </div>
        </div>
    </div>
</div>


