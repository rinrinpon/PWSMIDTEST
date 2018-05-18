<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Laravel\Lumen\Auth\Authorizable;
use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\SoftDeletes;

class BookModel extends Model
{
    use Authenticatable, Authorizable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    //use SoftDeletes;

    protected $table = 'books';

    protected $fillable = [
        'titlebook', 'isbnbook','rated','author','publisher','id_categories',
    ];

    public function categories()
    {
      return $this->belongsTo('App\CategoryModel', 'id_categories');
    }

}
