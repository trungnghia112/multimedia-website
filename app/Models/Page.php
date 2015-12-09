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
        'global_slug'
    ];

    private static $acceptableEditContent = [
        'title',
        'slug',
        'language_id',
        'description',
        'content',
        'status',
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
            }
        }
        if($pageContent->save())
        {
            $result['error'] = false;
            $result['response_code'] = 200;
        }
        return $result;
    }
}