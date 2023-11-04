<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('email')->nullable()->unique();
            $table->string('phone')->nullable()->unique();
            $table->string('jwt')->nullable();
            $table->text('provider_id')->nullable();
            $table->string('objective')->nullable();
            $table->string('user_code')->nullable();
            $table->tinyInteger('active')->nullable();
            $table->tinyInteger('suspend')->default(0);
            $table->bigInteger('city_id')->unsigned()->nullable();
            $table->bigInteger('region_id')->unsigned()->nullable();
            $table->tinyInteger('gender')->comment('0=>male, 1=>femail')->default(0);
            $table->string('image')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('token')->nullable();
            $table->bigInteger('points')->default(0);
            $table->bigInteger('wallet')->default(0);
            $table->string('subscription_expire')->nullable();
            $table->rememberToken();
            $table->softDeletes();
            $table->timestamps();

            /*$table->foreign('country_id')
                ->references('id')
                ->on('countries');*/
            $table->foreign('city_id')
                ->references('id')
                ->on('cities')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->foreign('region_id')
                ->references('id')
                ->on('regions')
                ->onUpdate('cascade')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
