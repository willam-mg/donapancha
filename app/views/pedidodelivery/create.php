<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Pedidodelivery */

$this->title = 'Nuevo Pedidodelivery';
$this->params['breadcrumbs'][] = ['label' => 'Pedidodeliveries', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pedidodelivery-create">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered">
            <div class="card">
                <div class="card-content">
                    <?= $this->render('_form', [
                        'model' => $model,
                        'productos' => $productos,
                        'clientes' => $clientes,
                        'reqProductos' => $reqProductos,
                        'reqCantidades' => $reqCantidades,
                    ]) ?>
                </div>
            </div>
        </div>
    </div>
</div>
