<?php

use yii\helpers\Html;
use yii\helpers\Url;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use app\models\Categoriaproducto;
use kartik\dialog\Dialog;
/* @var $this yii\web\View */
/* @var $model app\models\Producto */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="producto-form">

    <?php $form = ActiveForm::begin([
        'options'=>[
            'class' => 'disable-submit-buttons',
        ]
    ]); ?>
    <?= $form->field($model, 'categoria_producto_id')->widget(Select2::classname(), [
            'data' => ArrayHelper::map(Categoriaproducto::find()->all(), 'id', 'nombre'),
            'options' => ['placeholder' => 'Seleccione una categoria ...'],
            'pluginOptions' => [
                'allowClear' => true
            ],
        ]); 
    ?>

    <?= $form->field($model, 'producto')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'detalle')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'costo')->textInput(['maxlength' => true]) ?>
    
    <?= $form->field($model, 'descuento')->textInput(['maxlength' => true, 'type'=>'number']) ?>

    <?= $form->field($model, 'estado')->dropDownList([ 'Activo' => 'Activo', 'Inactivo' => 'Inactivo', ], ['prompt' => '']) ?>

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
                    !$model->isNewRecord && $model->foto?Url::base(true).Url::to('@web/uploads'.\app\models\Producto::PATH.$model->foto):'',
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

    <div class="form-group text-right">
        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], [
            'class' => 'btn btn-simple',
            'title'=>'Cerrar',
        ]) ?>
        <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Guardar', ['class' => $model->isNewRecord?'btn btn-round btn-success':'btn btn-round btn-warning']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
