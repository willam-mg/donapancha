<?php
   use yii\helpers\Url;
   use yii\helpers\Html;
   use kartik\form\ActiveForm;
   use app\widgets\Alert;
   use yii\widgets\Pjax;
   
   use dosamigos\google\maps\LatLng;
   use dosamigos\google\maps\services\DirectionsWayPoint;
   use dosamigos\google\maps\services\TravelMode;
   use dosamigos\google\maps\overlays\PolylineOptions;
   use dosamigos\google\maps\services\DirectionsRenderer;
   use dosamigos\google\maps\services\DirectionsService;
   use dosamigos\google\maps\overlays\InfoWindow;
   use dosamigos\google\maps\overlays\Marker;
   use dosamigos\google\maps\Map;
   use dosamigos\google\maps\services\DirectionsRequest;
   use dosamigos\google\maps\overlays\Polygon;
   use dosamigos\google\maps\layers\BicyclingLayer;
   /* @var $this yii\web\View */
   
   $this->title = 'Sistema Delivery';
?>
<div class="col-md-6">
  <div class="card card-stats">
    <div class="card-header card-header-success card-header-icon hide-mobile"  data-background-color="blue">
      <div class="card-icon">
        <i class="material-icons">public</i>
      </div>
      <p class="card-category">Online</p>
      <h3 class="card-title"><?php echo Yii::$app->userCounter->getOnline(); ?></h3>
    </div>
    <div class="card-footer">
      <div class="stats">
        <strong>Contador de visitantes (Sitio Web)</strong><br />
        Hoy: <?php echo Yii::$app->userCounter->getToday(); ?><br />
      Ayer: <?php echo Yii::$app->userCounter->getYesterday(); ?><br />
      total: <?php echo Yii::$app->userCounter->getTotal(); ?><br />
      Máximo de visitas: <?php echo Yii::$app->userCounter->getMaximal(); ?><br />
      Fecha para el máximo: <?php echo date('d.m.Y', Yii::$app->userCounter->getMaximalTime()); ?>
      </div>
    </div>
  </div>
</div>



