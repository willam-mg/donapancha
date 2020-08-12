<?php

/* @var $this \yii\web\View */
/* @var $content string */

use lavrentiev\widgets\toastr\NotificationFlash;
use app\widgets\Menu;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use app\widgets\Breadcrumbs;
use app\assets\AppAsset;
use app\assets\MaterialAsset;
use yii\helpers\Url;
// para ese modal que esta registrando un externo a seminario
use yii\bootstrap\Modal;
use yii\helpers\ArrayHelper;
use kartik\form\ActiveForm;
use kartik\select2\Select2;
use app\models\Seminario;
use app\models\AsistenciaSeminario;
use yii\web\AssetBundle;
use kartik\dialog\Dialog;

MaterialAsset::register($this);
// AppAsset::register($this);

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">

<head><meta charset="gb18030">
    <!--charset ?>">-->
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

<body>
    <?php $this->beginBody() ?>
    <script>const pathRoot = '<?= Url::to(["/"]) ?>';</script>

    <!-- Loading - este loding termina en material-dashboard.js -->
    <div id="loading" style="display:block">
        <div class="loading">
            <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
        </div>
    </div>


    <div class="wrapper">
        <input type="hidden" id="path" value="<?=Yii::getAlias('@imageUrl').'/'?>">




        

            
            <div class="container">
                <?=Dialog::widget([
                    'libName' => 'krajeeDialogCust',
                    'options' => [
                    'closable' => true,
                    ], 
                ])?>
                
                <?= NotificationFlash::widget([
                    'options' =>[
                        "closeButton" => true,
                        "timeOut" => "10000",
                        "extendedTimeOut" => "10000",
                        "tapToDismiss"=> false,
                    ]
                ]) ?>
                <?= $content ?>
            </div>

            <footer class="footer hidden-print">
                <div class="container-fluid">
                    <p class="pull-left">&copy; <?=Yii::$app->name?>
                        <?= date('Y') ?>
                    </p>

                    <p class="pull-right">
                        
                    </p>
                </div>
            </footer>
    </div>








    <!-- Modal de generico del widget modal -->
    <?php Modal::begin([
        "id"=>"ajaxCrudModal",
        "footer"=>"",// always need it for jquery plugin
        // "size"=>"modal-lg"
    ])?>
    <?php Modal::end(); ?>

    
    <?php $this->endBody() ?>

</body>

</html>
<?php $this->endPage() ?>