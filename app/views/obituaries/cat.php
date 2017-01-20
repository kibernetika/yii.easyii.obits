<?php
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;

$this->title = $cat->seo('title', $cat->model->title);
$this->params['breadcrumbs'][] = ['label' => 'Shop', 'url' => ['obituaries/index']];
//$this->params['breadcrumbs'][] = $cat->model->title;
?>
    <h1><?= $cat->seo('h1', $cat->title) ?></h1>
    <br/>

    <div class="row">
        <div class="col-md-12">
            <?php if (count($items)) : ?>
                <?php foreach ($items as $item) : ?>
                    <div class="col-md-4">
                        <?= $this->render('_item', ['item' => $item]) ?>
                    </div>
                <?php endforeach; ?>
            <?php else : ?>
                <p>Category is empty</p>
            <?php endif; ?>
        </div>
        <!--    <div class="col-md-3 col-md-offset-1">-->
        <!--        <h4>Filters</h4>-->
        <!--        <div class="well well-sm">-->
        <!--            --><?php //$form = ActiveForm::begin(['method' => 'get', 'action' => Url::to(['/obituaries/cat', 'slug' => $cat->slug])]); ?>
        <!--                --><? //= $form->field($filterForm, 'brand')->dropDownList($cat->fieldOptions('brand', 'Select brand')) ?>
        <!--                --><? //= $form->field($filterForm, 'priceFrom') ?>
        <!--                --><? //= $form->field($filterForm, 'priceTo') ?>
        <!--                --><? //= $form->field($filterForm, 'touchscreen')->checkbox() ?>
        <!--                --><? //= $form->field($filterForm, 'storageFrom') ?>
        <!--                --><? //= $form->field($filterForm, 'storageTo') ?>
        <!--                --><? //= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
        <!--            --><?php //ActiveForm::end(); ?>
        <!--        </div>-->
        <!--    </div>-->
    </div>


<?= $cat->pages() ?>