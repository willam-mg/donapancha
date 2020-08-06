<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use app\models\Sucursaldelivery;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \mdm\admin\models\form\Signup */

$this->title = Yii::t('rbac-admin', 'Nuevo usuario');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-signup">
    <?= Html::errorSummary($model)?>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 col-centered">
            <div class="card">
                <div class="card-content">
                    <h4><?= Html::encode($this->title) ?></h4>
                    <hr>
                    <?php $form = ActiveForm::begin([
                        'id' => 'form-signup',
                        'options'=>[
                            'class' => 'disable-submit-buttons',
                        ] 
                    ]); ?>
                        <?= $form->field($model, 'username')->textInput(['autocomplete'=>'off']) ?>
                        <?= $form->field($model, 'email')->textInput(['autocomplete'=>'off']) ?>
                        <?= $form->field($model, 'rol')->label('Rol')->widget(Select2::classname(), [
                            'data' => \app\models\User::rolesExistentes(),
                                'options' => ['placeholder' => 'Seleccione un rol'],
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                                'pluginEvents' => [
                                    "change" => "function() { verificarRol(); }",
                                ] 
                            ]
                        )?>
                        <div id="show_sucursal" style="<?=$model->rol == \app\models\User::ROLE_SUCURSAL?'display:block':'display:none'?>">
                            <?= $form->field($model, 'sucursal_id')->label('Sucursal')->widget(Select2::classname(), [
                                'data' => ArrayHelper::map(Sucursaldelivery::find()->all(), 'id', 'nombre'),
                                    'options' => [
                                        'placeholder' => 'Seleccione una sucursal',
                                        'style'=>'display:none'
                                    ],
                                    'pluginOptions' => [
                                        'allowClear' => true
                                    ],
                                ]
                            )?>
                        </div>
                        <?= $form->field($model, 'password')->passwordInput() ?>
                        <div class="form-group text-right">
                            <?=Html::a('<i class="material-icons">clear</i> Cerrar', ['/admin/user/index'], ['class'=>'btn btn-round btn-default'])?>
                            <?= Html::submitButton(Yii::t('rbac-admin', '<i class="material-icons">add</i> Registrar'), ['class' => 'btn btn-success btn-round', 'name' => 'signup-button']) ?>
                        </div>
                    <?php ActiveForm::end(); ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $this->registerJsFile('/js/user/signup.js', [yii\web\JqueryAsset::className()]); ?> 
