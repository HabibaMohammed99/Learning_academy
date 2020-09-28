@extends('admin.layout')

@section('content')
   <div class="container  m-5 p-5">
       <div class="d-flex justify-content-between mb-4">
       <h5>Student / Edit / {{$student->name}}</h5>
       <a class="btn btn-primary " href="{{route('admin.students.index')}}">back</a>
        </div>
        @include('admin.inc.errors')
    <form action="{{route('admin.students.update')}}" method="POST" enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="id" value="{{$student->id}}">
            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" value="{{$student->name}}" class="form-control"  >
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" value="{{$student->email}}" class="form-control"  >
            </div>
            <div class="form-group">
                <label>Speciality</label>
                <input type="text" name="spec" value="{{$student->spec}}" class="form-control"  >
            </div>
            <button type="submit" class="btn btn-success">Update</button>
        </form>
    </div> 
@endsection