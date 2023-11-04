<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('order_number')->nullable();
            $table->tinyInteger('payment_type')
                ->comment('1=>package, 2=>points, 3=>online')
                ->nullable();
            $table->timestamp('order_date')->nullable();
            $table->bigInteger('user_id')->unsigned()->nullable();
            $table->bigInteger('period_id')->unsigned()->nullable();
            $table->bigInteger('location_id')->unsigned()->nullable();
            $table->bigInteger('copon_id')->unsigned()->nullable();
            $table->text('notes')->nullable();

//            $table->tinyInteger('status')
//                ->comment('0=>pending , 1=>on_way , 2=>delivered')->default(0);
            $table->timestamp('received')->nullable();
            $table->timestamp('on_way')->nullable();
            $table->timestamp('delivered')->nullable();

            $table->string('discount')->nullable();
            $table->string('total_before')->nullable();
            $table->string('total_after')->nullable();
            $table->string('total_delivery')->nullable();
            $table->string('rate')->nullable();



            $table->softDeletes();
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('period_id')->references('id')->on('periods')->onDelete('cascade');
            $table->foreign('location_id')->references('id')->on('locations')->onDelete('cascade');
            $table->foreign('copon_id')->references('id')->on('copons')->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
