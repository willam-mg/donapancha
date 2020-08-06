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
        <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-centered">
            <div class="card">
                <div class="card-content">
                    <!-- <h4><?= Html::encode($this->title) ?></h4> -->
                    <h2>Nuevo Pedido</h2>
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
