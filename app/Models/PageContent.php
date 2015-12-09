<?php
namespace App\Models;

use App\Models;

use App\Models\AbstractModel;

class PageContent extends AbstractModel {
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'page_contents';

    public $timestamps = true;

    /**
     * Primary key
     *
     * @var string
     */
    protected $primaryKey = 'id';

    /**
     * Set the relationship
     *
     * @return mixed
     */
    public function page()
    {
        return $this->belongsTo('App\Models\Page', 'page_id');
    }


    /**
     * Set the relationship
     *
     * @return mixed
     */
    public function language()
    {
        return $this->belongsTo('App\Language', 'language_id');
    }
}