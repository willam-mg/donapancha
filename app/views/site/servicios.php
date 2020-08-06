<?php
use yii\helpers\Url;
use yii\helpers\Html;
use kartik\form\ActiveForm;
use app\widgets\Alert;
use yii\widgets\Pjax;
use yii\bootstrap\BootstrapAsset;
use yii\bootstrap\BootstrapPluginAsset;
/* @var $this yii\web\View */

$this->title = 'Calles marillas';
?>

<!-- header -->
<header class="site-header">
   <nav class="navbar navbar-expand-lg fixed-top gradient_bg">
      <div class="container">
         <a class="navbar-brand" href="<?=Url::to('/')?>"> <img src="/images/logo-transparent2.png" alt="logo"> </a>
         <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#xenav">
            <span> </span>
            <span> </span>
            <span> </span>
         </button>
         <div class="collapse navbar-collapse" id="xenav">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item active">
                  <a class="nav-link" href="<?=Url::to(['/site/index#inicio'])?>">Inicio</a> 
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#nosotros'])?>">Sobre nosotros</a>
               </li>
               
               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#servicios'])?>">Servicios</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#portafolio'])?>">Portafolio</a>
               </li>
               
               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#clientes'])?>">Clientes</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#equipo'])?>">Equipo</a>
               </li>

               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#contacto'])?>">contacto</a>
               </li>
            </ul>
         </div>
      </div>

      <!--side menu open button-->
      <a href="javascript:void(0)" class="d-none d-lg-inline-block sidemenu_btn" id="sidemenu_toggle">
          <span></span> <span></span> <span></span>
       </a>
   </nav>

   <!-- side menu -->
   <div class="side-menu">
      <div class="inner-wrapper">
         <span class="btn-close" id="btn_sideNavClose"><i></i><i></i></span>
         <nav class="side-nav">
            <ul class="navbar-nav w-100">
               <li class="nav-item active">
                  <a class="nav-link" href="<?=Url::to(['/site/index#inicio'])?>">Inicio</a> 
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#nosotros'])?>">Sobre nosotros</a>
               </li>
               
               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#servicios'])?>">Servicios</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#portafolio'])?>">Portafolio</a>
               </li>
               
               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#clientes'])?>">Clientes</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#equipo'])?>">Equipo</a>
               </li>

               <li class="nav-item">
                  <a class="nav-link" href="<?=Url::to(['/site/index#contacto'])?>">contacto</a>
               </li>
            </ul>
         </nav>

         <ul class="social-icons-simple white top50 w-100">
            <li><a href="javascript:void(0)"><i class="fa fa-facebook"></i> </a> </li>
            <li><a href="javascript:void(0)"><i class="fa fa-instagram"></i> </a> </li>
         </ul>
         <p class="whitecolor">&copy; 2019 Calles Amarillas.</p>
      </div>
   </div>
   <a id="close_side_menu" href="javascript:void(0);"></a>
   <!-- End side menu -->
</header>
<!-- header -->





<!-- section empresa -->  
<?php foreach ($servicios as $key => $servicio) { ?>
   <?php 
      $fade = 'fadeInRight';
      if ($key%2 == 0){
         $fade = 'fadeInLeft';
      }
      $fadeRight = 'fadeInLeft';
      if ($key%2 == 0){
         $fadeRight = 'fadeInRight';
      }
   ?>
   <section id="servicios" class="padding single-feature">
      <div class="container">
         <div class="row">
            <div class="col-md-6 col-sm-7 text-md-left text-center wow <?=$fade?>" data-wow-delay="300ms">
               <div class="heading-title heading_space">
                  <h2 class="darkcolor bottom30" style="color: #74a855"><?=$servicio->nombre?></h2>
               </div>
               <p style="color: #50644f" align="justify"><?=$servicio->descripcion?></p>
               <?php if (count($servicio->parrafos) > 0) { ?>
                  <?php foreach ($servicio->parrafos as $key => $parrafo) { ?>
                     <p>
                        <b>
                           <?=$parrafo->subtitulo?>
                        </b> <br>
                        <?=$parrafo->parrafo?>
                     </p>
                  <?php } ?>
               <?php } ?>
            </div>
            <div class="col-md-6 col-sm-5 wow <?=$fadeRight?>" data-wow-delay="350ms">
               <div class="profile-authors heading_space">
                  <?php if ( count($servicio->fotos) > 0 ) { ?>
                        <div id="myCarousel<?=$servicio->id?>" class="carousel slide" data-ride="carousel">
                           <!-- Indicators -->
                           <ol class="carousel-indicators">
                              <?php foreach ($servicio->fotos as $key2 => $foto) { ?>
                                    <li data-target="#myCarousel<?=$servicio->id?>" data-slide-to="<?=$key2?>" class="<?=$key2==0?'active':''?>"></li>
                              <?php } ?>
                           </ol>

                           <!-- Wrapper for slides -->
                           <div class="carousel-inner">
                              <?php foreach ($servicio->fotos as $key2 => $foto) { ?>
                                    <div class="<?=$key2==0?'item active':'item'?>">
                                       <img src="<?=Url::to('@web/uploads'.\app\models\FotosServicio::PATH.$foto->foto)?>" alt="Los Angeles">
                                    </div>
                              <?php } ?>
                           </div>

                           <!-- Left and right controls -->
                           <a class="left carousel-control" href="#myCarousel<?=$servicio->id?>" data-slide="prev">
                              <span class="glyphicon glyphicon-chevron-left"></span>
                              <span class="sr-only">Previous</span>
                           </a>
                           <a class="right carousel-control" href="#myCarousel<?=$servicio->id?>" data-slide="next">
                              <span class="glyphicon glyphicon-chevron-right"></span>
                              <span class="sr-only">Next</span>
                           </a>
                        </div>
                  <?php }else{ ?>
                        <h3 class="text-center">No tiene fotos</h3>
                  <?php } ?>
               </div>
            </div>
         </div>
      </div>
   </section>
<?php } ?>
<!-- section empresa --> 

   


    
<?php
   BootstrapAsset::register($this);
   BootstrapPluginAsset::register($this);
?>