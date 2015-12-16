<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
$setting = backend\models\Setting::find()->where(['id' => 1])->one();
?>
<?php $this->beginPage() ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <?= Html::csrfMetaTags() ?>
    <title><?=$setting->title?></title>
    <?php $this->head() ?>

</head>
<body>
<?php $this->beginBody() ?>
<div class="page">
    <div class="head">
        <table cellpadding="0" cellspacing="0" width="100%">
            <tr><td>
                    <div class="logo"><img src="/images/logo.jpg" alt="" /></div></td>
                <td>
                    <div class="form_search">
                        <?=frontend\widgets\Search::widget() ?>
                    </div></td>
                <td width="400">
                    <div class="head_right">
                        <div class="phone">
                            <?php if($setting->phone != '' ){ ?>
                            <img style="float:left" src="/images/phone.jpg"><div style="float:left;width:110px"><?=$setting->phone?></div>
                            <?php } ?>
                            </div>
                        <div class="mail">
                            <a href="contact" title="Написать нам письмо"><img style="float:left" src="/images/mail.jpg"><div style="float:left;margin-left:5px;"><?=$setting->mail?></div></a></div>

                        <div class="group">
                            <script type="text/javascript">(function(w,doc) {
                                    if (!w.__utlWdgt ) {
                                        w.__utlWdgt = true;
                                        var d = doc, s = d.createElement('script'), g = 'getElementsByTagName';
                                        s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
                                        s.src = ('https:' == w.location.protocol ? 'https' : 'http')  + '://w.uptolike.com/widgets/v1/uptolike.js';
                                        var h=d[g]('body')[0];
                                        h.appendChild(s);
                                    }})(window,document);
                            </script>
                            <div data-background-alpha="0.0" data-buttons-color="#a2a2a2" data-counter-background-color="#ffffff" data-share-counter-size="12" data-top-button="false" data-share-counter-type="disable" data-share-style="0" data-mode="share" data-like-text-enable="false" data-hover-effect="rotate-cw" data-mobile-view="false" data-icon-color="#ffffff" data-orientation="horizontal" data-text-color="#000000" data-share-shape="round" data-sn-ids="fb.vk.tw.ok.gp." data-share-size="30" data-background-color="#ffffff" data-preview-mobile="false" data-mobile-sn-ids="fb.vk.tw.wh.ok.gp." data-pid="1434072" data-counter-background-alpha="1.0" data-following-enable="false" data-exclude-show-more="false" data-selection-enable="false" class="uptolike-buttons" ></div>
                        </div>
                    </div>
                </td></tr></table>
    </div>
    <div class="clear"></div>
    <div class="menu_top">
        <?php
        //Block menu kuzma
        $menuItems = backend\models\Menu::find()->where(['on'=>1])->orderBy('num')->all();
            echo '<ul>';
        foreach($menuItems as $p){
            if($p['url']=='home'){$p['url']='../';}
        echo '<li><a href="'.$p['url'].'">'.$p['title'].'</a></li>';
   }
        echo '</ul>';
        ?>
    </div>
    <div class="clear"></div>
    <?php
    if($setting->slogan != ''){
        ?>
        <div class="slogan">
            <?=$setting->slogan?>
        </div>
        <?php
        }
        ?>
    <div class="slideshow"  id="headerimgs">
        <div id="headerimg1" class="headerimg"></div>
        <div id="headerimg2" class="headerimg"></div>
    </div>


    <table cellpadding="0" cellspacing="0" width="100%">
        <tr><td valign="top">
                <div class="content">
                    <?= Alert::widget() ?>
                    <?=$content ?>
                </div></td>
            <td width="320" align="center" valign="top">
                <div class="right">
                    <h2>Новости</h2>
                    <?php
                    if ($this->beginCache('rssnews', ['duration' => 3600])): ?>
                        <?=frontend\widgets\RssNews::widget([
                            'url_rss' => 'http://news.google.ru/news?q=%D0%B8%D0%BD%D0%B6%D0%B8%D0%BD%D0%B8%D1%80%D0%B8%D0%BD%D0%B3&newwindow=1&hl=ru&gbv=2&prmd=ivns&um=1&ie=UTF-8&output=rss',
                            'num'=>3,
                            'maxstr'=>500])
                        ?>
                        <?php $this->endCache() ?>
                    <?php endif ?>
                </div>
            </td>
        </tr>
    </table>

    <div class="clear"></div>
    <div class="boot">
        <div class="menu_boot">
            <?php
            //Block menu kuzma
            echo '<ul>';
            foreach($menuItems as $p){
                echo '<li><a href="'.$p['url'].'"> '.$p['title'].'</a></li>';
            }
            echo '</ul>';
            ?>
        </div>
        <div class="copyright">Copyright 2015 © asu-project.ru   Designed by <a href='mailto:v.kuzma@mail.ru' title='написать письмо вебмастеру'>Kuzma</a></div>
    </div>
</div>
</div>
<?php $this->endBody() ?>
<script type="text/javascript">
    $(function() {
        $('#thumbnails a').lightBox();
    });
</script>
</body>
</html>
<?php $this->endPage() ?>