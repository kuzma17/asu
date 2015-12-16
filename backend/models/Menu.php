<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "menu".
 *
 * @property integer $id
 * @property string $title
 * @property string $altitle
 * @property integer $num
 * @property string $url
 * @property integer $on
 */
class Menu extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'menu';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'altitle', 'num', 'url'], 'required'],
            [['num', 'on'], 'integer'],
            [['title'], 'string', 'max' => 100],
            [['altitle'], 'string', 'max' => 200],
            [['url'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'altitle' => 'Altitle',
            'num' => 'Num',
            'url' => 'Url',
            'on' => 'On',
        ];
    }
}
