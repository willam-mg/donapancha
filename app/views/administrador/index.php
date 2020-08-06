<?php
use yii\helpers\Url;
use yii\helpers\Html;
/* @var $this yii\web\View */

$this->title = 'Administrador';
?>


<div class="col-md-6">
  <div class="card card-stats">
    <div class="card-header card-header-success card-header-icon"  data-background-color="blue">
      <div class="card-icon">
        <i class="material-icons">public</i>
      </div>
      <p class="card-category">Online</p>
      <h3 class="card-title"><?php echo Yii::$app->userCounter->getOnline(); ?></h3>
    </div>
    <div class="card-footer">
      <div class="stats">
        Hoy: <?php echo Yii::$app->userCounter->getToday(); ?><br />
		Ayer: <?php echo Yii::$app->userCounter->getYesterday(); ?><br />
		total: <?php echo Yii::$app->userCounter->getTotal(); ?><br />
		Máximo de visitas: <?php echo Yii::$app->userCounter->getMaximal(); ?><br />
		Fecha para el máximo: <?php echo date('d.m.Y', Yii::$app->userCounter->getMaximalTime()); ?>
      </div>
    </div>
  </div>
</div>