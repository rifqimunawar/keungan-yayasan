<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{

  /**
   * Auto generated seed file
   *
   * @return void
   */
  public function run()
  {


    \DB::table('roles')->delete();

    \DB::table('roles')->insert([
      'name' => 'Admin',
      'created_at' => Carbon::now(),
      'updated_at' => Carbon::now(),
    ]);

    \DB::table('roles')->insert([
      'name' => 'User',
      'created_at' => Carbon::now(),
      'updated_at' => Carbon::now(),
    ]);

    \DB::table('roles')->insert([
      'name' => 'Manager',
      'created_at' => Carbon::now(),
      'updated_at' => Carbon::now(),
    ]);

  }
}