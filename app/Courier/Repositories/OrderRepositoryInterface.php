<?php

namespace App\Courier\Repositories;


interface OrderRepositoryInterface
{
    public function getAll();
    public function find($id);

}