<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class MaterialAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    
    public $css = [
        //css costomizado minificado __________
        'css/site.min.css',
        //css del template creative team minificado __________
        'css/material-dashboard.min.css',
        'css/iconfont/material-icons.css',
        // 'https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons'
    ];
    
    public $js = [
        //js template  creative team _____________
        YII_ENV_DEV ? 'js/material.min.js' : 'js/material.min.js',
        //lireria para graficos __________
        // 'js/plugins/chartist/chartist.min.js',
        //js template  creative team _____________
        YII_ENV_DEV ? 'js/bootstrap-notify.js' : 'js/bootstrap-notify.min.js',
        YII_ENV_DEV ? 'js/material-dashboard.js' : 'js/material-dashboard.min.js',
        // YII_ENV_DEV ? 'js/superfish.js' : 'js/superfish.min.js',
        //disable button affter send form ___________________
        'js/plugins/disable-submit/disable-submit-buttons.js' 
    ];

    public $depends = [
        'yii\web\YiiAsset',
        'yii\web\JqueryAsset',
        'yii\bootstrap\BootstrapAsset',
        'yii\bootstrap\BootstrapPluginAsset',
    ];

    /**
     * @inheritdoc
     */
    public function init()
    {
        parent::init();
    }
}