<?php

namespace App;


class Revenue
{
    private $revenue;

    public function __construct($revenue)
    {
        $this->revenue = $revenue;
    }

    public function inDollars() {
        return $this->revenue / 100;
    }
    public function asCurrency() {
        return money_format('$%i', $this->inDollars());
    }

    public function __toString()
    {
        return (string)$this->revenue;
    }
}