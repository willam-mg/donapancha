<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use kartik\mpdf\Pdf;
use kartik\grid\GridView;
use kartik\time\TimePicker;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use kartik\select2\Select2;

$this->title = 'Reporte motos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="wraper-page-termic">
    <?php if ($moto) { ?>
        <table class="full-width">
            <tbody>
                <tr>
                    <td colspan="2" class="text-center">
                        <h4>
                            PEDIDOS REALIZADOS
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td> <?=$moto->nombre?> </td>
                </tr>
                <tr>
                    <td>Telefono:</td>
                    <td> <?=$moto->telefono?> </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td> <?=$moto->user->email?> </td>
                </tr>
                <tr>
                    <td>Fecha:</td>
                    <td> 
                        <b>
                            <?=$fecha?> 
                        </b>
                    </td>
                </tr>
            </tbody>
        </table>
    <?php } else { ?>
        <h4>No se selecciono una moto</h4>
        <h4>Fecha: <?=$fecha?></h4>
    <?php } ?>
    
    <?php foreach ($pedidos->models as $key => $model) { ?>
        
        <table class="full-width table-termic space-bottom">
            <tbody>
                <tr>
                    <td class="alignTop">
                        <b> Sucursal: </b> <br>
                        <?php 
                            if ($model->pedido) {
                                if ($model->pedido->sucursalDelivery) {
                                    echo $model->pedido->sucursalDelivery->nombrecompleto;
                                }
                            }
                        ?>
                    </td>
                    <td class="alignTop">
                        <b> Hora: </b> <br>
                        <?= $model->hora_despacho ?>
                    </td>
                    <td class="alignTop">
                        <b> Estado: </b> <br>
                        <?php
                        if ($model->pedido) {
                            echo $model->pedido->strEstado;
                        }
                        ?>
                    </td>
                    <td class="alignTop">
                        <b> P. delivery: </b> <br>
                        <?php
                        if ($model->pedido) {
                            if ($model->pedido->precioDelivery) {
                                echo $model->pedido->precioDelivery->nombrePrecio;
                            }
                        }
                        ?>
                    </td>
                    <td class="alignTop">
                        <b> T. pago: </b> <br>
                        <?php
                        if ($model->pedido) {
                            echo $model->pedido->strTipoPago;
                        }
                        ?>
                    </td>
                    <td class="alignTop">
                        <b> Total: </b> <br>
                        <?php
                        if ($model->pedido) {
                            echo $model->pedido->totalPedido;
                        }
                        ?>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <b>
                            Detalle:
                        </b>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="alignTop">
                        <b> Prod. </b> <br>
                    </td>
                    <td class="alignTop">
                        <b> Prec. </b> <br>
                    </td>
                    <td class="alignTop">
                        <b> Cnt. </b> <br>
                    </td>
                    <td colspan="2" class="alignTop">
                        <b> Sub Tot. </b> <br>
                    </td>
                </tr>
                <?php foreach ($model->pedido->detalle as $key => $detalle) { ?>
                    <tr>
                        <td colspan="2" class="alignTop">
                            <?= $detalle->producto->producto ?>
                        </td>
                        <td class="alignTop">
                            <?= $detalle->producto->costo ?> Bs.
                        </td>
                        <td class="alignTop">
                            <?= $detalle->cantidad ?>
                        </td>
                        <td colspan="2" class="alignTop">
                            <?= $detalle->subTotal ?> Bs.
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    <?php } ?>
        <!-- <table class="full-width">
            <tbody>
                <tr>
                    <td>
                        Sucursal: <br>
                        <?php 
                        if ($model->pedido) {
                            if ($model->pedido->sucursalDelivery) {
                                echo $model->pedido->sucursalDelivery->nombrecompleto;
                            }
                        }
                        ?>
                    </td>
                    <td>
                        Hora: <br>
                        <?= $model->hora_despacho ?>
                    </td>
                    <td>
                        Estado:
                        <?php
                        if ($model->pedido) {
                            echo $model->pedido->strEstado;
                        }
                        ?>
                    </td>
                    <td>
                        P. delivery: <br>
                        <?php
                        if ($model->pedido) {
                            if ($model->pedido->precioDelivery) {
                                echo $model->pedido->precioDelivery->nombrePrecio;
                            }
                        }
                        ?>
                    </td>
                    <td>
                        T. pago: <br>
                        <?php
                        if ($model->pedido) {
                            echo $model->pedido->strTipoPago;
                        }
                        ?>
                    </td>
                    <td>
                        Total: <br>
                        <?php
                        if ($model->pedido) {
                            echo $model->pedido->totalPedido;
                        }
                        ?>
                    </td>
                </tr>
            </tbody>
        </table> -->
    

</div>


<!-- nombre producto
cantidad 
precio 
subtotal -->
