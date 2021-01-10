<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Destination extends Model
{
    public function category()
    {
        return $this->belongsTo(Category::class, 'category', 'id')->withTrashed();
    }
    public function category_model()
    {
        return $this->belongsTo(Category::class, 'category', 'id')->withTrashed();
    }

    public function media()
    {
        return $this->hasMany(DestinationMedia::class);
    }

    public function reviews(){
        return $this->hasMany(DestinationRating::class);
    }
}
