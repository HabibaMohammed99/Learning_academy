@extends('admin.layout')

@section('content')
    
<div class="container m-5 p-5">
    <div class="d-flex justify-content-between mb-4">
        <h5>Categories</h5>
    <a class="btn btn-warning" href="{{route('admin.cats.create')}}">Add Category</a>
    </div>
    <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($cats as $cat)        
                <tr>
                <th scope="row">{{$loop->iteration}}</th>
                <td>{{$cat->name}}</td>
                <td>
                    <a class="btn  btn-info" href="{{route('admin.cats.edit' , $cat->id)}}">Edit</a>
                    <a class="btn  btn-danger" href="{{route('admin.cats.delete',$cat->id)}}">Edit</a>
                </td>
                </tr>
            @endforeach
        </tbody>
      </table>

</div>
@endsection