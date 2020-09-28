@extends('admin.layout')

@section('content')
   <div class="conta m-5 p-5">
       <div class="d-flex justify-content-between mb-4">
           <h5>Trainer/Add New</h5>
       <a class="btn btn-success " href="{{route('admin.trainers.index')}}">Back</a>
        </div>
        @include('admin.inc.errors')
    <form method="post" action="{{route('admin.trainers.store')}}" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" class="form-control"  >
            </div>
            <div class="form-group">
                <label>Phone</label>
                <input type="text" name="phone" class="form-control"  >
            </div>
            <div class="form-group">
                <label>Speciality</label>
                <input type="text" name="spec" class="form-control"  >
            </div>
            <div class="form-group">
                <input type="file" name="img" class="form-control-file"  >
            </div>
            <button type="submit" class="btn btn-primary">Add</button>
        </form>
    </div> 
@endsection