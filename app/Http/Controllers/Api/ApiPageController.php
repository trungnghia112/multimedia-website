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
            'response_code' => 500
        ];
    }

    public function index(Request $request)
    {
        $pages = Models\Page::getAll($request->get('page', 1));
        $this->data = [
            'error' => false,
            'response_code' => 200,
            'data' => $pages->toArray()
        ];
        return response()->json($this->data, $this->data['response_code']);
    }

    public function show(Request $request, $id, $language)
    {
        $page = Models\Page::getPageById($id, $language);
        if($page)
        {
            $this->data = [
                'error' => false,
                'response_code' => 200,
                'data' => $page->toArray()
            ];
        }
        return response()->json($this->data, $this->data['response_code']);
    }

    public function edit(Request $request, $id, $language)
    {
        $data = $request->all();
        $result = Models\Page::updatePage($id, $language, $data);
        return response()->json($result, $result['response_code']);
    }
}