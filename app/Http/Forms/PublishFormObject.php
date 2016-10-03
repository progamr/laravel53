<?php

namespace App\Http\Forms;


class PublishFormObject extends Form
{
    protected $rules = [
        'body' => 'required'
    ];

    public function persist(){
        var_dump('save '.$this->body.'to the db.');
    }
}