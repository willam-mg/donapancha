<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\AsignacionMoto */

$this->title = 'Asignacion Motos ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Asignacion Motos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="asignacion-moto-view">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 col-centered">
            <div class="card">
                <div class="card-content">
                    <h4><?= Html::encode($this->title) ?></h4>
                    <hr>

                    <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            'moto.nombre:text:Moto',
                            'pedido.nombrecompleto:text:Pedido',
                            // 'fecha',
                            // 'hora',
                            'fecha_despacho',
                            'hora_despacho',
                            'fecha_entrega',
                            'hora_entrega',
                        ],
                    ]) ?>

                     <div class="form-group text-right">
                        <?php if($model->pedido_id){ ?>
                            <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['/pedidodelivery/view', 'id'=>$model->pedido_id], [
                                'class' => 'btn btn-simple',
                                'title'=>'Cerrar',
                            ]) ?>
                        <?php }else{ ?>
                            <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['/pedidodelivery/index'], [
                                'class' => 'btn btn-simple',
                                'title'=>'Cerrar',
                            ]) ?>
                        <?php } ?>
                        <?= Html::a( "<i class='material-icons'>edit</i> ".'Modificar', ['update', 'id' => $model->id], ['class' => 'btn btn-warning', 'title'=>'Modificar',]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
