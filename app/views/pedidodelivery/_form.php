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
?>

<div class="pedidodelivery-form">

    <?php $form = ActiveForm::begin([
        'options'=>[
            'class' => 'disable-submit-buttons',
        ] 
    ]); ?>
        
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="row">
                    <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                        <?= $form->field($model, 'cliente_id')->widget(Select2::classname(), [
                            'data' => ArrayHelper::map($clientes, 'id', 'nombrecompleto'),
                                'options' => [
                                    'placeholder' => 'Seleccione un cliente',
                                    'style'=>'display:none',
                                ],
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                                'pluginEvents' => [
                                    "change" => "function() { infoCliente(); }",
                                ] 
                            ]
                        )?>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 text-right" style="padding-top:20px">
                        <?=  Html::a( "<i class='material-icons'>add</i> Nuevo Cliente", ['/cliente/create'], [
                            'class' => 'btn btn-round btn-simple',
                            'style'=>'border:1px solid #4caf50'
                        ]) ?>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <?= $form->field($model, 'telefono')->textInput(['maxlength' => true,'placeholder'=>'Introducir un telefono de referencia']) ?>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <?= $form->field($model, 'zona')->textInput(['maxlength' => true ,'placeholder'=>'Introducir la zona ejemplo: Zona Temporal']) ?>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <?= $form->field($model, 'direccion')->textInput(['maxlength' => true,'placeholder'=>'Introducir la descripción del domicilio']) ?>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <?= $form->field($model, 'instrucciones')->textArea(['maxlength' => true,'placeholder'=>'Introducir alguna instrucción (Opcional)']) ?>
                    </div>
                </div>
            </div>
        </div>
        



        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <?= $form->field($model, 'tipo_pedido_id')->radioList( ArrayHelper::map(Tipopedido::find()->all(), 'id', 'nombrehora') ) ?>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" id="showHora">
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
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" id="showSucursal">
                <?= $form->field($model, 'sucursal_delivery_id')->widget(Select2::classname(), [
                    'data' => ArrayHelper::map(Sucursaldelivery::find()->andFilterWhere(['<>', 'id', 1])->all(), 'id', 'nombre'),
                        'options' => ['placeholder' => 'Seleccione una sucursal'],
                        'pluginOptions' => [
                            'allowClear' => true
                        ],
                    ]
                )?>
            </div>
        </div>



        <div class="row" id="showMapa">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <input type="hidden" id="path_create" value="<?=Url::to(['/pedidodelivery/create'])?>">
                        <input type="hidden" id="id_cliente" value="<?=$model->cliente_id?>">
                        <table style="width:100%">
                            <tbody>
                                <tr>
                                    <td>
                                        <?= $form->field($model, 'url_mapa')->textInput([
                                            'maxlength' => true,
                                            'placeholder'=>'Url del mapa google'
                                        ]) ?>
                                    </td>
                                    <td style="width:50px;padding-top:30px">
                                        <a class="btn btn-info btn-sm btn-round" href="#" onclick="sendUrlMap()">
                                            <i class="material-icons">refresh</i>
                                            Aplicar
                                        </a>
                                    </td>
                                    <td style="width:50px;padding-top:30px">
                                        <a class="btn btn-round btn-just-icon btn-sm btn-white" href="#" onclick="clearCordinates()" title="Quitar marcador">
                                            <i class="material-icons text-danger">delete</i>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                
                            </div>
                            <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
                                
                            </div>
                        </div>

                        <input type="hidden" name="Pedidodelivery[ubicacion][latitude]" id="latitude" value="<?=$model->latitude?>">
                        <input type="hidden" name="Pedidodelivery[ubicacion][longitude]" id="longitude" value="<?=$model->longitude?>">
                        <input type="hidden" id="precio_delivery_id" class="form-control" name="Pedidodelivery[precio_delivery_id]" value="<?=$model->precio_delivery_id?>">

                        <div id="map"></div>
                        
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                
                <div class="row">
                    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
                        <?= $form->field($model, 'producto_id', ['labelSpan'=>3])->widget(Select2::classname(), [
                            'data' => ArrayHelper::map($productos, 'id', 'nombreFoto'),
                            'options' => [ 
                                'placeholder' => 'Seleccione el producto'
                            ],
                            'pluginOptions' => [
                                'allowClear' => true,
                                'escapeMarkup' => new JsExpression('function (markup) { return markup; }'),
                            ],
                        ]); ?>
                    </div>
                    <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
                        <?= $form->field($model, 'cantidad')->textInput([
                            'type' => 'number',
                            'min' => 0,
                            'step' => 1
                            ]) ?>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" style="padding-top:20px">
                        <button type="button" class="btn btn-round btn-white" style="font-weight: bold; color: black;" onclick="agregar()"> 
                            <i class="material-icons">add</i>
                            Agregar
                        </button>
                    </div>
                </div>
                
               
                <div class="row">
                    <div class="table-responsive">
                      <table class="table" id="detalles">
                       <thead class="thead-dark" style="background-color: #3C4858">
                                <tr >
                                    <th scope="col" style="color: white">#</th>
                                    <th scope="col" style="color: white">Producto</th>
                                    <th scope="col" style="color: white">Tipo</th>
                                    <th scope="col" style="color: white">cant.</th>
                                    <th scope="col" style="color: white">Precio</th>
                                    <th scope="col" style="color: white">subtotal</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if ( count($reqProductos) > 0 ){ ?>
                                    <?php foreach ($reqProductos as $key => $item) { ?>
                                        <?php $prod = \app\models\Producto::findOne($item); ?>

                                        <tr class="selected" id="<?='fila'.$prod->id?>">
                                            <td>
                                                <input type="hidden" name="idarticulo[]"  value="<?=$prod->id?>"><?=$key+1?>
                                            </td>
                                            <td>
                                                <span><?=$prod->producto?></span>
                                            </td>
                                            <td>
                                                <span><?=$prod->categoria->nombre?></span>
                                            </td>
                                            <td> 
                                                <input  class="txt-cantidad" type="hidden" name="cantidad[]"  value="<?=$reqCantidades[$key]?>">
                                                <span class="span-cantidad"><?=$reqCantidades[$key]?></span>
                                            </td>
                                            <td>
                                                <input class="txt-costo" type="hidden" name="precio_venta[]"  value="<?=$prod->costo?>"><?=$prod->costo?>
                                            </td>
                                            <td class="txt-subtotal">
                                                <span class="span-subtotal"><?=$prod->costo * intval($reqCantidades[$key])?></span>
                                            </td>
                                            <td>
                                                <button type="button" class="btn btn-round btn-just-icon btn-danger" onclick="eliminar(<?=$prod->id?>);">
                                                    <i class="material-icons">clear</i>
                                                </button>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                <?php } ?>
                            </tbody>
                      </table>
                    </div>
                </div>

            </div>
        </div>
        
        
        
        <div class="row">
            <div class="col-md-12">
                <h3 align="center" class="display-1">
                    Precio delivery: 
                    <input type="hidden" id="precio_pedido_valor" value="0">
                    <strong id="precio_pedido">00.00 Bs.</strong>
                    <!-- <div class="form-group" style="display:block;width:170px;margin:0 auto">
                        <input type="text" id="precio_pedido" class="form-control" placeholder="Precio" name="precio_pedido" readonly required>
                    </div> -->
                </h3>
                <h3 align="center" class="display-1">
                    Total del pedido: <strong id="total">00.00 Bs.</strong>
                </h3>
                <h3 align="center" class="display-1">
                    Total mas el delivery: <strong id="total_mas_delivery">00.00 Bs.</strong>
                </h3>
            </div>
        </div>
        


        <div class="form-group text-right">
            <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], [
                'class' => 'btn btn-simple',
                'title'=>'Cerrar',
            ]) ?>
            <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Registrar Pedido', [
                'class' => 'btn btn-round btn-lg btn-success',
                'data-confirm'=>'Registrar pedido?'
            ]) ?>
        </div>

    <?php ActiveForm::end(); ?>

</div>

<?php $this->registerJsFile('/js/pedidodelivery/_form.js', [
    'depends' => [\yii\web\JqueryAsset::className()],
]); ?> 