<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAboutusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('aboutus', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('image')->nullable(true);
            $table->string('phone')->nullable(true);
            $table->string('email')->nullable(true);
            $table->string('website')->nullable(true);
            $table->string('facebook')->nullable(true);
            $table->string('twitter')->nullable(true);
            $table->string('instagram')->nullable(true);
            $table->string('linkedin')->nullable(true);
            $table->longText('body_en')->nullable(true);
            $table->longText('body_ar')->nullable(true);
            $table->tinyInteger('type')
                ->comment('0=>user, 1=>delegate, 2=>driver')
                ->default(0);
            $table->softDeletes();
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
        Schema::dropIfExists('aboutus');
    }
}
