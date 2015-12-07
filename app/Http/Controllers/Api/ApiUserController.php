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
        $this->data = [
            'error' => true,
            'error_code' => 401
        ];
    }

    public function postAuthenticate(Request $request)
    {
        $user = Models\User::getUserByEmail($request->get('email'));
        /*If user not exists or wrong password*/
        if(!$user || !\Hash::check($request->get('password'), $user->password))
        {
            return response()->json($this->data, $this->data['error_code']);
        }
        $this->data = [
            'error' => false,
            'error_code' => 200
        ];
        return response()->json($this->data, $this->data['error_code']);
    }
}
