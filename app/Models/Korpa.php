<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Parfem;
use App\Models\Korisnik;

class Korpa extends Model
{
    use HasFactory;


    //korpa se odnosi na jedan parfem
    public function parfem(){
        return $this->belongsTo(Parfem::class);
    }

    //korpa se odnosi na jednog korisnika
    public function korisnik(){
        return $this->belongTo(Korisnik::class);
    }
}
