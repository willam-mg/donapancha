<?php

use yii\helpers\Html;
use yii\helpers\Url;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Categoriaproducto */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="categoriaproducto-form">

    <?php $form = ActiveForm::begin([
        'options'=>[
            'class' => 'disable-submit-buttons',
        ] 
    ]); ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'producto')->textInput(['maxlength' => true]) ?>
    
    <?=$form->field($model, 'foto')
        ->widget(FileInput::classname(), [
            'showMessage'=>false,
            'options' => [
                'multiple' => false, 
                'accept' => 'image/*',
                'value'=>$model->foto,
            ],
            'pluginOptions' => [
                'previewFileType' => 'image',
                'initialPreview'=>[
                    !$model->isNewRecord && $model->foto?Url::base(true).Url::to('@web/uploads'.\app\models\Categoriaproducto::PATH.$model->foto):'',
                ],
                'overwriteInitial'=>true,
                'initialCaption'=>$model->foto,
                'initialPreviewAsData'=>true,
                'showPreview' => true,
                'showCaption' => true,
                'showRemove' => false,
                'showUpload' => false,
                'maxFileSize'=>8000
            ]
        ]
    )?>

    <?= $form->field($model, 'estado')->dropDownList([ 'Activo' => 'Activo', 'Inactivo' => 'Inactivo', ], ['prompt' => '']) ?>

    <div class="form-group text-right">
        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], [
            'class' => 'btn btn-round btn-simple',
            'title'=>'Cerrar',
        ]) ?>
        <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Guardar', ['class' => $model->isNewRecord?'btn btn-round btn-success':'btn btn-round btn-warning']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
