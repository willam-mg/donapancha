<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
use app\models\Categoriaproducto;
use app\models\Sucursaldelivery;
use kartik\dialog\Dialog;

/* @var $this yii\web\View */
/* @var $model app\models\Moto */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="moto-form">

    <?php $form = ActiveForm::begin([
        'options'=>[
            'class' => 'disable-submit-buttons',
        ] 
    ]); ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ciudad')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'telefono')->textInput([
        'maxlength' => true,
        'type' => 'number',
        'min' => 0,
        'step' =>1
    ]) ?>

    <?= $form->field($model, 'sucursal_id')->label('Sucursal')->widget(Select2::classname(), [
        'data' => ArrayHelper::map(Sucursaldelivery::find()->all(), 'id', 'nombre'),
            'options' => [
                'placeholder' => 'Seleccione una sucursal',
                'style'=>'display:none'
            ],
            'pluginOptions' => [
                'allowClear' => true
            ],
        ]
    )?>

    
    <?= $form->field($user, 'email')->textInput(['autocomplete'=>'off']) ?>

    <?= $form->field($model, 'autentificado')->widget(Select2::classname(), [
            'data' => [
                1=>'Si',
                0=>'No'
            ],
            'pluginOptions' => [
                'allowClear' => false
            ],
        ]
    )?>

    <?php
    // $form->field($model, 'foto')
    //     ->widget(FileInput::classname(), [
    //         'showMessage'=>false,
    //         'options' => [
    //             'multiple' => false, 
    //             'accept' => 'image/*',
    //             'value'=>$model->foto,
    //         ],
    //         'pluginOptions' => [
    //             'previewFileType' => 'image',
    //             'initialPreview'=>[
    //                 !$model->isNewRecord && $model->foto?Url::base(true).Url::to('@web/uploads'.\app\models\Moto::PATH.$model->foto):'',
    //             ],
    //             'overwriteInitial'=>true,
    //             'initialCaption'=>$model->foto,
    //             'initialPreviewAsData'=>true,
    //             'showPreview' => true,
    //             'showCaption' => true,
    //             'showRemove' => false,
    //             'showUpload' => false,
    //             'maxFileSize'=>8000
    //         ]
    //     ]
    // )
    ?>

    <div class="form-group text-right">
        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], [
            'class' => 'btn btn-simple',
            'title'=>'Cerrar',
        ]) ?>
        <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Guardar', ['class' => $model->isNewRecord?'btn btn-round btn-success':'btn btn-round btn-warning']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
