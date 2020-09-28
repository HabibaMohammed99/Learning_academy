@extends('admin.layout')

@section('content')
    
<div class="container m-5 p-5">
    <div class="d-flex justify-content-between mb-4">
        <h5>Courses</h5>
    <a class="btn btn-warning" href="{{route('admin.courses.create')}}">Add Course</a>
    </div>
    <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Img</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($courses as $course)        
                <tr>
                <th scope="row">{{$loop->iteration}}</th>
                <td>
                <img src="{{asset('uploads/courses/'.$course->img)}}" height="70px" width="120px" alt="">
                </td>
                <td>{{$course->name}}</td>
                <td>{{$course->price}}</td>                       
                <td>
                    <a class="btn  btn-info" href="{{route('admin.courses.edit' , $course->id)}}">Edit</a>
                    <a class="btn  btn-danger" href="{{route('admin.courses.delete',$course->id)}}">Delete</a>
                </td>
                </tr>
            @endforeach
        </tbody>
      </table>

</div>
@endsection