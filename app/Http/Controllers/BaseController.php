<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller;
use Illuminate\Http\Request;

use App\Models;

abstract class BaseController extends Controller
{
    public function __construct()
    {
        $this->settings = Models\Setting::getAll();

        $this->defaultLanguage = (isset($this->settings['default_language']) ? $this->settings['default_language'] : 59);
    }
}
