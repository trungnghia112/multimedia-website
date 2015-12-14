<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;

use App\Models;

use App\Models\Page;

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
        $pages = Page::getAll($request->get('page', 1), $request->get('per_page', 1));
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
        $page = Page::getPageById($id, $language);

        /*Create new if not exists*/
        if(!$page)
        {
            $page = new PageContent();
            $page->language_id = $language;
            $page->page_id = $id;
            $page->save();
            $page = Page::getPageById($id, $language);
        }

        $this->data['data'] = $page->toArray();
        return response()->json($this->data, $this->data['response_code']);
    }

    public function postEditGlobal(Request $request, $id = null)
    {
        if($request->get('is_group_action') == true)
        {
            return $this->_GroupAction($request);
        }
        $data = $request->except(['is_group_action', '_group_action', 'ids']);
        $result = Page::updatePage($id, $data);
        return response()->json($result, $result['response_code']);
    }

    public function postEdit(Request $request, $id, $language)
    {
        $data = $request->all();
        $result = Page::updatePageContent($id, $language, $data);
        return response()->json($result, $result['response_code']);
    }

    public function deleteDelete(Request $request, $id)
    {
        $result = Page::deletePage($id);
        return response()->json($result, $result['response_code']);
    }

    public function _GroupAction($request)
    {
        $result = [
            'error' => true,
            'response_code' => 500,
            'message' => 'Some error occurred!'
        ];

        $ids = $request->get('ids');

        if(!$ids) return response()->json($result, $result['response_code']);

        $data = [];
        switch($request->get('_group_action'))
        {
            case 'disable':
            {
                $data['status'] = 0;
            } break;
            case 'active':
            {
                $data['status'] = 1;
            } break;
            default:
            {
                /*No action*/
                $result['message'] = 'Not allowed task.';
                return response()->json($result, $result['response_code']);
            } break;
        }

        $result = Page::updatePages($ids, $data);
        return response()->json($result, $result['response_code']);
    }
}