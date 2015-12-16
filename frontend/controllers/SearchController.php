<?php

namespace frontend\controllers;

use backend\models\Page;
use frontend\models\Search;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;

/**
 * MenuController implements the CRUD actions for Menu model.
 */
class SearchController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],

        ];
    }

    /**
     * Lists all Menu models.
     * @return mixed
     */
    public function actionIndex()
    {
        $model = new Search();
        if($model->load(Yii::$app->request->post()) && $model->validate()) {
            $list = Page::find()->filterWhere(['like', 'text', $model['search']])->all();
            if (count($list) == 0) {
                $errors = 'По Вашему запросу ничего не найдено. Попробуйте задать другой запрос.';
                return $this->render('index', ['search' => $model['search'], 'errors' => $errors]);
            } else {
                return $this->render('index', ['search' => $model['search'], 'list' => $list]);
            }

        }

    }

}
