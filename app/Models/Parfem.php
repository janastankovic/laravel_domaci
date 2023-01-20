<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Korpa;

class Parfem extends Model
{
    use HasFactory;

    //vrati sve korpe u parfimeriji
    public function korpa(){
        return $this->hasMany(Korpa::class);
    }

}
