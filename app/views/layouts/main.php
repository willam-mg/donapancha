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

        <div class="sidebar hidden-print" data-color="green" data-image="<?=Url::to(['@web/images/sidebar.jpg'])?>">
            <div class="logo text-center">
                <?= Html::a(Html::img('@web/images/logo-sidebar.png', ['alt' => 'logo', 'width'=>'230px', 'height'=>'117px']).'', ['/site'], ['class' => 'simple-text']) ?>
            </div>

            <div class="sidebar-wrapper">
                <?php 
                    $route = $this->context->route;
                    $menu = [];
                    $rol = Yii::$app->user->identity->rol;

                    if ($rol == \app\models\User::ROLE_ADMINISTRADOR || $rol == \app\models\User::ROLE_SUPER_USER) {
	                    array_push($menu, [
	                        'icon'=>'view_quilt', 'label' => ' Dashboard', 'url' => ['/site'], 'color'=>'text-default'
                        ]);
                        // array_push($menu, [
	                    //     'dropdownicon'=>'face', 'icon'=>'face', 'label' => 'Sistema', 'url' => ['#'], 'color'=>'text-default',
	                    //     'items'=>[
	                    //         // ['icon'=>'directions', 'label' => 'Permisos', 'url' => ['/admin/route'] , 'color'=>'text-default'],
	                    //         // ['icon'=>'person_pin', 'label' => 'Roles', 'url' => ['/admin/role'] , 'color'=>'text-default'],
	                    //         ['icon'=>'group', 'label' => 'Usuarios', 'url' => ['/admin/user'] , 'color'=>'text-default'],
	                    //         // ['icon'=>'verified_user', 'label' => 'Asignación', 'url' => ['/admin/assignment'] , 'color'=>'text-default'],
	                    //         // ['icon'=>'cloud_download', 'label' => 'Backups', 'url' => ['/db-manager'] , 'color'=>'text-default'],
	                    //         // ['icon'=>'pets', 'label' => 'Historial', 'url' => ['/trailslog'] , 'color'=>'text-default'],
	                    //     ], 
                        // ]);
                        array_push($menu, [
	                        'icon'=>'person', 'label' => 'Usuarios', 'url' => ['/admin/user'] , 'color'=>'text-default',
	                    ]); 

	                    array_push($menu, [
	                        'dropdownicon'=>'web', 'icon'=>'settings_applications', 'label' => 'Configuración', 'url' => ['#'], 'color'=>'text-default',
	                        'items'=>[
	                            ['icon'=>'format_list_numbered', 'label' => ' Categoria de productos', 'url' => ['/categoriaproducto'], 'color'=>'text-default'],
	                            ['icon'=>'fastfood', 'label' => ' Productos', 'url' => ['/producto'], 'color'=>'text-default'],
	                            // ['icon'=>'transfer_within_a_station', 'label' => ' Tipo de pedidos', 'url' => ['/tipopedido'], 'color'=>'text-default'],
	                            ['icon'=>'access_time', 'label' => 'Horario', 'url' => ['/horario/update', 'id'=>1], 'color'=>'text-default'],
	                            ['icon'=>'view_carousel', 'label' => 'Slider Web', 'url' => ['/slider'], 'color'=>'text-default'],
	                            ['icon'=>'store_mall_directory', 'label' => ' Sucursales', 'url' => ['/sucursaldelivery'], 'color'=>'text-default'],
	                           ['icon'=>'two_wheeler', 'label' => 'Delivery precios', 'url' => ['/preciodelivery'], 'color'=>'text-default'],
	                        ], 
                        ]);
                        
                        array_push($menu, [
	                        'dropdownicon'=>'notes', 'icon'=>'notes', 'label' => 'Reportes', 'url' => ['#'], 'color'=>'text-default',
	                        'items'=>[
	                            ['icon'=>'notes', 'label' => 'Clientes', 'url' => ['/reporte-cliente'] , 'color'=>'text-default'],
	                            ['icon'=>'notes', 'label' => 'Pedidos en espera', 'url' => ['/reporte-espera'] , 'color'=>'text-default'],
	                            ['icon'=>'notes', 'label' => 'Pedidos asignados', 'url' => ['/reporte-asignados'] , 'color'=>'text-default'],
	                            ['icon'=>'notes', 'label' => 'Pedidos entregados', 'url' => ['/reporte-entregados'] , 'color'=>'text-default'],
	                        ], 
                        ]);

                        array_push($menu, [
	                        'icon'=>'group', 'label' => 'Clientes', 'url' => ['/cliente'], 'color'=>'text-default'
	                    ]);    
                        
                        array_push($menu, [
                            'icon'=>'two_wheeler', 'label' => 'Motos', 'url' => ['/moto'], 'color'=>'text-default'
                        ]);    
	                        
	                    array_push($menu, [
	                        'icon'=>'person_pin_circle', 'label' => 'Lista de Pedidos', 'url' => ['/pedidodelivery'], 'color'=>'text-default'
                        ]);    

                        
                        
                    }

                    if ($rol == \app\models\User::ROLE_CALL_CENTER) {
                        array_push($menu, [
	                        'icon'=>'group', 'label' => 'Clientes', 'url' => ['/cliente'], 'color'=>'text-default'
	                    ]);    
                        
                        array_push($menu, [
	                        'icon'=>'rate_review', 'label' => 'Nuevo Pedido', 'url' => ['/pedidodelivery/create'], 'color'=>'text-default'
	                    ]);    

	                    array_push($menu, [
	                        'icon'=>'person_pin_circle', 'label' => 'Lista de Pedidos', 'url' => ['/pedidodelivery'], 'color'=>'text-default'
	                    ]); 
                    }

                    if ($rol == \app\models\User::ROLE_SUCURSAL) {
                        array_push($menu, [
                            'icon'=>'two_wheeler', 'label' => 'Motos', 'url' => ['/moto'], 'color'=>'text-default'
                        ]); 
	                    array_push($menu, [
	                        'icon'=>'person_pin_circle', 'label' => 'Lista de Pedidos', 'url' => ['/pedidodelivery'], 'color'=>'text-default'
	                    ]); 
                    }
                ?>

                <?=Menu::widget([
                    'items' => $menu,
                    'options' =>['class' => 'nav']
                ])?>
            </div>
        </div>



        <div class="main-panel">
            <nav class="navbar navbar-transparent navbar-absolute hidden-print">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <!-- <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12"> -->
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 hidden-md hidden-lg hidden-xl">
                                            <button type="button" class="navbar-toggle" data-toggle="collapse">
                                                <span class="sr-only">Toggle navigation</span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </button>
                                            <label class="text-capitalize">
                                                <b>
                                                    <?=Yii::$app->name?>
                                                </b>
                                            </label>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 xl-12 padding-cero hidden-xs hidden-sm">
                                            <h4 class="text-uppercase">
                                                <b>
                                                    <?=isset($this->title)?Html::encode($this->title):''?>
                                                </b>
                                            </h4>
                                        </div>
                                    </div>
                                </div>
                            <!-- </div>
                        </div> -->
                    </div>
                    <div class="collapse navbar-collapse">
                        <?= Nav::widget([
                            'options' => ['class' => 'nav navbar-nav navbar-right'],
                            'items' => [
                                [
                                    'label' => '<i class="material-icons">person</i> '.Yii::$app->user->identity->username,
                                    'encode'=>false,
                                    'items' => [
                                        [
                                            'label' => '<i class="material-icons">lock</i> Cambiar contraseña', 
                                            'encode'=>false, 
                                            'url' => ['/admin/user/change-password', 'id'=>Yii::$app->user->identity->id], 
                                        ],
                                        [
                                            'label' => '<i class="material-icons">exit_to_app</i> Salir', 
                                            'encode'=>false, 
                                            'url' => ['/admin/user/logout'], 
                                            'linkOptions'=>['data-method'=>'post'], 
                                        ],
                                    ],
                                    'options'=>['class'=>'hidden-xs'], 
                                ],
                                [
                                    'label' => '<i class="material-icons">exit_to_app</i> Salir', 
                                    'encode'=>false, 
                                    'url' => ['/admin/user/logout'], 
                                    'linkOptions'=>['class'=>'visible-xs-* hidden-sm hidden-md hidden-lg', 'data-method'=>'post'], 
                                ],
                            ],
                        ])?>
                    </div>
                </div>
            </nav>

            <div class="content">
                <div class="container-fluid">
                    <?=Dialog::widget([
                        'libName' => 'krajeeDialogCust',
                        'options' => [
                        'closable' => true,
                        ], 
                    ])?>
                    <div class="hide-mobile">
                        <?= Breadcrumbs::widget([
                            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
                            'options'=>['class'=>'breadcrumb hidden-print']
                        ]) ?>
                    </div>
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