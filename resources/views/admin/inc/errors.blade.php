@if ($errors->any())

<div class="alert alert-danger list-unstyled">
    @foreach ($errors->all() as $error)
    <li>{{$error}}</li>
    @endforeach
</div>
    
@endif