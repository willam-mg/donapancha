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
class Maps1Asset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';

    public $css = [
        'css/maps.css'
    ];

    public $js = [
        'js/create_maps.js',
        'js/pedidodelivery/_form.js'
    ];

    public $depends = [
        'yii\web\JqueryAsset',
        'app\assets\GoogleAsset',
    ];

    public $jsOptions = [
        'position' => \yii\web\View::POS_HEAD,
        'async' => 'async',

    ];
}
