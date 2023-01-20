<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Korpa;

class Parfem extends Model
{
    use HasFactory;

    //za jedan parfem moze da bude vise korpi
    public function korpa(){
        return $this->hasMany(Korpa::class);
    }

}
