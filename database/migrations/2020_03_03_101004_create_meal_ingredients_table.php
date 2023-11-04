<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMealIngredientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('meal_ingredients', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('meal_id')->unsigned()->nullable();
            $table->string('name_ar')->nullable();
            $table->string('name_en')->nullable();

            $table->foreign('meal_id')->references('id')->on('meals')->onDelete('cascade');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('meal_ingredients');
    }
}
