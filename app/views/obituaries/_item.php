<?php use yii\helpers\Html; ?>

<div class="row">
    <div class="col-md-2" style="margin-right: 150px;">
        <?= Html::img($item->thumb(200, 150)) ?>
    </div>
    <div class="col-md-4">
        <p><?= Html::a($item->title, ['obituaries/view', 'slug' => $item->slug]) ?></p>
        <p>
            <span class="text-muted">Properties 1:</span> <?= $item->data->storage ?> value 1
            <br/>
            <span class="text-muted">Properties 2:</span> <?= $item->data->touchscreen ? 'Yes' : 'No' ?>
            <br/>
            <?php if(!empty($item->data->features) ) : ?>
                <span class="text-muted">Features:</span> <?= implode(', ', $item->data->features) ?>
            <?php endif; ?>
        </p>
        <h4>
            <?php if($item->discount) : ?>
                <del class="small"><?= $item->oldPrice ?></del>
            <?php endif; ?>
            <?= $item->price ?>$
        </h4>
    </div>
</div>
<br>