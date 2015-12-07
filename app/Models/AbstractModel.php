<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

abstract class AbstractModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }
    /**
     * Find or create (by specified field)
     * @return mixed
     **/
    public static function findByFieldOrCreate($options)
    {
        $obj = static::where($options)->first();
        return $obj ?: new static;
    }

    public static function getAll($page = null)
    {
        if(!$page || $page < 1)
        {
            return static::get();
        }
        return static::paginate(15);
    }

    public static function getById($id)
    {
        $user = static::where('id', '=', $id)->first();
        return $user;
    }

    public static function getBy($fields)
    {
        $user = static::where($fields)->first();
        return $user;
    }
}