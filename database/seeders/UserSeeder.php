<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $google2fa = app('pragmarx.google2fa');
        User::insert([
            ['uuid' => '123456', 'name' => 'Administrator Doe', 'mobile' => '0', 'role' => USER_ROLE_ADMIN, 'email' => 'admin@gmail.com', 'password' => Hash::make(123456), 'status' => USER_STATUS_ACTIVE, 'google2fa_secret' => $google2fa->generateSecretKey(), 'email_verification_status' => 1, 'phone_verification_status' => 1],
            ['uuid' => '1234567', 'name' => 'Team Member Doe', 'mobile' => '1', 'role' => USER_ROLE_TEAM_MEMBER, 'email' => 'team-member@gmail.com', 'password' => Hash::make(123456), 'status' => USER_STATUS_ACTIVE, 'google2fa_secret' => $google2fa->generateSecretKey(), 'email_verification_status' => 1, 'phone_verification_status' => 1],
            ['uuid' => '12345678', 'name' => 'Client Doe', 'mobile' => '1', 'role' => USER_ROLE_CLIENT, 'email' => 'client@gmail.com', 'password' => Hash::make(123456), 'status' => USER_STATUS_ACTIVE, 'google2fa_secret' => $google2fa->generateSecretKey(), 'email_verification_status' => 1, 'phone_verification_status' => 1],
        ]);
    }
}
