<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EmployeesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $employees = [
            ['Nom'=>'Martin', 'Prénom'=>'Lucie', 'Naissance'=>'1990-07-07', 'EtatCivil'=>'mariage', 'Email'=>'lucie.martin@yahoo.com', 'Phone'=>'0782456789', 'Image'=>'https://www.linkedin.com/in/lucie-martin-3b087a168/'],
            ['Nom'=>'Bertrand', 'Prénom'=>'Olivier', 'Naissance'=>'1993-10-21', 'EtatCivil'=>'single', 'Email'=>'olivier.berthand@gmail.com', 'Phone'=>'0624357865']
        ];
        foreach($employees as $employee){
            DB::table('employees')->insert($employee);
        }
    }
}
