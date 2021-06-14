<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class message extends Model
{
    protected $fillable = ['id','user_from','user_to','user_read','text'];
    protected $primaryKey = 'id';


    public function fromContact()
    {
        return $this->hasOne(User::class, 'id', 'user_from');
    }

}
