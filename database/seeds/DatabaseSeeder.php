<?php

use Illuminate\Database\Seeder;
use \App\User;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
    	$user = new User;

    	$user->name = 'Administrator';
		$user->email = 'kiosk_admin@gmail.com';
		$user->password = Hash::make('123123');
		
		$user->save();
    }
}


//api key: AIzaSyD-YdXs7ltaM7obqfWCFhiY32DMo_BjeP8