<?php

namespace App\Http\Controllers;

use App\Strategies\RegisterLifetimeMember;
use App\Strategies\RegisterTeamMember;
use Illuminate\Http\Request;
use App\Coupon;

use App\Http\Requests;

class SubscriptionsController extends Controller
{
    //
    public function store(Request $request) {
        $strategy = $this->getRegistrationStrategy($request);
        $strategy->handle();
    }

    public function getRegistrationStrategy(Request $request) {
        // here you do your checks to determine which strategy will we use
        if($request->type = 'forever') {
            return new RegisterLifetimeMember;
        }
        if($request->type = 'invitition') {
            return new RegisterTeamMember;
        }
        // ... go on
    }

    // consider normalizing
    public function update(Request $request) {

        $code = $request->coupon;

        /*if(! $coupon = Coupon::havingCode($code)){
            $code = null;
        }else{
            if(! $coupon->worksWithPlan($plan)){
                $code = null;
            }
        }*/
        $this->user->subscribtion()
                   ->usingCoupon(Coupon::validateForPlan($code, $plan))
                   //->usingCoupon($this->normalizeCoupon($code, $plan))
                   ->swap($plan);

    }

    public function normalizeCoupon($code, $plan) {
        if(! $code) {
            return false;
        }

        $coupon = Coupon::havingCode($code);
        if(! $coupon || ! $coupon->havingCode($code)){
            return false;
        }else{
            if(! $coupon->worksWithPlan($plan)){
                return false;
            }
        }

        return $code;
    }

}
