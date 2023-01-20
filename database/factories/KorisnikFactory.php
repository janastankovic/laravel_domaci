<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Kosisnik>
 */
class KorisnikFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'ime' => fake()->name(),
            'prezime' => fake()->lastName(), 
            'email' => fake()->safeEmail(),
            'mobilni_telefon'=> fake()->phoneNumber(),
            'adresa'=> fake()->address(),
        
        ];
    }
}
