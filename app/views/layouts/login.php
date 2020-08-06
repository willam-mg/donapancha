<?php

/* @var $this \yii\web\View */
/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\LoginAsset;

LoginAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">

<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <title>
        <?= Html::encode($this->title) ?>
    </title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"> 
    <!-- favicon -->
    <?php $this->registerLinkTag(['rel' => 'shortcut icon', 'type' => 'image/x-icon', 'href' => Url::to('/images/icons/').'apple-icon-180x180.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'apple-touch-icon', 'sizes'=>'57x57', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'apple-icon-57x57.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'apple-touch-icon', 'sizes'=>'60x60', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'apple-icon-60x60.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'apple-touch-icon', 'sizes'=>'72x72', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'apple-icon-72x72.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'apple-touch-icon', 'sizes'=>'76x76', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'apple-icon-76x76.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'apple-touch-icon', 'sizes'=>'114x114', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'apple-icon-114x114.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'apple-touch-icon', 'sizes'=>'120x120', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'apple-icon-120x120.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'apple-touch-icon', 'sizes'=>'144x144', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'apple-icon-144x144.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'apple-touch-icon', 'sizes'=>'152x152', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'apple-icon-152x152.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'apple-touch-icon', 'sizes'=>'180x180', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'apple-icon-180x180.png']); ?>

    <?php $this->registerLinkTag(['rel' => 'icon', 'sizes'=>'192x192', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'android-icon-192x192.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'icon', 'sizes'=>'32x32', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'favicon-32x32.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'icon', 'sizes'=>'96x96', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'favicon-96x96.png']); ?>
    <?php $this->registerLinkTag(['rel' => 'icon', 'sizes'=>'16x16', 'type' => 'image/png', 'href' => Url::to('/images/icons/').'favicon-16x16.png']); ?>

    <?php $this->registerLinkTag(['rel' => 'manifest', 'href' => Url::to('/').'manifest.json']); ?>
    <?php $this->registerMetaTag([ 'name' => 'msapplication-TileColor', 'content' => '#eeeeee']); ?>
    <?php $this->registerMetaTag([ 'name' => 'msapplication-TileImage', 'content' => Url::to('/images/icons/').'ms-icon-144x144.png']); ?>
    <?php $this->registerMetaTag([ 'name' => 'theme-color', 'content' => '#eeeeee']); ?>

    <!-- full screen -->
    <?php $this->registerMetaTag([ 'name' => 'apple-mobile-web-app-capable', 'content' => 'yes']); ?>
    <?php $this->registerMetaTag([ 'name' => 'apple-mobile-web-app-status-bar-style', 'content' => 'black']); ?>
    <?php $this->registerMetaTag([ 'name' => 'mobile-web-app-capable', 'content' => 'yes']); ?>

    <!-- splash screen ios -->
    <?php $this->registerLinkTag(['href' => Url::to('/images/splashscreens/').'iphone5_splash.png', 'media' => '(device-width: 320px) and (device-height: 568px) and (-webkit-device-pixel-ratio: 2)', 'rel' => 'apple-touch-startup-image']); ?>
    <?php $this->registerLinkTag(['href' => Url::to('/images/splashscreens/').'iphone6_splash.png', 'media' => '(device-width: 375px) and (device-height: 667px) and (-webkit-device-pixel-ratio: 2)', 'rel' => 'apple-touch-startup-image']); ?>
    <?php $this->registerLinkTag(['href' => Url::to('/images/splashscreens/').'iphoneplus_splash.png', 'media' => '(device-width: 621px) and (device-height: 1104px) and (-webkit-device-pixel-ratio: 3)', 'rel' => 'apple-touch-startup-image']); ?>
    <?php $this->registerLinkTag(['href' => Url::to('/images/splashscreens/').'iphonex_splash.png', 'media' => '(device-width: 375px) and (device-height: 812px) and (-webkit-device-pixel-ratio: 3)', 'rel' => 'apple-touch-startup-image']); ?>
    <?php $this->registerLinkTag(['href' => Url::to('/images/splashscreens/').'iphonexr_splash.png', 'media' => '(device-width: 414px) and (device-height: 896px) and (-webkit-device-pixel-ratio: 2)', 'rel' => 'apple-touch-startup-image']); ?>
    <?php $this->registerLinkTag(['href' => Url::to('/images/splashscreens/').'iphonexsmax_splash.png', 'media' => '(device-width: 414px) and (device-height: 896px) and (-webkit-device-pixel-ratio: 3)', 'rel' => 'apple-touch-startup-image']); ?>
    <?php $this->registerLinkTag(['href' => Url::to('/images/splashscreens/').'ipad_splash.png', 'media' => '(device-width: 768px) and (device-height: 1024px) and (-webkit-device-pixel-ratio: 2)', 'rel' => 'apple-touch-startup-image']); ?>
    <?php $this->registerLinkTag(['href' => Url::to('/images/splashscreens/').'ipadpro1_splash.png', 'media' => '(device-width: 834px) and (device-height: 1112px) and (-webkit-device-pixel-ratio: 2)', 'rel' => 'apple-touch-startup-image']); ?>
    <?php $this->registerLinkTag(['href' => Url::to('/images/splashscreens/').'ipadpro3_splash.png', 'media' => '(device-width: 834px) and (device-height: 1194px) and (-webkit-device-pixel-ratio: 2)', 'rel' => 'apple-touch-startup-image']); ?>
    <?php $this->registerLinkTag(['href' => Url::to('/images/splashscreens/').'ipadpro2_splash.png', 'media' => '(device-width: 1024px) and (device-height: 1366px) and (-webkit-device-pixel-ratio: 2)', 'rel' => 'apple-touch-startup-image']); ?>

    <?= Html::csrfMetaTags() ?>
    
    <!-- <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" /> -->
    <?php $this->head() ?>
</head>

<body class="text-center">
    <?php $this->beginBody() ?>
    <nav class="navbar navbar-inverse navbar-fixed-top" style="border-bottom: none;background-color: transparent;">
        <div class="container-fluid">
            <div class="navbar-header hidden-xs">
                <!-- <a class="navbar-brand" href="<?=Url::to(['/administrador'])?>?>" style="color:white"><?=$this->title?></a> -->
            </div>
            <!-- <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Page 1</a></li>
                <li><a href="#">Page 2</a></li>
                <li><a href="#">Page 3</a></li>
            </ul> -->
            <ul class="nav navbar-nav navbar-right">
                <!-- <li>
                    <a href="<?=Url::to(['/site/index'])?>" style="color:white">
                        <span class="material-icons">web</span> Sitio web
                    </a>
                </li> -->
            </ul>
        </div>
    </nav>

    <div class="text-center navbar-fixed-top">
        <?= Alert::widget() ?>
    </div>
    <div class="wrapper">
        <?= $content ?>
    </div>

    

    <?php $this->endBody() ?>
</body>

</html>
<?php $this->endPage() ?>