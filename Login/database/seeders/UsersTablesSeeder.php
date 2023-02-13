<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use App\Models\User;

class UsersTablesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        User::create([
            'name'              =>  'Fabian',
            'email'             =>  'jajasalu2@gmail.com',
            'password'          =>  bcrypt('suvieja123'),
            'remember_token'    =>  Str::random(10),
        ]);
    }
}
