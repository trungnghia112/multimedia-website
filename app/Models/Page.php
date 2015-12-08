<?php
namespace App\Models;

use App\Models;

use App\Models\AbstractModel;
use Illuminate\Database\Eloquent\Model;

class Page extends AbstractModel
{
    public static $acceptableEdit = [
        'global_title',
        'global_slug'
    ];

    public static $acceptableEditContent = [
        'page_id',
        'language_id',
        'title',
        'slug',
        'language_id',
        'description',
        'content',
        'status',
        'tags'
    ];

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

    public static function getPageById($id, $languageId = 0)
    {
        return Models\PageContent::join('pages', 'pages.id', '=', 'page_contents.page_id')
            ->join('languages', 'languages.id', '=', 'page_contents.language_id')
            ->where('pages.id', '=', $id)
            ->where('page_contents.language_id', '=', $languageId)
            ->select('pages.global_title', 'pages.global_slug', 'page_contents.*')
            ->first();
    }

    public static function updatePage($id, $data)
    {
        $result = [
            'error' => false,
            'error_update_content' => false,
            'response_code' => 200
        ];

        /*Update page*/
        $page = static::find($id);
        foreach($data as $key => $row)
        {
            if(in_array($key, static::$acceptableEdit))
            {
                $page->$key = $row;

                /*Special fields*/
                if($key == 'global_slug')
                {
                    $page->$key = str_slug($row);
                }
            }
        }
        if(!$page->save())
        {
            $result['error'] = true;
            $result['response_code'] = 500;
        }

        return $result;
    }

    public static function updatePageContent($id, $languageId, $data)
    {
        $result = [
            'error' => false,
            'error_update_content' => false,
            'response_code' => 200
        ];

        /*Update page content*/
        $pageContent = Models\PageContent::where('page_id', '=', $id)
            ->where('language_id', '=', $languageId);

        $dataUpdateContent = [];

        foreach($data as $keyContent => $rowContent)
        {
            if(in_array($keyContent, static::$acceptableEditContent))
            {
                //$dataUpdateContent[$keyContent] = $rowContent;
                $dataUpdateContent[$keyContent] = $rowContent;

                /*Special fields*/
                if($keyContent == 'slug')
                {
                    //$dataUpdateContent[$keyContent] = str_slug($rowContent);
                    $dataUpdateContent[$keyContent] = str_slug($rowContent);
                }
            }
        }

        if(!$pageContent->update($dataUpdateContent))
        {
            $result['error_update_content'] = true;
            $result['response_code'] = 500;
        }

        return $result;
    }
}