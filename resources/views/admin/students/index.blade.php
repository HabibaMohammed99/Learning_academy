@extends('admin.layout')

@section('content')
    
<div class="container m-5 p-5">
    <div class="d-flex justify-content-between mb-4">
        <h5>Students</h5>
    <a class="btn btn-warning" href="{{route('admin.students.create')}}">Add Students</a>
    </div>
    <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Spec</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($students as $student)        
                <tr>
                <th scope="row">{{$loop->iteration}}</th>
                <td>{{$student->name}}</td>                      
                <td>{{$student->email}}</td>                      
                <td>{{$student->spec}}</td>
                <td>
                    <a class="btn  btn-info" href="{{route('admin.students.edit' , $student->id)}}">Edit</a>
                    <a class="btn  btn-danger" href="{{route('admin.students.delete',$student->id)}}">Delete</a>
                    <a class="btn  btn-success" href="{{route('admin.students.showCourses',$student->id)}}">Show Courses</a>
                </td>
                </tr>
            @endforeach
        </tbody>
    </table>

</div>
@endsection