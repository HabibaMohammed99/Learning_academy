<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="{{route('admin.home')}}">AdminDashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item ">
            <a class="nav-link navbar-brand active" href="{{route('admin.cats.index')}}">Categories </a>
            </li>
            <li class="nav-item ">
              <a class="nav-link navbar-brand active" href="{{route('admin.trainers.index')}}">Trainers </a>
            </li>
            <li class="nav-item ">
              <a class="nav-link navbar-brand active" href="{{route('admin.courses.index')}}">Courses </a>
            </li>
            <li class="nav-item ">
              <a class="nav-link navbar-brand active" href="{{route('admin.students.index')}}">Students </a>
            </li>
          </ul>
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
            <a href="{{route('admin.login')}}" class="nav-link">LogOut</a>
            </li>
          </ul>
          
          
        </div>
      </nav>