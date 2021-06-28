<?php
use yii\helpers\Html;
use yii\helpers\Url;
?>

<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7 col-centered">
        <p>
            <b>PASO 1</b>
            Abrir el enlace Geojson y seleccionar la herramienta poligono. <br/>
            <a href="https://geojson.io/#map=12/-17.4262/-66.1641" target="blank">Geojson io</a>
            <img src="<?=Url::to('@web/images/paso1.png')?>" width="100%">
        </p>
        <p>
            <b>PASO 2</b>
            Dibujar el area para el precio delivery en el mapa, es importante cerrar el area. <br/>
            <img src="<?=Url::to('@web/images/paso2.png')?>" width="100%">
        </p>
        <p>
            <b>PASO 3</b>
            Copiar todos los valores de longitud y latitud al formulario una cordenada a la vez. <br/>
            <img src="<?=Url::to('@web/images/paso3.png')?>" width="100%">
        </p>
        <div class="form-group text-right">
            <?php if( $model) { ?>
                <?=Html::a('Volver', ['/preciodelivery/update', 'id'=>$model->id], ['class'=>'btn btn-success'])?>
            <?php } else{ ?>
                <?=Html::a('Volver', ['/preciodelivery/create'], ['class'=>'btn btn-success'])?>
            <?php } ?>
        </div>
    </div>
</div>
