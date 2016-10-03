<?php

namespace App\Http\Forms;
use Illuminate\Http\Request;
use Illuminate\Foundation\Validation\ValidatesRequests;

abstract class Form
{
    use ValidatesRequests;

    protected $request;
    protected $rules = [];

    public function save() {
        // do validation
        if($this->isValid()) {
            $this->persist();
            return true;
        }
        return false;
        // and call persist() ,if passes
    }

    public function fields() {
       return $this->request->all();
    }

    abstract public function persist();
    public function __construct(Request $request = null) {
        $this->request = $request ?: request();
    }

    public function __get($name)
    {
        // protection
        if($this->request->has($name))
            return $this->request->input($name);
        throw new \Exception('property is Not Found!', -1);
    }

    protected function isValid() {
        try{
            $this->validate($this->request, $this->rules);
        }
        catch (\Exception $e){
            throw $e;
            // you can get errors with $e->validator->errors();
        }
        // if the above failed an exception will be thrown
        // and you will never get to this point

        return true;
    }

}