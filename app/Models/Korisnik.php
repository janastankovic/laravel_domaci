<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Korpa;

class Korisnik extends Model
{
    use HasFactory;

    public function korpe(){
        return $this->hasMany(Korpa::class);
    }

}
