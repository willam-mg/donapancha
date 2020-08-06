<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Historiaimg */

$this->title = 'Historia Imagen ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Historiaimgs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="historiaimg-view">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 col-centered">
            <div class="card">
                <div class="card-content">
                    <h4><?= Html::encode($this->title) ?></h4>
                    <hr>

                <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            'descripcion',
                            [
                                'attribute' => 'foto',
                                'value' => Yii::getAlias('@historiaimgImgUrl') . '/' . $model->foto,
                                'format' => ['image', ['width' => '200', 'height'=>'200']],
                                'styles' => 'text-center'
                            ],
                        ],
                    ]) ?>

                     <div class="form-group text-right">
                        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], ['class' => 'btn btn-default', 'title'=>'Cerrar',]) ?>
                        <?= Html::a( "<i class='material-icons'>edit</i> ".'Modificar', ['update', 'id' => $model->id], ['class' => 'btn btn-warning', 'title'=>'Modificar',]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
