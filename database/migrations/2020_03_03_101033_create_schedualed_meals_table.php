<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSchedualedMealsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('schedualed_meals', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('meal_id')->unsigned()->nullable();
            $table->string('publish_date')->nullable();
            $table->string('price_before')->nullable();
            $table->string('price_after')->nullable();
            $table->string('lable_ar')->nullable();
            $table->string('lable_en')->nullable();

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
        Schema::dropIfExists('schedualed_meals');
    }
}
