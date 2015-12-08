<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;

use App\Models;

class ApiLanguageController extends BaseController
{
    public function __construct()
    {
        parent::__construct();
        $this->data = [
            'error' => true,
            'response_code' => 500
        ];
    }

    public function index(Request $request)
    {
        $language = Models\Language::getAll();
        $this->data = [
            'error' => false,
            'response_code' => 200,
            'data' => $language->toArray()
        ];
        return response()->json($this->data, $this->data['response_code']);
    }
}
