<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Parfem>
 */
class ParfemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'naziv' => fake()->lexify('Hello ???'),
            'cena' => fake()->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL),
            'boca' => fake()->numberBetween($min = 10, $max = 1000) ,
        ];
    }
}
