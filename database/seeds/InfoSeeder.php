<?php

use Illuminate\Database\Seeder;
use App\Info;

class InfoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        $info = new Info();
        $info->description = '<div></div>';
        $info->save();
    }
}
