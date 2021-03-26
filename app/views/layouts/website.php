<?php

/* @var $this \yii\web\View */
/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\WebSiteAsset;

WebSiteAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="RNOVA" />
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Favicon -->
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/images/favicon.ico" type="image/x-icon">
   <!-- FontsOnline -->
    <!-- <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Crimson+Text:400,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'> -->
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php
      $this->registerJsFile("@web/js/jquery-3.1.1.min.js", [
            'position'=> \yii\web\View::POS_HEAD,
      ]);
    ?>
    <?php $this->head() ?>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="90">
<?php $this->beginBody() ?>
  <!--PreLoader-->
  <div class="loader">
    <div class="loader-inner">
        <div class="loader-blocks">
          <span class="block-1"></span>
          <span class="block-2"></span>
          <span class="block-3"></span>
          <span class="block-4"></span>
          <span class="block-5"></span>
          <span class="block-6"></span>
          <span class="block-7"></span>
          <span class="block-8"></span>
          <span class="block-9"></span>
          <span class="block-10"></span>
          <span class="block-11"></span>
          <span class="block-12"></span>
          <span class="block-13"></span>
          <span class="block-14"></span>
          <span class="block-15"></span>
          <span class="block-16"></span>
        </div>
    </div>
  </div>
  <!--PreLoader Ends-->

  <?= $content ?>


  <!--Site Footer Here-->
  <footer id="site-footer" class="padding_half">
    <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 text-center">
           <img src="/images/logo-mail.png" alt="logo" class="footer-logo bottom45 wow fadeInUp" data-wow-delay="300ms" style="visibility: visible; animation-delay: 300ms; animation-name: fadeInUp;">
            <!-- <ul class="social-icons bottom25 wow fadeInUp" data-wow-delay="300ms">
                <li><a href="javascript:void(0)"><i class="fa fa-facebook"></i> </a> </li>
                <li><a href="javascript:void(0)"><i class="fa fa-instagram"></i> </a> </li>
              </ul> -->
            <p class="copyrights wow fadeInUp" data-wow-delay="350ms"> &copy; 2019 Calles Amarillas. </p>
         </div>
        </div>
    </div>
  </footer>
  <!--Footer ends-->  
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>

