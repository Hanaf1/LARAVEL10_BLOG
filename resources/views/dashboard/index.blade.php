@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <h2 class=""> Welcome back, {{ auth()->user()->name }}</h2>

    </div>

    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit a nemo, laborum est pariatur eum soluta enim. Odio explicabo optio debitis officia provident, eius quo culpa aliquid fugit, quos corporis ducimus minima reprehenderit cum temporibus distinctio in nulla esse ad commodi? Reprehenderit sint provident laudantium quasi nemo, beatae magnam, ad sequi consectetur commodi nam quo delectus tenetur ab, excepturi iste quae totam libero nobis ipsam rem. Beatae id minus expedita. Beatae placeat doloribus voluptatum nostrum tenetur neque, numquam ipsa, inventore quos dignissimos ullam eius, nulla veritatis quaerat? Debitis, voluptatum aperiam culpa consequatur adipisci, magni, est doloremque saepe rerum labore ipsa!</p>
@endsection