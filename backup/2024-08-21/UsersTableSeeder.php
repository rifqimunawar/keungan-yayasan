<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{

  /**
   * Auto generated seed file
   *
   * @return void
   */
  public function run()
  {


    DB::table('users')->delete();

    DB::table('users')->insert([
      'name' => 'Rifqi',
      'role_id' => 1, // Misalnya 1 untuk Admin
      'email' => 'rifqi@gmail.com',
      'email_verified_at' => Carbon::now(),
      'password' => Hash::make('rifqi'), // Password di-hash dengan bcrypt
      'remember_token' => '',
      'created_at' => Carbon::now(),
      'updated_at' => Carbon::now(),
    ]);

    DB::table('users')->insert([
      'name' => 'Jane Smith',
      'role_id' => 2, // Misalnya 2 untuk User
      'email' => 'jane.smith@example.com',
      'email_verified_at' => Carbon::now(),
      'password' => Hash::make('password2'), // Password di-hash dengan bcrypt
      'remember_token' => '',
      'created_at' => Carbon::now(),
      'updated_at' => Carbon::now(),
    ]);

    DB::table('users')->insert([
      'name' => 'Alice Johnson',
      'role_id' => 2,
      'email' => 'alice.johnson@example.com',
      'email_verified_at' => Carbon::now(),
      'password' => Hash::make('password3'), // Password di-hash dengan bcrypt
      'remember_token' => '',
      'created_at' => Carbon::now(),
      'updated_at' => Carbon::now(),
    ]);

    DB::table('users')->insert([
      'name' => 'Bob Brown',
      'role_id' => 3, // Misalnya 3 untuk Manager
      'email' => 'bob.brown@example.com',
      'email_verified_at' => Carbon::now(),
      'password' => Hash::make('password4'), // Password di-hash dengan bcrypt
      'remember_token' => '',
      'created_at' => Carbon::now(),
      'updated_at' => Carbon::now(),
    ]);

    DB::table('users')->insert([
      'name' => 'Charlie White',
      'role_id' => 1,
      'email' => 'charlie.white@example.com',
      'email_verified_at' => Carbon::now(),
      'password' => Hash::make('password5'), // Password di-hash dengan bcrypt
      'remember_token' => '',
      'created_at' => Carbon::now(),
      'updated_at' => Carbon::now(),
    ]);

  }
}