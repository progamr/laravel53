<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    //

    public function scopeHavingCode($query, $code) {
        return $query->where('code', $code)->first();
    }

    public function worksWithPlan($plan) {

    }

    public static function validateForPlan($code, $plan) {
        if(! $code) {
            return false;
        }

        $coupon = static::havingCode($code);
        if(! $coupon || ! $coupon->havingCode($code)){
            return false;
        }else{
            if(! $coupon->worksWithPlan($plan)){
                return false;
            }
        }
    }
}
