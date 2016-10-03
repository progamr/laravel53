<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\Jobs\Job;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class PurchasePodcast //extends Job
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
