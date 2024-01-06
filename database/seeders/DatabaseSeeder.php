<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        // factory data dumpy

        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        User::create([
            'name' => 'hanafi',
            'username' => 'nafi',
            'email' => 'starnafi4@gmail.com',
            'password' => bcrypt('Riverver57')
        ]);
        // User::create([
        //     'name' => 'rivert',
        //     'email' => 'agata@gmail.com',
        //     'password' => bcrypt('75818598')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming',
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal',
        ]);

        Category::create([
            'name' => 'entertaiment',
            'slug' => 'entertaiment',
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'judul pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio veritatis omnis tempora fuga iure sunt totam ab ipsam quas eos architecto quia, iste maiores? Pariatur sed reprehenderit perferendis, officia totam quaerat qui eius. Eaque perferendis fuga necessitatibus! Blanditiis necessitatibus pariatur impedit quidem delectus debitis illo esse id nisi laboriosam suscipit nulla excepturi rerum dicta dolorum minima quas magnam quaerat, animi dignissimos, modi saepe alias nihil! Reiciendis, delectus provident. Quisquam distinctio, sequi fugit dolorem a accusantium hic eaque impedit at beatae possimus dolore nulla ipsum voluptatum autem nihil rem eveniet magnam perspiciatis minima? Natus fugit quae modi hic laborum magnam labore!',
        //     'category_id' => 2,
        //     'user_id' => 1,
        // ]);
        // Post::create([
        //     'title' => 'judul kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio veritatis omnis tempora fuga iure sunt totam ab ipsam quas eos architecto quia, iste maiores? Pariatur sed reprehenderit perferendis, officia totam quaerat qui eius. Eaque perferendis fuga necessitatibus! Blanditiis necessitatibus pariatur impedit quidem delectus debitis illo esse id nisi laboriosam suscipit nulla excepturi rerum dicta dolorum minima quas magnam quaerat, animi dignissimos, modi saepe alias nihil! Reiciendis, delectus provident. Quisquam distinctio, sequi fugit dolorem a accusantium hic eaque impedit at beatae possimus dolore nulla ipsum voluptatum autem nihil rem eveniet magnam perspiciatis minima? Natus fugit quae modi hic laborum magnam labore!',
        //     'category_id' => 1,
        //     'user_id' => 1,
        // ]);
        
        // Post::create([
        //     'title' => 'judul ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio veritatis omnis tempora fuga iure sunt totam ab ipsam quas eos architecto quia, iste maiores? Pariatur sed reprehenderit perferendis, officia totam quaerat qui eius. Eaque perferendis fuga necessitatibus! Blanditiis necessitatibus pariatur impedit quidem delectus debitis illo esse id nisi laboriosam suscipit nulla excepturi rerum dicta dolorum minima quas magnam quaerat, animi dignissimos, modi saepe alias nihil! Reiciendis, delectus provident. Quisquam distinctio, sequi fugit dolorem a accusantium hic eaque impedit at beatae possimus dolore nulla ipsum voluptatum autem nihil rem eveniet magnam perspiciatis minima? Natus fugit quae modi hic laborum magnam labore!',
        //     'category_id' => 2,
        //     'user_id' => 3,
        // ]);
    }
}
