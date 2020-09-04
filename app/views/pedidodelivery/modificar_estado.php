<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use app\models\Preciodelivery;
use app\models\Sucursaldelivery;
use app\models\Tipopedido;
use app\widgets\LocationInput;
use yii\web\JsExpression;
use kartik\dialog\Dialog;
use kartik\time\TimePicker;
use app\assets\MapsAsset;

/* @var $this yii\web\View */
/* @var $model app\models\Pedidodelivery */

$this->title = 'Modificar estado';
$this->params['breadcrumbs'][] = ['label' => 'Pedidodeliveries', 'url' => ['view', 'id'=>$model->id]];
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="pedidodelivery-create">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-centered">
            <div class="card">
                <div class="card-content">
                    <h2><?=$this->title?></h2>
                    <?php $form = ActiveForm::begin([
                        'options'=>[
                            'class' => 'disable-submit-buttons',
                        ] 
                    ]); ?>

                        <?= $form->field($model, 'estado')->widget(Select2::classname(), [
                                'data' => [
                                    \app\models\Pedidodelivery::ESTADO_EN_ESPERA=>'Pendiente',
                                    \app\models\Pedidodelivery::ESTADO_ASIGNADO=>'Asignado',
                                    \app\models\Pedidodelivery::ESTADO_TERMINADO=>'Terminado'
                                ],
                                'options' => ['placeholder' => 'Seleccione el estado'],
                                'pluginOptions' => [
                                    'allowClear' => false
                                ],
                            ]
                        )?>


                        
                        <div class="form-group text-right">
                            <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['view', 'id'=>$model->id], [
                                'class' => 'btn btn-simple',
                                'title'=>'Cerrar',
                            ]) ?>
                            <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Guardar', [
                                'class' => 'btn btn-round btn-success',
                                'data-confirm'=>'Modificar precio?'
                            ]) ?>
                        </div>

                    <?php ActiveForm::end(); ?>                    
                </div>
            </div>
        </div>
    </div>
</div>
