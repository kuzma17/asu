<?php

namespace frontend\widgets;

use yii\base\Widget;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

class Search extends Widget
{

    public function run()
    {
        $model = new \frontend\models\Search();

$form = ActiveForm::begin(['action' => '/search']);
echo $form->field($model, 'search',['template' => '{error}{input}'])->textInput()->label(false);
echo Html::submitInput('',['class'=>'search_submit']);
ActiveForm::end();
        }
   }