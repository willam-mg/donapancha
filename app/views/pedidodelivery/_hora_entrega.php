<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
use app\models\Preciodelivery;
use app\models\Sucursaldelivery;
use app\models\Tipopedido;
// use app\widgets\LocationInput;
use yii\web\JsExpression;
use kartik\dialog\Dialog;
use kartik\time\TimePicker;
use app\assets\Maps1Asset;
/* @var $this yii\web\View */
/* @var $model app\models\Pedidodelivery */
/* @var $form yii\widgets\ActiveForm */
Maps1Asset::register($this);

$this->title = 'Modificar pedido ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Pedidodeliveries', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="row">
    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 col-centered">
        <div class="card">
            <div class="card-content">
                <div class="pedidodelivery-form">
                    <?php $form = ActiveForm::begin([
                        'options'=>[
                            'class' => 'disable-submit-buttons',
                        ] 
                    ]); ?>


                        <?=$form->field($model, 'hora_entrega')->hint('Formato 24 horas')->widget(TimePicker::classname(), [
                            'pluginOptions' => [
                                'showSeconds' => false,
                                'showMeridian' => false,
                                'minuteStep' => 1,
                                'secondStep' => 5,
                                // 'template' => false
                            ],
                            'addonOptions' => [
                                'asButton' => false,
                                // 'buttonOptions' => ['class' => 'btn btn-primary']
                            ],
                            'options'=>[
                                'readonly' => false,
                                'autocomplete'=>'off',
                            ]
                        ])?>
                        <div class="form-group text-right">
                            <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], [
                                'class' => 'btn btn-simple',
                                'title'=>'Cerrar',
                            ]) ?>
                            <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Modificar', [
                                'class' => 'btn btn-round btn-warning',
                                'data-confirm'=>'¿ Modificar hora ?'
                            ]) ?>
                        </div>

                    <?php ActiveForm::end(); ?>
                </div>
            </div>
        </div>
    </div>
</div>


