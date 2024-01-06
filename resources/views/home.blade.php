@extends('layouts.main')

@section('container')
  <br>
  <h1>Homepage</h1>
  
  <br>
<div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    {{-- @foreach($categories as $category)
    <div class="carousel-item active">
      <img src="https://source.unsplash.com/1200x500?{{ $category->name}}" class="card-img" alt="{{ $category->name}}">
    </div>
    @endforeach --}}
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
@endsection
    
