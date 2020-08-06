<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model mdm\admin\models\AuthItem */
/* @var $context mdm\admin\components\ItemController */

$context = $this->context;
$labels = $context->labels();
$this->title = 'Modificar rol '.$model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('rbac-admin', $labels['Items']), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->name]];
$this->params['breadcrumbs'][] = Yii::t('rbac-admin', 'Update');
?>
<div class="auth-item-update">
    
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-centered">
            <div class="card">
                <div class="card-content">
                    <h4 class="text-uppercase"><?= Html::encode($this->title) ?></h4>
                    <hr>
                    <?=
                    $this->render('_form', [
                        'model' => $model,
                    ]);
                    ?>
                </div>
            </div>
            
        </div>
    </div>
    

</div>
