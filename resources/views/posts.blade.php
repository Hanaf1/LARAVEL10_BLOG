@extends('layouts/main')

@section('container')
    <h1 class="mb-3 text-center">{{ $title }}</h1>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="/posts">
                @if(request('category'))
                    <input type="hidden" name="category" value="{{ request('category') }}">
                @endif
                @if(request('author'))
                    <input type="hidden" name="author" value="{{ request('author') }}">
                @endif
            <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="Search" name="search" value="{{ request('search') }}">
            <button class="btn btn-secondary" type="submit">Search</button>
            </div>
            </form>
        </div>
    </div>

    @if(($posts->count()))
    <div class="card mb-3">
        @if ($posts[0]->image)
        <div style="max-height:400px; overflow:hidden">
        <img src="{{ asset('storage/' . $posts[0]->image) }}" alt="{{ $posts[0]->category->name}}" class="img-fluid">
        </div>
        @else
        <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->name}}" style="width: 100%; height: 100%; object-fit: cover;" alt="{{ $posts[0]->category->name}}">
        @endif




    <div class="card-body text-center">
        <h3 class="card-title"><a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h3>
          <p>
            <small class="text-muted">
                By.
                @if ($posts[0]->author)
                    <a href="/posts?author={{ $posts[0]->author->username }}" class="text-decoration-none">{{ $posts[0]->author->name }}</a>
                @else
                    Unknown User
                @endif
                in
                @if ($posts[0]->category)
                    <a href="/posts?category={{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a>
                @else
                    Uncategorized
                @endif
                {{ $posts[0]->created_at->diffForHumans() }}
            </small>
            </p>
                <p class="card-text">{{ $posts[0]->excerpt}}</p>
            
                <a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none bnt btn-primary">Read More</a>
    </div>
    </div>
   


    <div class="container">
        <div class="row">
            @foreach($posts->skip(1) as $item)
        <div class="col-md-4 mb-3">
            <div class="card">
             <div class="position-absolute px-3 py-2 text-white" style="background-color: rgba(0,0,0,0.5)"><a class="text-decoration-none text-white" href="/posts?category={{ $item->category->slug }}">{{ $item->category->name }}</a></div>
               @if ($item->image)
                 <img src="{{ asset('storage/' . $item->image) }}" alt="{{ $item->category->name}}" class="img-fluid">
                @else
                <img src="https://source.unsplash.com/500x400?>{{ $item->category->name}}" style="width: 100%; height: 100%; object-fit: cover;" alt="{{ $item->category->name}}">
                @endif
            <div class="card-body">
                <h5 class="card-title">{{ $item->title }}</h5>
                <small class="text-muted">
                By.
                @if ($item->author)
                    <a href="/posts?author={{ $item->author->username }}" class="text-decoration-none">{{ $item->author->name }}</a>
                @else
                    Unknown User
                @endif
                in
                {{ $item->created_at->diffForHumans() }}
            </small>
                <p class="card-text">{{ $item->excerpt }}</p>
                <a href="/posts/{{ $item->slug }}" class="btn btn-primary">Read Me</a>
            </div>
            </div>
        </div>
            @endforeach
        </div>
    </div>

@else
<p class="text-center fs-4">No Post found</p>
@endif

{{-- penerapan links --}}
<div class="d-flex justify-content-end">
    {{ $posts->links() }}
</div>

@endsection


