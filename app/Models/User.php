<?php
namespace App\Models;

use App\Models;

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

    public static function getUserByEmail($email)
    {
        $user = static::where('email', '=', $email)->first();
        return $user;
    }
}