<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use yii\grid\GridView;
use kartik\file\FileInput;

/* @var $this yii\web\View */
/* @var $model backend\models\Producto */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="producto-form">

    <div class="panel">
        <div class="panel-body">
            <div class="row">
                <div class="col-md-3">
                    <?php $form = ActiveForm::begin(); ?>
                        <?=$form->field($imagen, 'imagen')->widget(FileInput::classname(), [
                            'options' => ['multiple' => false, 'accept' => 'image/*'],
                            'pluginOptions' => [
                                'showPreview' => true,
                                'showCaption' => false,
                                'showRemove' => true,
                                'showUpload' => true,
                                'showCancel' => false,
                            ]
                        ]) ?>
                    <?php ActiveForm::end(); ?>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <?php for ($i=0; $i < count($imagenes); $i++) { ?>
                            <div class="col-md-3 text-center">
                                <?= Html::img('@web/uploads/paquete/'.$imagenes[$i]['imagen'], ['alt' => 'Fotografia', 'width'=>'100%', 'style'=>"border:1px solid #ccc"  ]) ?>
                                <?=Html::a('Quitar', ['quitarimagen', 'id'=>$imagenes[$i]['id'], 'paquete'=>$paquete->id ], ['class'=>'btn btn-danger'])?>
                            </div>

                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
