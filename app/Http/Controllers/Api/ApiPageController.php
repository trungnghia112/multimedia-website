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

    public function getIndex(Request $request)
    {
        $pages = Models\Page::getAll($request->get('page', 1));
        $this->data = [
            'error' => false,
            'response_code' => 200,
            'data' => $pages->toArray()
        ];
        return response()->json($this->data, $this->data['response_code']);
    }

    public function getDetails(Request $request, $id, $language)
    {
        $this->data = [
            'error' => false,
            'response_code' => 200
        ];
        $page = Models\Page::getPageById($id, $language);

        /*Create new if not exists*/
        if(!$page)
        {
            $page = new Models\PageContent();
            $page->language_id = $language;
            $page->page_id = $id;
            $page->save();
            $page = Models\Page::getPageById($id, $language);
        }

        $this->data['data'] = $page->toArray();
        return response()->json($this->data, $this->data['response_code']);
    }

    public function postEditGlobal(Request $request, $id)
    {
        $data = $request->all();
        $result = Models\Page::updatePage($id, $data);
        return response()->json($result, $result['response_code']);
    }

    public function postEdit(Request $request, $id, $language)
    {
        $data = $request->all();
        $result = Models\Page::updatePageContent($id, $language, $data);
        return response()->json($result, $result['response_code']);
    }

    public function deleteDelete(Request $request, $id)
    {
        $result = Models\Page::deletePage($id);
        return response()->json($result, $result['response_code']);
    }
}