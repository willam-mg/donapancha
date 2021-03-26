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
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    
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