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

$this->title = 'Sucursal y precio delivery';
$this->params['breadcrumbs'][] = ['label' => 'Pedidodeliveries', 'url' => ['view', 'id'=>$model->id]];
$this->params['breadcrumbs'][] = $this->title;

$this->registerJs(
    "const preciosDelivery = ".json_encode($cordenadas).";",
    \yii\web\View::POS_BEGIN
);
MapsAsset::register($this);
// GoogleAsset::register($this);
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

                        <input type="hidden" id="latitude" value="<?=$model->latitude?>">
                        <input type="hidden" id="longitude" value="<?=$model->longitude?>">

                        <?= $form->field($model, 'sucursal_delivery_id')->widget(Select2::classname(), [
                            'data' => ArrayHelper::map(Sucursaldelivery::find()->andFilterWhere(['<>', 'id', 1])->all(), 'id', 'nombre'),
                                'options' => ['placeholder' => 'Seleccione una sucursal'],
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ]
                        )?>

                        
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                <div class="form-group">
                                    <input type="hidden" id="precio_delivery_id" class="form-control" name="Pedidodelivery[precio_delivery_id]" value="<?=$model->precio_delivery_id?>">
                                    <label for="precio">Precio delivery</label>
                                    <input type="text" id="precio_pedido" class="form-control" placeholder="Precio" name="precio_pedido" value="<?=$precio_pedido?>" readonly required>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            </div>
                        </div>
                        

                        <div id="map"></div>
                        
                        <div class="form-group text-right">
                            <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], [
                                'class' => 'btn btn-simple',
                                'title'=>'Cerrar',
                            ]) ?>
                            <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Registrar Pedido', [
                                'class' => 'btn btn-round btn-success',
                                'data-confirm'=>'Registrar sucural o precio delivery?'
                            ]) ?>
                        </div>

                    <?php ActiveForm::end(); ?>                    
                </div>
            </div>
        </div>
    </div>
</div>
