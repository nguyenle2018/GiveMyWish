<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->bigIncrements('EMP_ID');
            $table->string('Nom', 50);
            $table->string('Prénom', 50);
            $table->date('Naissance');
            $table->string('EtatCivil', 50)->nullable();
            $table->string('Email', 100)->unique();
            $table->string('Phone', 50);
            $table->string('Image', 255)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employees');
    }
}
