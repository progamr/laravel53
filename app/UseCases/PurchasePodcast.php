<?php

namespace App\UseCases;

use App\UseCases\UseCase;

class PurchasePodcast extends UseCase
{

    public function handle() {
        $this->preparePurchase()->sendEmail();
    }

    private function preparePurchase() {
        var_dump('prepare the purchase');
        return $this;
    }

    private function sendEmail() {
        var_dump('send email with invoice');
        return $this;
    }
    
}