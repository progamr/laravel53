<?php
/**
 * Created by PhpStorm.
 * User: shiftdeveloper
 * Date: 14/09/16
 * Time: 07:11 م
 */

namespace App;


abstract class Presenter
{
    protected $user;

    /**
     * UserPresenter constructor.
     * @param $user
     */
    public function __construct(User $user)
    {
        $this->user = $user;
    }
    
    public function __get($property)
    {
        if(method_exists($this, $property))
            return call_user_func([$this, $property]);
        $message = '%s does not respond to the %s property or method';
        throw new \Exception(sprintf($message, static::class, $property), -11);
    }
}