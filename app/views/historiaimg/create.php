<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Historiaimg */

$this->title = 'Nueva Imagen';
$this->params['breadcrumbs'][] = ['label' => 'Historiaimgs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="historiaimg-create">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 col-centered">
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
