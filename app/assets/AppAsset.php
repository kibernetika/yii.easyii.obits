<?php
namespace app\assets;

class AppAsset extends \yii\web\AssetBundle
{
    public $basePath = '@webroot/resources';
    public $baseUrl = '@web/resources';
//    public $sourcePath = '@app/media';
    public $css = [
        'css/styles.css',
        'css/test.css',
        'css/carusel.css'
    ];
    public $js = [
        'js/scripts.js'
    ];
    public $depends = [
        'yii\web\JqueryAsset',
        'yii\bootstrap\BootstrapAsset',
        'yii\bootstrap\BootstrapPluginAsset',
    ];
}
