<?php

use yii\helpers\Html;
use yii\helpers\Url;
use kartik\form\ActiveForm;
use kartik\file\FileInput;
use kartik\switchinput\SwitchInput;
use kartik\date\DatePicker;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use app\models\Sucursaldelivery;

/* @var $this yii\web\View */
/* @var $model app\models\Preciodelivery */
/* @var $form yii\widgets\ActiveForm */
?>
<input type="hidden" id="base-ruta" value="<?=Url::to('@web/images/')?>">
<div class="preciodelivery-form">

    <?php $form = ActiveForm::begin([
        'options'=>[
            'class' => 'disable-submit-buttons',
        ] 
    ]); ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'descripcion')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'precio')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'estado')->dropDownList([ 'Activo' => 'Activo', 'Inactivo' => 'Inactivo', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'sucursal_id')->widget(Select2::classname(), [
        'data' => ArrayHelper::map(Sucursaldelivery::find()->andFilterWhere(['<>', 'id', 1])->all(), 'id', 'nombre'),
            'options' => ['placeholder' => 'Seleccione una sucursal'],
            'pluginOptions' => [
                'allowClear' => true
            ],
        ]
    )?>

    
    <div class="panel panel-default">
        <div class="panel-heading">
            <table style="width:100%">
                <tbody>
                    <tr>
                        <td>
                            CORDENADAS
                        </td>
                        <td class="text-right">
                            <a href="<?=Url::to(['help', 'id'=>$model->id])?>"  class="btn btn-round btn-just-icon btn-info" title="Auda">
                                <i class="material-icons">help</i>
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="form-group">
                        <label for="longitude">Longitud</label>
                        <input type="text" class="form-control" id="lng" autocomplete="off">
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="form-group">
                        <label for="latitude">Latitud</label>
                        <input type="text" class="form-control" id="lat" autocomplete="off">
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <a href="#" class="btn btn-round btn-white" onClick="addCord()">
                        <i class="material-icons">add</i>
                        Agregar
                    </a>
                </div>
            </div>
            
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <table class="table table-lg" id="table_cords">
                        <thead>
                            <tr>
                                <th>Longitude</th>
                                <th>Latitude</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($lngs as $index => $lng) { ?>
                                <tr>
                                    <td>
                                        <input type="hidden" name="lngs[]" value="<?=$lng?>">
                                        <?=$lng?>
                                    </td>
                                    <td>
                                        <input type="hidden" name="lats[]" value="<?=$lats[$index]?>">
                                        <?=$lats[$index]?>
                                    </td>
                                    <td>
                                        <a href="#" class="text-danger" onclick="eliminar(this)">
                                            <i class="material-icons">delete</i>
                                        </a>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

            
            

    <div class="form-group text-right">
        <?= Html::a( "<i class='material-icons'>clear</i> ".'Cerrar', ['index'], [
            'class' => 'btn btn-simple',
            'title'=>'Cerrar',
        ]) ?>
        <?= Html::submitButton( "<i class='material-icons'>save</i> ".'Guardar', ['class' => $model->isNewRecord?'btn btn-round btn-success':'btn btn-round btn-warning']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>




<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>



<?php $this->registerJsFile('/js/preciodelivery/_form.js', [
    'depends' => [\yii\web\JqueryAsset::className()],
]); ?> 