<?php

namespace Database\Seeders;

use App\Models\WorkingProcess;
use Illuminate\Database\Seeder;

class WorkingProcessSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            ['title' => 'Comprehensive Initial Consultation', 'description' => 'We begin with a thorough consultation to understand your business goals.', 'icon' => null,'status' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['title' => 'Tailored Strategy Development', 'description' => 'We begin with a thorough consultation to understand your business goals.', 'icon' => null,'status' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['title' => 'Detailed Reporting and Feedback.', 'description' => 'We begin with a thorough consultation to understand your business goals.', 'icon' => null,'status' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['title' => 'Development & Coding', 'description' => 'We begin with a thorough consultation to understand your business goals.', 'icon' => null,'status' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];
        WorkingProcess::insert($data);
    }
}
