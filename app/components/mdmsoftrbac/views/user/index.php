<?php

use yii\helpers\Html;
use yii\grid\GridView;
use mdm\admin\components\Helper;
use app\models\User;

/* @var $this yii\web\View */
/* @var $searchModel mdm\admin\models\searchs\User */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title ='Usuarios';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered">
            <div class="card card-stats">
                <div class="card-header hide-mobile" data-background-color="red">
                    <i class="material-icons">person</i>
                </div>
                <div class="card-content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 text-left">
                            <h4>
                                <?= Html::encode($this->title) ?>
                            </h4>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-right pull-right">
                            <?= Html::a('<i class="material-icons">add</i> Crear usuario', ['user/signup'], ['class' => 'btn btn-round btn-success']) ?>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <?=GridView::widget([
                            'dataProvider' => $dataProvider,
                            // 'filterModel' => $searchModel,
                            // 'layout'=>'{errors}{items}{pager}',
                            'tableOptions'=>['class' => 'table'],
                            // 'showFooter'=>true,
                            'columns' => [
                                ['class' => 'yii\grid\SerialColumn'],
                                'rol',
                                'username',
                                'email:email',
                                'sucursal.nombre:text:Sucursal',
                                'created_at:date',
                                [
                                    'attribute' => 'status',
                                    'value' => function($model) {
                                        return $model->status == 0 ? 'Inactive' : 'Active';
                                    },
                                    'filter' => [
                                        0 => 'Inactive',
                                        10 => 'Active'
                                    ]
                                ],
                                [
                                    'class' => 'yii\grid\ActionColumn',
                                    'header'=>'Accion',
                                    // 'template' => Helper::filterActionColumn(['view', 'activate', 'update', 'delete']),
                                    'template' => '{view} {activate} {delete}',
                                    'buttons' => [
                                        'view' => function ($url, $model, $key) {
                                            return Html::a('<i class="material-icons">visibility</i>', $url, ['class'=>'btn btn-info btn-round btn-just-icon']);
                                        },
                                        'delete' => function ($url, $model, $key) {
                                            if ($model->username == User::ROLE_SUPER_USER){
                                                return '';
                                            }
                                            return Html::a('<i class="material-icons">delete</i>', $url, [
                                                'class'=>'btn btn-danger btn-round btn-just-icon', 
                                                'title'=>'Eliminar',
                                                'aria-label'=>'Eliminar',
                                                'data-confirm'=>'Esta seguro de eliminar este elemento?',
                                                'data-method'=>'post'
                                            ]);
                                        },
                                        'activate' => function($url, $model) {
                                            if ($model->status == 10) {
                                                return '';
                                            }
                                            $options = [
                                                'title' => Yii::t('rbac-admin', 'Activate'),
                                                'aria-label' => Yii::t('rbac-admin', 'Activate'),
                                                'data-confirm' => Yii::t('rbac-admin', 'Are you sure you want to activate this user?'),
                                                'data-method' => 'post',
                                                'data-pjax' => '0',
                                            ];
                                            return Html::a('<span class="glyphicon glyphicon-ok"></span>', $url, $options);
                                        }
                                    ]
                                ],
                            ],
                        ]);?>       
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
