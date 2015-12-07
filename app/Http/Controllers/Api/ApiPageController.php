<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;

use App\Models;

class ApiPageController extends BaseController
{
    public function __construct()
    {
        parent::__construct();
        $this->data = [
            'error' => true,
            'error_code' => 500
        ];
    }

    public function index(Request $request)
    {
        $pages = Models\Page::getAll($request->get('page', 1));
        $this->data = [
            'error' => false,
            'error_code' => 200,
            'data' => $pages->toArray()
        ];
        return response()->json($this->data, $this->data['error_code']);
    }

    public function show(Request $request, $id)
    {
        $page = Models\Page::getById($id);
        if($page)
        {
            $this->data = [
                'error' => false,
                'error_code' => 200,
                'data' => $page->toArray()
            ];
        }
        return response()->json($this->data, $this->data['error_code']);
    }
}
