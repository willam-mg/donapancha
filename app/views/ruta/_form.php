<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $model app\models\Ruta */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="ruta-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?=$form->field($model, 'imagen')
        ->hint('Dimencion 500 x 600 px - tamaño maximo 8 MB')
        ->widget(FileInput::classname(), [
            'showMessage'=>false,
            'options' => [
                'multiple' => false, 
                'accept' => 'image/*',
                'value'=>$model->imagen,
            ],
            'pluginOptions' => [
                'previewFileType' => 'image',
                'initialPreview'=>[
                    !$model->isNewRecord && $model->imagen?Url::base(true).Url::to('@web/uploads'.\app\models\Ruta::PATH.$model->imagen):'',
                ],
                'overwriteInitial'=>true,
                'initialCaption'=>$model->imagen,
                'initialPreviewAsData'=>true,
                'showPreview' => true,
                'showCaption' => true,
                'showRemove' => false,
                'showUpload' => false,
                'maxFileSize'=>8000
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
