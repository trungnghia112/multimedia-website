<?php
namespace App\Models;

use App\Models;

use App\Models\AbstractModel;

class Language extends AbstractModel
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
    protected $table = 'languages';

    protected $primaryKey = 'id';

    public static function getAll($status = 1)
    {
        return static::where('status', '=', $status)->get();
    }
}