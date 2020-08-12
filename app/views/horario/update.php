<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Horario */

$this->title = 'Configurar horario';
// $this->params['breadcrumbs'][] = ['label' => 'Horarios', 'url' => ['index']];
// $this->params['breadcrumbs'][] = ['label' => 'Horarios '.$model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="horario-update">
    <div class="row">
        <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 col-centered">
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
