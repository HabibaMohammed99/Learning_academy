@extends('admin.layout')

@section('content')
    
<div class="container m-5 p-5">
    <div class="d-flex justify-content-between mb-4">
        <h5>Trainers</h5>
    <a class="btn btn-warning" href="{{route('admin.trainers.create')}}">Add Trainer</a>
    </div>
    <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Img</th>
            <th scope="col">Name</th>
            <th scope="col">Phone</th>
            <th scope="col">Spec</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($trainers as $trainer)        
                <tr>
                <th scope="row">{{$loop->iteration}}</th>
                <td>
                <img src="{{asset('uploads/trainers/'.$trainer->img)}}" alt="">
                </td>
                <td>{{$trainer->name}}</td>
                <td>
                  @if ($trainer->phone !==null)
                  {{$trainer->phone}}
                  @else
                  no phone number founded                  
                  @endif
                </td>                        
                <td>{{$trainer->spec}}</td>
                <td>
                    <a class="btn  btn-info" href="{{route('admin.trainers.edit' , $trainer->id)}}">Edit</a>
                    <a class="btn  btn-danger" href="{{route('admin.trainers.delete',$trainer->id)}}">Delete</a>
                </td>
                </tr>
            @endforeach
        </tbody>
      </table>

</div>
@endsection