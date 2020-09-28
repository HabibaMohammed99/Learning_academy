@extends('admin.layout')

@section('content')
    
<div class="container m-5 p-5">
    <div class="d-flex justify-content-between mb-4">
        <h5>Courses</h5>
        <div>
            <a class="btn btn-primary" href="{{route('admin.students.addCourse',$student_id)}}">Add course</a>
            <a class="btn btn-warning" href="{{route('admin.students.index')}}">back</a>
        </div>
    </div>

    <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Status</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($courses as $course)
            <tr>
                <th scope="row">{{$loop->iteration}}</th>
                <td>
                    {{$course->name}}
                </td>
                <td>
                    {{$course->pivot->status}}
                </td>  
                <td>
                    @if($course->pivot->status !== 'approve')
                        <a class="btn  btn-info" href="{{route('admin.students.approveCourse' ,[$student_id ,$course->id])}}">Approve</a>
                    @endif
                    
                    @if($course->pivot->status !== 'reject')
                      <a class="btn  btn-danger" href="{{route('admin.students.rejectCourse',[$student_id ,$course->id])}}">Reject</a>
                    @endif
                </td>
                </tr>
            @endforeach
        </tbody>
    </table>

</div>
@endsection