<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Post extends Model
{
    use HasFactory, Sluggable;

    // protected $fillable = ['title', 'excerpt', 'body'];
    protected $guarded = ['id'];
    protected $with = ['category', 'author'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    
    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    // query scope (query biasa)
    public function scopeFilter($query, array $filters)
    {
        // ternary
        $query->when($filters['search'] ?? false, function ($query, $search){
            return $query->where('title', 'like', '%' . $search . '%')
                ->orWhere('body', 'like', '%' . $search . '%');
        });

        // function
        $query->when($filters['category'] ?? false, function ($query, $category) {
            return $query->whereHas('category', function($query) use ($category) {
                $query->where('slug', $category);
            });
        });
        // function

        $query->when($filters['author'] ?? false, fn ($query, $author) => 
        $query->whereHas('author',  fn ($query) =>
         $query->where('username', $author ),
        )
        );
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }


    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }


    // public function scopeFilter($query, array $filters)
    // {
    //     $query->when($filters['search'] ?? false, function ($query, $search) {
    //         return $query->where('title', 'like', '%' . $search . '%')
    //             ->orWhere('body', 'like', '%' . $search . '%');
    //     });
    // }




}



// Post::create([
//     'title' => 'judul kelima',
//     'excerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iste, et.',
//     'body' => '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde omnis assumenda, magni ad, voluptatibus alias voluptas adipisci, culpa numquam nostrum voluptatem. Nisi itaque accusantium, eaque quisquam modi maiores doloribus nulla esse at incidunt libero molestias explicabo perferendis facere error alias a animi non quo laudantium. Ullam aspernatur doloribus ex deleniti?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis repellat laboriosam iusto reiciendis blanditiis voluptates! Est, ratione nam! Aut, dignissimos? Odio accusantium doloremque voluptatibus quas dolorum, in ut dicta suscipit magni. Excepturi vel velit iure veniam hic fugiat quis perferendis ad natus cupiditate nemo autem beatae, consequuntur sit veritatis porro itaque ipsa cumque, error qui optio eos at? Tenetur amet soluta sit sequi animi corrupti officiis provident deleniti optio nostrum accusantium hic unde aliquam culpa ipsam, illum iusto autem excepturi, saepe perspiciatis. Doloribus quaerat ducimus, enim neque est eligendi officiis tempore accusamus, beatae debitis temporibus ab sunt optio nulla sint?</p>'
// ]);



