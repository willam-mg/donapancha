<?php 
   use yii\helpers\Html;
   use yii\helpers\Url;
   ?>
<div class="container">
   <div class="row">
      <div class="col-md-8 offset-md-2 col-sm-12 text-center">
         <div class="heading-title">
            <!-- <span>Servicios</span> -->
          
            </br>
            <h2 class="darkcolor bottom10" style="color: #74a855">Ubicación de espacios</h2>
            <!-- <p class="heading_space">Curabitur mollis bibendum luctus. Duis suscipit vitae dui sed suscipit. Vestibulum auctor nunc vitae diam eleifend, in maximus metus sollicitudin. Quisque vitae sodales lectus. Nam porttitor justo sed mi finibus, vel tristique risus faucibus. </p> -->
            </br>
            <div id="" class="cbp-l-filters dark bottom30">
               <?php foreach ($zonas as $key => $zona) { ?>
                  <!-- <div data-filter="" class="cbp-filter-item"> -->
                  
                  <?php $activeClass= $id==$zona['id']?'background-color:#73a950;color:white':'';?> 
                  <?=Html::a('<span style="'.$activeClass.'" >'.$zona['nombre'].'</span>', ['/zona/'.$zona['id'].'#espacios'], [
                     'class'=>'cbp-filter-item',
                     // 'data-pjax' => 1,
                     ])?>
               <?php } ?>
            </div>
         </div>
      </div>
   </div>
</div>
</br>