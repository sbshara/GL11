<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class StringHelper extends ServiceProvider{

    public static function truncate($string, $length = 100) {

        $limit = abs((int)$length);
        if(strlen($string) > $limit) {
            $string = preg_replace("/^(.{1,$limit})(\\s.*|$)/s", '\\1', $string);
        }
        return htmlspecialchars_decode($string);


    }
}