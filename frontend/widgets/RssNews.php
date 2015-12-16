<?php

namespace frontend\widgets;

use yii\base\Widget;

class RssNews extends Widget
{
    public $url_rss;
    public $num;
    public $maxstr;



    public function run()
    {
        $url = $this->url_rss;
        $rss = simplexml_load_file($url);
        $i = 0;
        $num = $this->num;
        $maxstr = $this->maxstr;
        foreach ($rss->channel->item as $item) {
            if($i >= $num){
                break;
            }
            echo '<font color="#fb4e5a" style="font-size:10px;">'.date("d:m:Y", strtotime($item->pubDate)).'</font>';
            echo ' <a class="news" href="'.$item->link.'"><strong>'.$item->title.'</strong></a><br>';
            $text_news = preg_replace("'<[^<img][\/\!]*?[^<>]*?>'si", "", $item->description);
            $text_news = substr($text_news, 0, $maxstr);
            echo $text_news.'...<br>';
            $i++;
        }
    }
}