@extends('admin.layout')

@section('content')
   <div class="container  m-5 p-5">
       <div class="d-flex justify-content-between mb-4">
       <h5>Course / Edit / {{$course->name}}</h5>
       <a class="btn btn-primary " href="{{route('admin.courses.index')}}">back</a>
        </div>
        @include('admin.inc.errors')
    <form action="{{route('admin.courses.update')}}" method="POST" enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="id" value="{{$course->id}}">
            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" value="{{$course->name}}" class="form-control"  >
            </div>
            <select name="cat_id" class="form-control my-3">
                @foreach ($cats as $cat)
                    <option value="{{$cat->id}}" @if($course->cat_id == $cat->id) selected @endif>{{$cat->name}}</option>
                @endforeach
            </select>
            <select name="trainer_id" class="form-control mb-3">
                @foreach ($trainers as $trainer)
                    <option value="{{$trainer->id}}" @if($course->trainer_id == $trainer->id) selected @endif>{{$trainer->name}}</option>
                @endforeach
            </select>
            <div class="form-group">
                <label>Small desc</label>
                <input type="text" name="small_desc" class="form-control" value="{{$course->small_desc}}"  >
            </div>
            <div class="form-group">
                <label>Desc</label>
                <textarea name="desc" class="form-control" cols="10" rows="7">value="{{$course->desc}}"</textarea>
            </div>
            <div class="form-group">
                <label>Price</label>
                <input type="number" name="price" value="{{$course->price}}" class="form-control"  >
            </div>
        <img src="{{asset('uploads/courses/'.$course->img)}}" height="100px" >
            <div class="form-group">
                <input type="file" name="img" class="form-control-file mt-2"  >
            </div>
            <button type="submit" class="btn btn-success">Update</button>
        </form>
    </div> 
@endsection