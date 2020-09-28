@extends('admin.layout')

@section('content')
   <div class="container  m-5 p-5">
       <div class="d-flex justify-content-between mb-4">
       <h5>Student  / Add Course</h5>
       <a class="btn btn-primary " href="{{route('admin.students.index')}}">back</a>
        </div>
        @include('admin.inc.errors')
    <form action="{{route('admin.students.storeCourse',$student_id)}}" method="post" >
            @csrf
            <input type="hidden" name="id" value="{{$student_id}}">
            <div class="form-group">
            <select name="course_id" class="form-control">
                @foreach ($courses as $course)
                <option value="{{$course->id}}">{{$course->name}}</option>
                @endforeach
            </select>     
        </div>

            <button type="submit" class="btn btn-success">Add</button>
        </form>
    </div> 
@endsection