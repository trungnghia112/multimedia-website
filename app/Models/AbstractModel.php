<?php
namespace App\Models;

use App\Models;

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

    public static function getAll($page = null, $perPage = 10)
    {
        if(!$page || $page < 1)
        {
            return static::get();
        }
        return static::paginate($perPage);
    }

    public static function getById($id)
    {
        $obj = static::where('id', '=', $id)->first();
        return $obj;
    }

    public static function getBy($fields, $multiple = false, $paginate = false, $perPage = 10)
    {
        $obj = static::where($fields);
        if($multiple)
        {
            if($paginate) return $obj->paginate($perPage);
            return $obj->get();
        }
        return $obj->first();
    }
}