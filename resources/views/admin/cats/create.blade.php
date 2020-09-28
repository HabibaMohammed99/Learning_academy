@extends('admin.layout')

@section('content')
   <div class="conta m-5 p-5">
       <div class="d-flex justify-content-between mb-4">
           <h5>Categories /Add New</h5>
       <a class="btn btn-success " href="{{route('admin.cats.index')}}">Add Category</a>
        </div>
        @include('admin.inc.errors')
    <form method="post" action="{{route('admin.cats.store')}}">
            @csrf
            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" class="form-control"  >
            </div>
            <button type="submit" class="btn btn-primary">Add</button>
        </form>
    </div> 
@endsection