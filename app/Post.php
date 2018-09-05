<?php

namespace App;

class Post extends Model
{
    // Fields we accept
    protected $fillable = ['title', 'body'];


    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

}
