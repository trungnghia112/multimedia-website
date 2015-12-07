<?php
namespace App\Models;

use App\Models\AbstractModel;

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


}