<?php
namespace App\Models;

use App\Models\AbstractModel;

class User extends AbstractModel
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
    protected $table = 'users';

    protected $primaryKey = 'id';

    public static function getAllUsers()
    {
        return static::get();
    }

    public static function getUserById($id)
    {
        $user = static::where('id', '=', $id)->first();
        return $user;
    }

    public static function getUserBy($fields)
    {
        $user = static::where($fields)->first();
        return $user;
    }

    public static function getUserByEmail($email)
    {
        $user = static::where('email', '=', $email)->first();
        return $user;
    }
}