<?php

namespace App\Courier\Repositories;
use App\Courier\Repositories\OrderRepositoryInterface;


class DbOrderRepository implements  OrderRepositoryInterface
{
    public function getAll() {
        return Order::all();
    }
    
    public function find($id) {
        return Order::fundOrFail($id);
    }
}