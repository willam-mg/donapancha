<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Pedidodelivery */

$this->title = 'Nuevo Pedido';
$this->params['breadcrumbs'][] = ['label' => 'Lista de pedidos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pedidodelivery-create">
    <div class="row">
        <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-centered">
            <div class="card" style="margin-top:0">
                <div class="card-content">
                    <?= $this->render('_form', [
                        'model' => $model,
                        'productos' => $productos,
                        'clientes' => $clientes,
                        'reqProductos' => $reqProductos,
                        'reqCantidades' => $reqCantidades,
                        'cordenadas' => $cordenadas,

                    ]) ?>
                </div>
            </div>
        </div>
    </div>
</div>
