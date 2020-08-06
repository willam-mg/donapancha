<?php

use yii\helpers\Html;
use yii\helpers\Url;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use app\models\Categoria;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use dosamigos\ckeditor\CKEditor;
/* @var $this yii\web\View */
/* @var $model app\models\Paquete */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="paquete-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'precio')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'descripcion_corta')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'descripcion_larga')->widget(CKEditor::className(), [
            'options' => ['rows' => 6],
            'preset' => 'basic'
    ]) ?>


    <label style="color: #25d366;">Documento PDF Tamaño 500kb</label>
    <?=$form->field($model, 'catalogo')->widget(FileInput::classname(), [
        'options' => ['multiple' => false, 'accept' => '*'],
        'pluginOptions' => [
            'showPreview' => true,
            'showCaption' => true,
            'showRemove' => false,
            'showUpload' => false,
        ]
    ])?>
    


    <?=$form->field($model, 'foto')
        ->hint('Dimencion 500 x 600 px - tamaño maximo 8 MB')
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
                    !$model->isNewRecord && $model->foto?Url::base(true).Url::to('@web/uploads'.\app\models\About::PATH.$model->foto):'',
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

    
    <?= $form->field($model, 'categoria_id')->widget(Select2::classname(), [
            'data' => ArrayHelper::map(Categoria::find()->all(), 'id', 'nombre'),
            'options' => ['placeholder' => 'Seleccione una categoria ...'],
            'pluginOptions' => [
                'allowClear' => true
            ],
        ]); 
    ?>

    <?= $form->field($model, 'temperatura')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pais')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ciudad')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'estado')->dropDownList([ 'Publicado' => 'Publicado', 'No publicado' => 'No publicado', ], ['prompt' => '']) ?>

    <div class="form-group text-right">
        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], [
            'class' => 'btn btn-default',
            'title'=>'Cerrar',
        ]) ?>
        <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Guardar', ['class' => $model->isNewRecord?'btn btn-success':'btn btn-warning']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
