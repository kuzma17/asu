<?php
$setting = backend\models\Setting::find()->where(['id' => 1])->one();
?>
<h2>Наши координаты</h2>
<hr>
<div class="map">
    <script type="text/javascript" charset="utf-8" src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=h00l_gK3LqyKMryjxW5vfiqlfIZVhXbE&width=900&height=500&lang=ru_RU&sourceType=constructor"></script>
</div>
<?php if($setting->phone != '' ){ ?>
<p><strong style="float: left">тел/факс:</strong><div style="width:120px;float:left">
        <?=$setting->phone?>
</div>
<?php } ?>
<div class="clear"></div>
</p>
<p><strong>e-mail:</strong> <?=$setting->mail?><br></p>
