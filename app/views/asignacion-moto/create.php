<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\AsignacionMoto */

$this->title = 'Nuevo Asignacion Moto';
$this->params['breadcrumbs'][] = ['label' => 'Asignacion Motos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="asignacion-moto-create">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-centered">
            <div class="card">
                <div class="card-content">
                    <h4><?= Html::encode($this->title) ?></h4>
                    <?= $this->render('_form', [
                        'model' => $model,
                        'pedidos' => $pedidos,
                        'motos' => $motos,
                    ]) ?>
                </div>
            </div>
        </div>
    </div>
</div>
