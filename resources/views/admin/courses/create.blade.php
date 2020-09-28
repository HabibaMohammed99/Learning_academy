@extends('admin.layout')

@section('content')
   <div class="conta m-5 p-5">
       <div class="d-flex justify-content-between mb-4">
           <h5>Course/Add New</h5>
       <a class="btn btn-success " href="{{route('admin.courses.index')}}">Back</a>
        </div>
        @include('admin.inc.errors')
    <form method="post" action="{{route('admin.courses.store')}}" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" class="form-control"  >
            </div>

            <select name="cat_id" class="form-control my-3">
                @foreach ($cats as $cat)
                    <option value="{{$cat->id}}">{{$cat->name}}</option>
                @endforeach
            </select>
            <select name="trainer_id" class="form-control mb-3">
                @foreach ($trainers as $trainer)
                    <option value="{{$trainer->id}}">{{$trainer->name}}</option>
                @endforeach
            </select>

            <div class="form-group">
                <label>Small desc</label>
                <input type="text" name="small_desc" class="form-control"  >
            </div>
            <div class="form-group">
                <label>Desc</label>
                <textarea name="desc" class="form-control" cols="10" rows="7"></textarea>
            </div>
            <div class="form-group">
                <label>Price</label>
                <input type="number" name="price" class="form-control"  >
            </div>
            <div class="form-group">
                <input type="file" name="img" class="form-control-file"  >
            </div>
            <button type="submit" class="btn btn-primary">Add</button>
        </form>
    </div> 
@endsection