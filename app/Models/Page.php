<?php
namespace App\Models;

use App\Models;

use App\Models\AbstractModel;
use Illuminate\Database\Eloquent\Model;

class Page extends AbstractModel
{
    public function __construct()
    {
        parent::__construct();
    }
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'pages';

    protected $primaryKey = 'id';

    private static $acceptableEdit = [
        'global_title',
        'global_slug',
        'status'
    ];

    private static $acceptableEditContent = [
        'title',
        'slug',
        'language_id',
        'description',
        'content',
        'status',
        'thumbnail',
        'tags'
    ];

    public static function getPageById($id, $languageId = 0)
    {
        return static::join('page_contents', 'pages.id', '=', 'page_contents.page_id')
            ->join('languages', 'languages.id', '=', 'page_contents.language_id')
            ->where('pages.id', '=', $id)
            ->where('page_contents.language_id', '=', $languageId)
            ->select('pages.global_title', 'pages.global_slug', 'page_contents.*')
            ->first();
    }

    public static function getPageContentByPageId($id, $languageId = 0)
    {
        return Models\PageContent::getBy([
            'page_id' => $id,
            'language_id' => $languageId
        ]);
    }

    public static function updatePage($id, $data)
    {
        $result = [
            'error' => true,
            'response_code' => 500
        ];
        $page = static::find($id);
        if(!$page) return $result;

        foreach($data as $key => $row)
        {
            if(in_array($key, static::$acceptableEdit))
            {
                $page->$key = $row;

                if($key == 'global_slug')
                {
                    $page->$key = str_slug($row);
                }
            }
        }

        if($page->save())
        {
            $result['error'] = false;
            $result['response_code'] = 200;
        }
        return $result;
    }

    public static function updatePages($ids, $data)
    {
        $result = [
            'error' => true,
            'response_code' => 500
        ];
        foreach($data as $key => $row)
        {
            if(!in_array($key, static::$acceptableEdit))
            {
                unset($data[$key]);
            }
        }

        $pages = static::whereIn('id', $ids);
        if($pages->update($data))
        {
            $result['error'] = false;
            $result['response_code'] = 200;
        }

        return $result;
    }

    public static function updatePageContent($id, $languageId, $data)
    {
        $result = [
            'error' => true,
            'response_code' => 500
        ];

        /*Update page content*/
        $pageContent = static::getPageContentByPageId($id, $languageId);
        if(!$pageContent) return $result;
        foreach($data as $keyContent => $rowContent)
        {
            if(in_array($keyContent, static::$acceptableEditContent))
            {
                $pageContent->$keyContent = $rowContent;

                if($keyContent == 'slug')
                {
                    $pageContent->$keyContent = str_slug($rowContent);
                }
            }
        }
        if($pageContent->save())
        {
            $result['error'] = false;
            $result['response_code'] = 200;
        }
        return $result;
    }

    public static function deletePage($id)
    {
        $result = [
            'error' => true,
            'response_code' => 500
        ];
        $page = static::find($id);

        if(!$page)
        {
            $result['message'] = 'The page you have tried to edit not found';
            return $result;
        }

        $temp = PageContent::where('page_id', '=', $id);
        $related = $temp->get();
        if(!count($related))
        {
            $related = null;
        }

        /*Remove all related content*/
        if($related != null)
        {
            if($temp->delete())
            {
                $result['error'] = false;
                $result['response_code'] = 200;
            }
            if(!$page->delete())
            {
                $result['error'] = true;
                $result['response_code'] = 500;
            }
        }
        else
        {
            if($page->delete())
            {
                $result['error'] = false;
                $result['response_code'] = 200;
            }
        }

        return $result;
    }
}