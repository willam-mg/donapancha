<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use app\assets\PrecioAsset;
/* @var $this yii\web\View */
/* @var $model app\models\Pedidodelivery */
/* @var $form yii\widgets\ActiveForm */
PrecioAsset::register($this);

/* @var $this yii\web\View */
/* @var $model app\models\Preciodelivery */

$this->title = 'Preciodeliveries ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Preciodeliveries', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<input type="hidden" id="model_id" value="<?=$model->id?>">
<div class="preciodelivery-view">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-centered">
            <div class="card">
                <div class="card-content">
                    <h4><?= Html::encode($this->title) ?></h4>
                    <hr>

                    <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            'nombre',
                            'descripcion',
                            'precio',
                            'estado',
                        ],
                    ]) ?>

                    <div id="map"></div>

                     <div class="form-group text-right">
                        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], ['class' => 'btn btn-simple', 'title'=>'Cerrar',]) ?>
                        <?= Html::a( "<i class='material-icons'>edit</i> ".'Modificar', ['update', 'id' => $model->id], ['class' => 'btn btn-round btn-warning', 'title'=>'Modificar',]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<?php 
// $this->registerJsFile('/js/preciodelivery/view.js', [
//     'depends' => [\yii\web\JqueryAsset::className()],
// ]); 
?> 