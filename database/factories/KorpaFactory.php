<?php

namespace Database\Factories;
use App\Models\Parfem;
use App\Models\Korisnik;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Korpa>
 */
class KorpaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'kolicina' => fake()->randomDigit(),  
            'ukupna_cena' => fake()->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL),
            'korisnikId' => function(){
                return Korisnik::all()->random();
            },
            'parfemId' => function(){
                return Parfem::all()->random();
            }
        ];
    }
}
