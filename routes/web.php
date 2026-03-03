<?php

use Illuminate\Support\Facades\Route;

Route::get('/_locale', function () {
    return app()->getLocale();
});