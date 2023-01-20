<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Parfem;
use App\Models\Korisnik;

class Korpa extends Model
{
    use HasFactory;


    
    public function parfemirija(){
        return $this->belongsTo(Parfem::class);
    }

    //vrati korisnika kome pripada korpa
    public function korisnik(){
        return $this->hasMany(Korisnik::class);
    }
}
