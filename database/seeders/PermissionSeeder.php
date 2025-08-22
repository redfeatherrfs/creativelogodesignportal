<?php

namespace Database\Seeders;

use App\Models\Setting;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $now = now();
        $permissions = [
            ['name' => 'Manage Client', 'guard_name' => 'web', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Manage Tickets', 'guard_name' => 'web', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Manage Invoice', 'guard_name' => 'web', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Manage Orders', 'guard_name' => 'web', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Manage Team Member', 'guard_name' => 'web', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Manage Packages', 'guard_name' => 'web', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Manage Services', 'guard_name' => 'web', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Manage Setting', 'guard_name' => 'web', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Manage Cms Settings', 'guard_name' => 'web', 'created_at' => $now, 'updated_at' => $now],
        ];

        Permission::upsert($permissions, ['name']);
    }
}
