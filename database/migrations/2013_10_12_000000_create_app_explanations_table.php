<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAppExplanationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('app_explanations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('en_title');
            $table->string('ar_title');
            $table->text('en_body');
            $table->text('ar_body');
            $table->string('image');
            $table->tinyInteger('privacy')
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
        Schema::dropIfExists('app_explanations');
    }
}
