<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnswersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('answers', function (Blueprint $table) {
            $table->increments('id'); //id int NOT NULL
            $table->string('fullname', 200);   //fullname varchar(200) NOT NULL
            $table->tinyInteger('gender');//gender tryyint NOT NULL 1:2:
            $table->integer('age');//age_id integer NOT NULL ageskei-02 id
            $table->string('email', 255);//email varchar(255) NOT NULL
            $table->tinyInteger('is_send_email');//is_send_email tynyint NOT NULL 1:0:
            $table->text('feedback');//feedback text
            $table->string('created_at');//created_at
            $table->string('updated_at');//updated_at
            $table->string('deleted_at');//deleted_at
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('answers');
    }
}
