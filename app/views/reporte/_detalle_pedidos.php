<?php

use kartik\grid\GridView;
use yii\helpers\Html;

?>
<div class="table-responsive">
    <table class="table table-sm">
        <thead>
            <tr>
                <th>Producto</th>
                <th>Precio</th>
                <th>cantidad</th>
                <th>Subtotal</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($model->detalle as $key => $detalle) { ?>
                <tr>
                    <td><?= $detalle->producto? $detalle->producto->producto:'' ?></td>
                    <td><?= $detalle->producto? $detalle->producto->costo:'' ?> Bs.</td>
                    <td><?= $detalle->cantidad ?></td>
                    <td><?= $detalle->subtotal ?> Bs.</td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>