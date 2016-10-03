<?php


namespace App\UseCases;


abstract class UseCase
{
    public static function perform(...$args) {
        return (new static)->handle();
    }

    abstract public function handle();
}