<?php

use yii\helpers\Html;
use yii\helpers\Url;

use yii\widgets\DetailView;
use app\models\Sucursaldelivery;
use app\models\Tipopedido;
use app\models\Preciodelivery;

use dosamigos\google\maps\LatLng;
use dosamigos\google\maps\services\DirectionsWayPoint;
use dosamigos\google\maps\services\TravelMode;
use dosamigos\google\maps\overlays\PolylineOptions;
use dosamigos\google\maps\services\DirectionsRenderer;
use dosamigos\google\maps\services\DirectionsService;
use dosamigos\google\maps\overlays\InfoWindow;
use dosamigos\google\maps\overlays\Marker;
use dosamigos\google\maps\Map;
use dosamigos\google\maps\services\DirectionsRequest;
use dosamigos\google\maps\overlays\Polygon;
use dosamigos\google\maps\layers\BicyclingLayer;
/* @var $this yii\web\View */
/* @var $model app\models\Pedidodelivery */

$this->title = 'pedido ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Pedidodeliveries', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="pedidodelivery-view">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered">
            <div class="card">
                <div class="card-content">
                    <h4><?= Html::encode($this->title) ?></h4>
                    
                    <div class="row">
                        <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
                            <p align="center"><img src="/images/logo-03.png" style="width: 200px"></p> 
                            <?= DetailView::widget([
                                'model' => $model,
                                'attributes' => [
                                    'strTipo',
                                    'cliente.razon_social',
                                    'cliente.nit',
                                    'telefono',
                                    'zona',
                                    'direccion',
                                    // 'latitude',
                                    // 'longitude',
                                    // 'zoom',
                                    'instrucciones',
                                    // 'producto_id',
                    
                                    [
                                    'attribute'=>'precio_delivery_id',
                                    'value'=> $model->precio_delivery .' Bs.'
                                    ],    
                                    [
                                    'attribute'=>'sucursal_delivery_id',
                                    'value'=> $model->sucursalDelivery?$model->sucursalDelivery->nombre:'No seleccionado'
                                    ],
                                    // [
                                    //  'attribute'=>'tipo_pedido_id',
                                    //  'value'=> Tipopedido::findOne($model->id)->nombre
                                    // ],
                                    'fecha_entrega',
                                    'hora_entrega',
                                    'strEstado',
                                    'strTipoPago',
                                ],
                            ]) ?>

                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                                    <a href="<?=Url::to('https://wa.me/591'.$model->telefono),'?text=El%20Pedido%20fue%20enviado.%20'?>" target="_blank" title="enviar un mensaje">
                                        <img style="width: 300px" src="/images/1101.png"/>
                                    </a>
                                    <br>
                                    <div class="form-group">
                                        <label>Compartir url</label>
                                        <input type="text" class="form-control" id="url_copiar" value="<?=Url::base(true).Url::to(['/site/ver-pedido', 'id'=>$model->id])?>" disabled>
                                        <a href="#" class="btn btn-info btn-round" title="Copiar enlace" onclick="copiar('url_copiar')">
                                            <i class="material-icons">content_copy</i>
                                            Copiar
                                        </a>
                                    </div>


                                    <!-- <a href="<?=Url::to(['/site/ver-pedido', 'id'=>$model->id])?>" target="_blank" title="Compartir enlace">
                                        Compartir enlace
                                    </a> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
                            
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <?php
                                    if (\Yii::$app->user->can(\Yii::$app->user->identity::ROLE_CALL_CENTER)){
                                        echo Html::a( "<i class='material-icons'>monetization_on</i> ".'Modificar precio delivery', ['/pedidodelivery/modificar-precio', 'pe' => $model->id], [
                                            'class' =>'btn btn-round', 
                                            'style' =>'background:#005f96', 
                                            'title'=>'Modificar el precio delivery',
                                        ]);
                                        echo Html::a( "<i class='material-icons'>radio_button_checked</i> ".'Modificar Estado', ['/pedidodelivery/modificar-estado', 'pe' => $model->id], [
                                            'class' =>'btn btn-round', 
                                            'style' =>'background:#00a1ff', 
                                            'title'=>'Modificar el estado del pedido',
                                        ]);
                                    } 
                                    ?>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-right">
                                    <?php
                                    if ( $model->tipo == 1 ){//si es delivery
                                        // if ( !$model->sucursal_delivery_id || !$model->precio_delivery_id ){
                                        if (\Yii::$app->user->can(\Yii::$app->user->identity::ROLE_CALL_CENTER)){
                                            echo Html::a( "<i class='material-icons'>edit_location</i> ".'Sucursal y precio', ['/pedidodelivery/asignar-sucursalprecio', 'pe' => $model->id], [
                                                'class' =>'btn btn-round btn-danger btn-lg', 
                                                'title'=>'Asignar sucursal y precio delivery',
                                            ]);
                                        } 
                                    } 
                                    ?>
                                    <?php
                                    if ( $model->tipo == 1 ){//si es delivery entoces

                                        if (\Yii::$app->user->can(\Yii::$app->user->identity::ROLE_SUCURSAL)){
                                            echo Html::a( "<i class='material-icons'>two_wheeler</i> ".'Asignar moto', ['/asignacion-moto/create', 'pe' => $model->id], [
                                                'class' => $model->estado == \app\models\Pedidodelivery::ESTADO_EN_ESPERA?'btn btn-round btn-success btn-lg':'btn btn-round btn-success btn-lg disabled', 
                                                'disabled' => $model->estado == \app\models\Pedidodelivery::ESTADO_EN_ESPERA?false:'disabled', 
                                                'title'=>'cambiar de estado de pedido',
                                            ]);
                                        } 
                                    } 
                                    ?>

                                    <?php
                                    if (\Yii::$app->user->can(\Yii::$app->user->identity::ROLE_ADMINISTRADOR)){
                                        echo Html::a( "<i class='material-icons'>access_time</i> ".'Modificar hora entrega', ['/pedidodelivery/modificar-hora', 'id' => $model->id], [
                                            'class' => 'btn btn-round btn-warning btn-lg', 
                                            'title'=>'Modificar hora entrega',
                                        ]);
                                    } 
                                    ?>
                                    <?php
                                    // Html::a( "<i class='material-icons'>done</i> ".'Pedido Entregado', ['cambiar-estado', 'id' => $model->id], [
                                    //     'class' => $model->estado == \app\models\Pedidodelivery::ESTADO_ASIGNADO?'btn btn-success':'btn btn-success disabled', 
                                    //     'disabled' => $model->estado == \app\models\Pedidodelivery::ESTADO_ASIGNADO?false:true, 
                                    //     'data-confirm' => 'Esta seguro de cambiar el estado de este pedido?', 
                                    //     'title'=>'cambiar de estado de pedido',
                                    // ]) 
                                    ?>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-12">
                                    <?php 
                                        $coord = new LatLng(['lat' => $model->latitude, 'lng' => $model->longitude]);
                                        $map = new Map([
                                            'center' => $coord,
                                            'zoom' => $model->zoom && $model->zoom>0?$model->zoom:12,
                                            // 'width' => 100,
                                            // 'height' => '600px',
                                        ]);

                                        // Lets add a marker now
                                        $marker = new Marker([
                                            'position' => $coord,
                                            'title' => 'My Home Town',
                                            // 'icon'=>$model->icono?Url::to('@web/uploads'.\app\models\EspacioPublicitario::PATH.$model->icono):'',
                                        ]);

                                        $map->addOverlay($marker);

                                        $map->width = '100%';
                                        $map->height = '300';
                                        // $map->backgroundColor = 'red';

                                        // Display the map -finally :)
                                        if ( $model->tipo_pedido_id != 1){
                                            echo $map->display();
                                        }
                                    ?>
                                    
                                </div>
                            </div>

                            

                            
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <h4>Detalle</h4>
                                    
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class="thead-dark" style="background-color: #3C4858">
                                                <tr>
                                                    <th style="color: white">Foto</th>
                                                    <th style="color: white">Producto</th>
                                                    <th style="color: white">Precio</th>
                                                    <th style="color: white">Cantidad</th>
                                                    <th style="color: white">Descuento</th>
                                                    <th style="color: white">Subtotal</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach ($model->detalle as $key => $detalle) { ?>
                                                    <tr>
                                                        <td style="width:100px">
                                                            <?php  
                                                            if ($detalle->producto->foto){
                                                                echo Html::img('@web/uploads'.\app\models\Producto::PATH.$detalle->producto->foto, [
                                                                    'width'=>'100',
                                                                    'height'=>'100',
                                                                ]);
                                                            }else{
                                                                echo Html::img('@web/images/no-image.jpg', [
                                                                    'width'=>'100',
                                                                    'height'=>'100',
                                                                ]);
                                                            }
                                                            ?>
                                                        </td>
                                                        <td><?=$detalle->producto->producto?></td>
                                                        <td><?=$detalle->producto->costo?> Bs.</td>
                                                        <td><?=$detalle->cantidad?></td>
                                                        <?php  
                                                        if ($detalle->descuento != 0){ 
                                                        $subtotal = $detalle->producto->costo * $detalle->cantidad;
                                                        ?>
                                                            <td><?=$subtotal * $detalle->descuento?></td>
                                                        <?php }else{
                                                            echo '<td>0 Bs.</td>';
                                                        } ?>
                                                        <td><?=$detalle->subtotal?> Bs.</td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <td colspan="5" class="text-right">
                                                        <!-- <b>Total</b> -->
                                                    </td>
                                                    <td>
                                                        <b>
                                                            <?=$model->total?> Bs.
                                                        </b>
                                                    </td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                    
                                    
                                </div>
                            </div>

                            
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <h4>Moto asignada</h4>
                                    <?php
                                        if ( $model->asignacionMoto){
                                            echo DetailView::widget([
                                                'model' => $model->asignacionMoto,
                                                'options'=>['class'=>'table table-bordered'],
                                                'attributes' => [
                                                    'moto.nombre:text:Moto',
                                                    'pedido.nombrecompleto:text:Pedido',
                                                    // 'fecha',
                                                    // 'hora',
                                                    'fecha_despacho',
                                                    'hora_despacho',
                                                    'fecha_entrega',
                                                    'hora_entrega',
                                                ],
                                            ]);
                                        }else{
                                            echo '<div class="text-center">No asignado</div>';
                                        }
                                    ?>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <h4>Total</h4>
                                    <table style="width:100%">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <b>
                                                        <i>
                                                            Detalle: <br>
                                                            <?=$model->total?> Bs.
                                                        </i>
                                                    </b>
                                                </td>
                                                <td class="text-center">
                                                    <i class="material-icons">add</i>
                                                </td>
                                                <td>
                                                    <b>
                                                        <i>
                                                            Precio delivery: <br>
                                                            <?=$model->precio_delivery?> Bs.
                                                        </i>
                                                    </b>
                                                </td>
                                                <?php if($model->descuento != 0){ ?>
                                                    <?php  
                                                    // $totalPedido = $model->total + $model->precio_delivery;
                                                    $totalPedido = $model->total;
                                                    $descuento = $totalPedido * $model->descuento;
                                                    ?>

                                                    <td class="text-center">
                                                        <i class="material-icons">minimize</i> <br>
                                                    </td>
                                                    <td>
                                                        <b>
                                                            <i>
                                                                Descuento: <br>
                                                                <?=$descuento?> Bs.
                                                            </i>
                                                        </b>
                                                    </td>
                                                <?php } ?>
                                                <td class="text-center">
                                                    <i class="material-icons">minimize</i> <br>
                                                    <i class="material-icons" style="top: -20px;position: relative;">minimize</i>
                                                </td>
                                                <td>
                                                    <b>
                                                        <i>
                                                            Total: <br>
                                                            <?=$model->totalPedido?> Bs.
                                                        </i>
                                                    </b>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>


                        </div>
                    </div>
                    
                    
                    





                    
                    

                     <div class="form-group text-right">
                        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], ['class' => 'btn btn-simple', 'title'=>'Cerrar',]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $this->registerJsFile('/js/pedidodelivery/view.js', [
    'depends' => [\yii\web\JqueryAsset::className()],
]); ?> 