<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;

class ApiUserController extends BaseController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function authenticate(Request $request)
    {
        return response()->json([
            'error' => false
        ], 200);
    }
}
