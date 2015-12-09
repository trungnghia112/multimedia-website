<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller;
use Illuminate\Http\Request;

use App\Models;

abstract class BaseController extends Controller
{
    public function __construct()
    {
        $this->settings = Models\Setting::getAllSettings();

        $this->defaultLanguage = (isset($this->settings['default_language']) ? $this->settings['default_language'] : 59);
    }
}
