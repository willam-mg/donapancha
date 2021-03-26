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
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">

    <?= Html::csrfMetaTags() ?>
    <?php $this->head() ?>
</head>

<body class="text-center">
    <?php $this->beginBody() ?>
    <nav class="navbar navbar-inverse navbar-fixed-top" style="border-bottom: none;background-color: transparent;">
        <div class="container-fluid">
            <div class="navbar-header hidden-xs">
            </div>
            <ul class="nav navbar-nav navbar-right">
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