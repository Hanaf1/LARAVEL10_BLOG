@extends('layouts.main')

@section('container')
  <br>
  <div class="container ">
    <div class="row justify-content-center ">
      <div class="col-md-4">
        <h2>About</h2>
        <h3>{{ $name }}</h3>
        <p>{{ $email }}</p>
        <img src="img/{{ $image }}" alt="{{ $name }}" class="img-thumbnail rounded-circle img-fluid">
      </div>
      </div>
  </div>

@endsection

