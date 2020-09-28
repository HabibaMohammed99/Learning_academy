@extends('admin.layout')

@section('content')
   <div class="container  m-5 p-5">
       <div class="d-flex justify-content-between mb-4">
       <h5>Categories / Edit / {{$cat->name}}</h5>
       <a class="btn btn-primary " href="{{route('admin.cats.index')}}">back</a>
        </div>
        @include('admin.inc.errors')
    <form action="{{route('admin.cats.update')}}" method="POST">
            @csrf
            <input type="hidden" name="id" value="{{$cat->id}}">
            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" value="{{$cat->name}}" class="form-control"  >
            </div>
            <button type="submit" class="btn btn-success">Update</button>
        </form>
    </div> 
@endsection