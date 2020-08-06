<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Nosotros */

$this->title = 'Nuevo Nosotros';
$this->params['breadcrumbs'][] = ['label' => 'Nosotros', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nosotros-create">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-centered">
            <div class="card">
                <div class="card-content">
                    <h4><?= Html::encode($this->title) ?></h4>
                    <?= $this->render('_form', [
                        'model' => $model,
                    ]) ?>
                </div>
            </div>
        </div>
    </div>
</div>
