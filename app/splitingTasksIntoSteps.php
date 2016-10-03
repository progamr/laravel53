<?php
class Thing {
    public function handle() {
        //do this
        //do that
        //add foo to bar
        $tasks = [
            DoThis::class,
            DoThat::class,
            AddFooToBar::class
        ];

        foreach ($tasks as $task) {
            (new $task)->handle();
        }
    }
}

class DoThis {

    public function handle(){

    }

}
class DoThat {

    public function handle(){

    }
}
class AddFooToBar {

    public function handle(){

    }
}