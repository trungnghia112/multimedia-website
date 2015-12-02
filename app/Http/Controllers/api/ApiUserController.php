<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;

use App\Models;

class ApiUserController extends BaseController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function postAuthenticate(Request $request)
    {
        $dis = [
            'error' => true,
            'error_code' => 401
        ];
        $user = Models\User::getUserByEmail($request->get('email'));
        /*If user not exists or wrong password*/
        if(!$user || !\Hash::check($request->get('password'), $user->password))
        {
            return response()->json($dis, $dis['error_code']);
        }
        $dis = [
            'error' => false,
            'error_code' => 200
        ];
        return response()->json($dis, $dis['error_code']);
    }
}
