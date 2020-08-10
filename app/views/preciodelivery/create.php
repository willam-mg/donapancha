<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Preciodelivery */

$this->title = 'Nuevo Preciodelivery';
$this->params['breadcrumbs'][] = ['label' => 'Preciodeliveries', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="preciodelivery-create">
    <div class="row">
        <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7 col-centered">
            <div class="card">
                <div class="card-content">
                    <h4><?= Html::encode($this->title) ?></h4>
                    <?= $this->render('_form', [
                        'model' => $model,
                        'lngs' => $lngs,
                        'lats' => $lats,
                    ]) ?>
                </div>
            </div>
        </div>
    </div>
</div>
