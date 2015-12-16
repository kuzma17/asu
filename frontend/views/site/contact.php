<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\ContactForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;

$this->title = 'Написать нам ';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-contact11">
    <h2><?= Html::encode($this->title) ?></h2>

    <p>
        Если у вас есть деловое предложение или другие вопросы, пожалуйста, заполните следующую форму, чтобы связаться с нами. Спасибо.
    </p>


        <div  style="width: 500px; margin-left: 70px;">
            <?php $form = ActiveForm::begin(['id' => 'contact-form']); ?>

                <?= $form->field($model, 'name')->label('Ваше имя') ?>

                <?= $form->field($model, 'email') ?>

                <?= $form->field($model, 'subject')->label('Тема сообщения') ?>

                <?= $form->field($model, 'body')->textArea(['rows' => 6])->label('Текст сообщения') ?>

                <?= $form->field($model, 'verifyCode')->widget(Captcha::className(), [
                    'template' => '<div class="row"><div class="col-lg-6" style="float: left;margin-top: 7px;">{input}</div>
<div class="col-lg-3" style="float:left">{image}</div></div>',
                ]) ?>


                <div class="form-group">
                    <?= Html::submitButton('Отправить', ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
                </div>

            <?php ActiveForm::end(); ?>
        </div>


</div>

