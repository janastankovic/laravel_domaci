<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Parfem;
use App\Models\Korisnik;
use App\Models\User;
use App\Models\Korpa;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        \App\Models\User::factory(7)->create();
        \App\Models\Parfem::factory(7)->create();
        \App\Models\Korisnik::factory(7)->create();
        \App\Models\Korpa::factory(7)->create();
    }
}
