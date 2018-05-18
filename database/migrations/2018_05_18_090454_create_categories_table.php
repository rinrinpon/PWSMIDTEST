<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
          $table->increments('id');
          $table->string('name',45);
          $table->timestamps();
        });

        //set FK di kolom id_categories di table book
        Schema::table('books', function (Blueprint $table) {
          $table->foreign('id_categories')
                ->references('id')
                ->on('categories')
                ->onDelete('cascade')
                ->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
      Schema::table('books', function (Blueprint $table) {
       $table->dropForeign('books_id_categories_foreign');
     });

     Schema::dropIfExists('categories');
    }
}
