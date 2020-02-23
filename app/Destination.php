<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Destination extends Model
{
    public function category(){
        return $this->belongsTo(Category::class, 'category', 'id');
    }
    public function category_model(){
        return $this->belongsTo(Category::class, 'category', 'id');
    }
}
