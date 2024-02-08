@extends('layouts.app')
@section('backend_content')
<div class="wrapper">
<div class="container-fluid ">
  <div class="row">

    <div class=" offset-4 col-md-4 bg-dark my-1">
        <div class="card-box">
            <h4 class="m-t-0 m-b-30 header-title">Edit categories topics</h4>
            @if(session('message'))
            <div class="alert alert-{{ session('type') }}">
                {{ session('message')}}
            </div>
            @endif
            <form action="{{route('Backend/update_job_post', $edit_data->id)}}" method="post">
              @csrf
              @method('PUT')
                <div class="form-group">
                  <label for="job_id">Job Id</label>
                  <input type="text" class="form-control" id="job_id" name="job_id"  placeholder="Enter job id" value="{{ $edit_data->job_id}}">
                </div>
                <div class="form-group">
                  <label for="student_name">Student name</label>
                  <input type="text" class="form-control" id="student_name" name="student_name"  placeholder="Enter Student Name" value="{{ $edit_data->student_name}}">
                </div>
                <div class="form-group">
                  <label for="gender">Gender</label>
                  <select class="form-select form-control" name="gender" id="gender">
                    <option value="male">.....select Gender....</option>
                    <option value="male" {{ $edit_data->gender? 'selected':''}}>Male</option>
                    <option value="female" {{ $edit_data->gender? 'selected':''}}>Female</option>
                    <option value="others" {{ $edit_data->gender? 'selected':''}}>Others</option>
                </select>
                </div>
                <div class="form-group">
                  <label for="categories">Categories</label>
                  <select class="form-select form-control" name="categories_id">
                        <option>....Select Your Categories....</option>
                        @foreach($categories_active as $value)
                        <option value="{{$value->id}}">{{$value->categories_name}}</option>
                        @endforeach

                      </select>
                </div>
                <div class="form-group">
                  <label for="job_heading">Job Heading</label>
                  <input type="text" class="form-control" id="job_heading" name="job_heading"  placeholder="Enter Job Heading" value="{{ $edit_data->job_heading}}">
                </div>
                <div class="form-group">
                  <label for="location">Location</label>
                  <input type="text" class="form-control" id="location" name="location"  placeholder="Enter Location" value="{{ $edit_data->location}}">
                </div>
                <div class="form-group">
                  <label for="salary">Salary</label>
                  <input type="text" class="form-control" id="salary" name="salary"  placeholder="Enter Salary" value="{{ $edit_data->salary}}">
                </div>
                <div class="form-group">
                  <label for="subject">Subject</label>
                  <input type="text" class="form-control" id="subject" name="subject"  placeholder="Enter Subject" value="{{ $edit_data->subject}}">
                </div>
                <div class="form-group">
                  <label for="in_details">In details</label>
                  <textarea name="in_details" class="form-control"  placeholder="Enter In details">{{ $edit_data->in_details}}</textarea>
                </div>
                <div class="form-group">
                <div class="form-check">
                        <input class="form-check-input" type="radio" name="status" id="Active" value="Active" {{ $edit_data->status == 'Active' ? 'checked':''}}>
                        <label class="form-check-label" for="Active">
                          Active
                        </label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="status" id="Inactive" value="Inactive" {{ $edit_data->status == 'Inactive' ? 'checked':''}}>
                        <label class="form-check-label" for="Inactive">
                          Inactive
                        </label>
                      </div>
                </div>
                  <button type="submit" class="btn btn-primary">Add Job Post</button>
             </form>
          </div>
      </div>
  </div>
</div>
</div>

@endsection
