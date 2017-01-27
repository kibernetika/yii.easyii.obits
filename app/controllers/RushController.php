<?php

namespace app\controllers;

use yii\easyii\modules\article\api\Article;

class RushController extends \yii\web\Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }

}
