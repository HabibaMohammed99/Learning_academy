@extends('admin.layout')

@section('content')
   <div class="container  m-5 p-5">
       <div class="d-flex justify-content-between mb-4">
       <h5>Trainer / Edit / {{$trainer->name}}</h5>
       <a class="btn btn-primary " href="{{route('admin.trainers.index')}}">back</a>
        </div>
        @include('admin.inc.errors')
    <form action="{{route('admin.trainers.update')}}" method="POST" enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="id" value="{{$trainer->id}}">
            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" value="{{$trainer->name}}" class="form-control"  >
            </div>
            <div class="form-group">
                <label>Phone</label>
                <input type="text" name="phone" value="{{$trainer->phone}}" class="form-control"  >
            </div>
            <div class="form-group">
                <label>Speciality</label>
                <input type="text" name="spec" value="{{$trainer->spec}}" class="form-control"  >
            </div>

        <img src="{{asset('uploads/trainers/'.$trainer->img)}}" height="100px" >
            <div class="form-group">
                <input type="file" name="img" class="form-control-file mt-2"  >
            </div>
            <button type="submit" class="btn btn-success">Update</button>
        </form>
    </div> 
@endsection