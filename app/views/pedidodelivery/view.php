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
                                    'value'=> $model->precioDelivery?$model->precioDelivery->precio:'No seleccionado'
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
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-right">
                                    <?php
                                    if ( !$model->tipo == 2 ){//si es delivery
                                        if ( !$model->sucursal_delivery_id || !$model->precio_delivery_id ){
                                            echo Html::a( "<i class='material-icons'>edit_location</i> ".'Sucursal y precio', ['/pedidodelivery/asignar-sucursalprecio', 'pe' => $model->id], [
                                                'class' => $model->sucursal_delivery_id && $model->precio_delivery_id?'btn btn-round btn-danger btn-lg disabled':'btn btn-round btn-danger btn-lg', 
                                                'title'=>'Asignar sucursal y precio delivery',
                                            ]);
                                        } 
                                    } 
                                    ?>
                                    <?php
                                    if (\Yii::$app->user->can(\Yii::$app->user->identity::ROLE_SUCURSAL)){
                                        echo Html::a( "<i class='material-icons'>two_wheeler</i> ".'Asignar moto', ['/asignacion-moto/create', 'pe' => $model->id], [
                                            'class' => $model->estado == \app\models\Pedidodelivery::ESTADO_EN_ESPERA?'btn btn-round btn-success btn-lg':'btn btn-round btn-success btn-lg disabled', 
                                            'disabled' => $model->estado == \app\models\Pedidodelivery::ESTADO_EN_ESPERA?false:'disabled', 
                                            'title'=>'cambiar de estado de pedido',
                                        ]);
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
                                                    <th style="color: white">cantidad</th>
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
                                                        <td><?=$detalle->producto->costo?></td>
                                                        <td><?=$detalle->cantidad?></td>
                                                        <td><?=$detalle->subtotal?></td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <td colspan="4" class="text-right">
                                                        <b>Total</b>
                                                    </td>
                                                    <td>
                                                        <b>
                                                            <?=$model->total?>
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