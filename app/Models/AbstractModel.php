<?php
namespace App\Models;

use App\Models;

use Illuminate\Database\Eloquent\Model;

abstract class AbstractModel extends Model
{
    public static $defaultPerPage = 15;
    public function __construct()
    {
        parent::__construct();
        $this->defaultPerPage = 15;
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
        return static::paginate(static::$defaultPerPage);
    }

    public static function getById($id)
    {
        $user = static::where('id', '=', $id)->first();
        return $user;
    }

    public static function getBy($fields, $multiple = false, $paginate = false)
    {
        $user = static::where($fields);
        if($multiple)
        {
            if($paginate) return $user->paginate(static::$defaultPerPage);
            return $user->get();
        }
        return $user->first();
    }
}