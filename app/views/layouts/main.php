<?php
use yii\easyii\modules\shopcart\api\Shopcart;
use yii\easyii\modules\subscribe\api\Subscribe;
use yii\helpers\Url;
use yii\widgets\Breadcrumbs;
use yii\widgets\Menu;

$goodsCount = count(Shopcart::goods());
?>
<?php $this->beginContent('@app/views/layouts/base.php'); ?>


<div id="wrapper" class="no-padding container">
    <header>
        <nav class="navbar navbar-default obHeader">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-menu">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<?= Url::home() ?>">Company</a>
                </div>

                <div class="collapse navbar-collapse usr" id="navbar-menu">
                    <?= Menu::widget([
                        'options' => ['class' => 'nav navbar-nav'],
                        'items' => [
                            ['label' => 'Home', 'url' => ['site/index']],
                            ['label' => 'Obituaries', 'url' => ['obituaries/index']],
                            ['label' => 'Rush service', 'url' => ['rush/index']],
                            ['label' => 'FAQ', 'url' => ['faq/index']],
                            ['label' => 'About us', 'url' => ['/contact/index']],

                        ],
                    ]); ?>

                    <a href="<?= Url::to(['/shopcart']) ?>" class="btn btn-default navbar-btn navbar-right" title="Complete order">
                        <i class="glyphicon glyphicon-shopping-cart"></i>
                        <?php if($goodsCount > 0) : ?>
                            <?= $goodsCount ?> <?= $goodsCount > 1 ? 'items' : 'item' ?> - <?= Shopcart::cost() ?>$
                        <?php else : ?>
                            <span class="text-muted">empty</span>
                        <?php endif; ?>
                    </a>

                </div>
            </div>
        </nav>
    </header>
    <main>
        <?php if($this->context->id != 'site') : ?>
            <br/>
            <?= Breadcrumbs::widget([
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ])?>
        <?php endif; ?>
        <?= $content ?>
        <div class="push"></div>
    </main>
</div>
<footer>
    <div class=" footer">
        <div class="container">
            <div class="footerNav">
                <div class="copyring"> Copyright Company 2017, all rights reserved</div>
            </div>

            <div class="socials">
                <ul class="social-network social-circle">
                    <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                    <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<?php $this->endContent(); ?>
