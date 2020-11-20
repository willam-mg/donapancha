<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \mdm\admin\models\form\Login */

$this->title = 'Administrador';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="form-signin">
    <div class="card">
        <!-- <div class="card-header text-uppercase" data-background-color="green">
            
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                    <i class="material-icons"></i>
                </div>
            </div>
            
        </div> -->
        <div class="card-content">
            <div style="padding-bottom: 50px;">
                <?= Html::img('@web/images/logo-03.png', ['alt' => 'Trans Copacabana', 'width'=>'200px', 'height'=>'123px']) ?>
            </div>
            

            <?php $form = ActiveForm::begin([
                'id' => 'login-form', 
                'class'=>'form-signin',
                'options'=>[
                    'class' => 'disable-submit-buttons',
                ] 
            ]); ?>
            <?= $form->field($model, 'username')->textInput(['placeholder'=>'Nombre de usuario', 'autocomplete'=>'off', 'autofocus'=>true])->label(false) ?>
            <?= $form->field($model, 'password')->passwordInput(['placeholder'=>'Contraseña'])->label(false) ?>
            <?php 
                // $form->field($model, 'rememberMe')->checkbox(['labelOptions'=>['style'=>'color:white;']])->label('Recordarme') 
            ?>    
            
            
            <div class="form-group">
                <?= Html::submitButton(Yii::t('rbac-admin', '<i class="material-icons">input</i> Ingresar'), ['class' => 'btn btn-success', 'name' => 'login-button']) ?>
            </div>
            <p style="color:#999">
                
            </p>
            <?php ActiveForm::end(); ?>

        </div>
    </div>
</div>