<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "setting".
 *
 * @property integer $id
 * @property string $title
 * @property string $keyword
 * @property string $slogan
 * @property string $mail
 * @property string $phone
 */
class Setting extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'setting';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'mail'], 'required'],
            [['keyword', 'slogan'], 'string'],
            [['title', 'mail', 'phone'], 'string', 'max' => 100],
            ['mail', 'email']
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
            'keyword' => 'Keyword',
            'slogan' => 'Slogan',
            'mail' => 'Mail',
            'phone' => 'Phone',
        ];
    }
}
