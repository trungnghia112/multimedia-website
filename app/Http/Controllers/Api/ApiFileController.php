<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;

use App\Models;

class ApiFileController extends BaseController
{
    public function __construct()
    {
        parent::__construct();

    }

    public function anyIndex(Request $request)
    {
        $path = './uploads';
        $dir = $path;
        if ($request->get('sub')) {
            $dir .= '/'.urldecode($request->get('sub'));
        }
        $files = scandir($dir);
        $result = [];
        foreach ($files as $file) {
            if ($file != '.' and $file != '..') {
                $result[] = [
                    'is_dir'    => is_dir($dir.'/'.$file),
                    'name'      => $file,
                    'path'      => str_replace($path.'/', '', $dir.'/'.$file),
                    'extension' => pathinfo($dir.'/'.$file, PATHINFO_EXTENSION),
                ];
            }
        }
        return response()->json($result);
    }
}