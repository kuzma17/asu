<?php

namespace frontend\models;

use Yii;
use yii\base\Model;

/**
 * ContactForm is the model behind the contact form.
 */
class Search extends Model
{
    public $search;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            // name, email, subject and body are required
            [['search'], 'required', 'message' => 'пустое поле не допускается.'],
            [['search'], 'string', 'min' => 3, 'max' => 100,
                'message'=>'длинна запроса 3 - 100 символов',
            'tooLong' =>'длинна запроса должна быть не более 100 символов',
            'tooShort'=>'длинна запроса должна быть не менее 3 символа'],
        ];
    }

}
