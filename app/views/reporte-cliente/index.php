<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use kartik\mpdf\Pdf;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ClienteSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Reporte de clientes';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cliente-index">

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered">
            <div class="card card-stats">
                <div class="card-header hide-mobile" data-background-color="red">
                    <i class="material-icons">notes</i>
                </div>
                <div class="card-content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 text-left">
                            <h4>
                                <?= Html::encode($this->title) ?>
                            </h4>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-right pull-right">
                        </div>
                    </div>
                    <?=GridView::widget([
                        'id'=>'crud-datatable-pjax',
                        'dataProvider' => $clientes,
                        'layout'=>'
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    {summary}
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 text-right">
                                    <b>{export} </b>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                                {items}
                                {pager}
                        ',
                        'columns' => [
                            'telefono',
                            'razon_social',
                            'nit',
                            'zona',
                            'direccion',
                            'hasAcount',
                        ],
                        'pjax'=>true,
                        'bordered' => true,
                        'striped' => false,
                        'hover' => true,
                        'condensed' => false,
                        'responsive' => true,          
                        'responsiveWrap' => false,                 
                        'resizableColumns' => false,     
                        'showPageSummary' => false,
                        'export'=>[
                            'label'=>'Exportar como',
                            'options'=>[
                                'class' => 'btn btn-round btn-success',
                            ],
                        ],
                        'exportConfig' => [
                            GridView::EXCEL => [],
                            GridView::PDF => [
                                'filename' => 'clientes_'.date('YmdHis'),
                                'alertMsg' => 'Se exportara un archivo PDF para poder ser descargado',
                                'options' => ['title' => 'Reporte clientes'],
                                'config' => [
                                    // 'mode' => 'utf-8',
                                    'mode' => Pdf::MODE_CORE,
                                    'format' => 'Letter',
                                    'destination' => 'I',
                                    'marginTop' => 20,
                                    'marginBottom' => 20,
                                    'methods' => [
                                        'SetHeader' => [Yii::$app->name.' - '.date('Y-m-d-Hi')],
                                        'SetFooter' => ['{PAGENO}']
                                    ],
                                'options' => [
                                        'title' => 'PDF Document Title',
                                        'subject' => 'PDF Document Subject',
                                        'keywords' => 'krajee, grid, export, yii2-grid, pdf'
                                ],
                                    'contentBefore'=>'<div class="text-center"><h3>Reporte clientes</h3></div>',
                                ]
                            ],
                        ]         
                    ])?>
                </div>
            </div>
        </div>
    </div>
</div>
