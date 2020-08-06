<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Producto */

$this->title = 'Productos ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Productos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="producto-view">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-centered">
            <div class="card">
                <div class="card-content">
                    <h4><?= Html::encode($this->title) ?></h4>
                    <hr>

                    <div class="imagen-profile" style="height:auto;">
                        <?php if( $model->foto != "" ){ ?>
                            <a href="<?=Url::to('@web/uploads'.\app\models\Producto::PATH.$model->foto)?>" target="_blank" title="Ver en otra pestaña">
                                <?= Html::img('@web/uploads'.\app\models\Producto::PATH.$model->foto, ['alt' => 'Fotografia']) ?>
                            </a>
                        <?php }else{ ?>
                            <?= Html::img('@web/images/no-image.jpg') ?>
                        <?php } ?>
                    </div>

                    <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            'producto',
                            'detalle',
                            'costo',
                            'estado',
                            'categoria_producto_id',
                        ],
                    ]) ?>

                     <div class="form-group text-right">
                        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], ['class' => 'btn btn-round btn-simple', 'title'=>'Cerrar',]) ?>
                        <?= Html::a( "<i class='material-icons'>edit</i> ".'Modificar', ['update', 'id' => $model->id], ['class' => 'btn btn-round btn-warning', 'title'=>'Modificar',]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
