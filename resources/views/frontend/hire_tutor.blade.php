@extends('layouts.Frontend.app')
@section('content')

<!-- hire section -->
	<section class="py-4">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<h2 class="hire-head">Hire right tutor in your location today.</h2>
					<h4 class="text-info">গৃহশিক্ষক পেতে ফর্মটি পুরন করুন ...</h4>
					<p>(Teacher will contact to your given phone number)</p>
					<div class="card bg-info">
						<div class="card-body hire-card">
								@if(session('message'))
		            <div class="alert alert-info">
		                {{ session('message')}}
		            </div>
		            @endif
								<form action="{{route('Backend/add_job_posts_insert')}}" method="post">
		              @csrf
		                <div class="form-group" hidden>
		                  <label for="job_id">Job Id</label>
		                  <input type="text" class="form-control" id="job_id" name="job_id"  placeholder="Enter job id" value="{{ old('job_id')}}">
		                </div>
		                <div class="form-group">
		                  <label for="student_name">Student name</label>
											@guest
											<input type="text" class="form-control" disabled>
											@endguest
										@auth
											<input type="text" class="form-control"  value="{{ Auth::user()->name }}" disabled>
											<input type="hidden" class="form-control" id="student_name" name="student_name"  placeholder="Enter Student Name" value="{{ Auth::user()->id }}">
										@endauth
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
		                  <input type="text" class="form-control" id="job_heading" name="job_heading"  placeholder="Enter Job Heading" value="{{ old('job_heading')}}">
		                </div>
		                <div class="form-group">
		                  <label for="location">Location</label>
		                  <input type="text" class="form-control" id="location" name="location"  placeholder="Enter Location" value="{{ old('location')}}">
		                </div>

		                <div class="form-group">
		                  <label for="salary">Salary</label>
		                  <input type="text" class="form-control" id="salary" name="salary"  placeholder="Enter Salary" value="{{ old('salary')}}">
		                </div>
		                <div class="form-group">
		                  <label for="subject">Subject</label>
		                  <input type="text" class="form-control" id="subject" name="subject"  placeholder="Enter Subject" value="{{ old('subject')}}">
		                </div>
		                <div class="form-group">
		                  <label for="in_details">In details</label>
		                  <textarea name="in_details" class="form-control"  placeholder="Enter In details">{{ old('in_details')}}</textarea>
		                </div>

											@guest
											<a href="#">Please log-In than Hire Tutor</a>
											@endguest
		                  @auth
											<button type="submit" class="btn btn-secondary">Submit</button>
		                  @endauth
											</div>
		              </form>
							</div>
							</div>
				<div class="col-md-4">
					<div class="card">
						<div class="card-body">
							<h5 class="hire-sidebar">WHY POST A TUTOR CIRCULAR..</h5>
							<p class="hire-sidebar-pera"><strong>Last update: January 17, 2022</strong></p>
							<ol type="1" class="hire-sidebar-paragraph">
								<li>Post a circular is better than send a message to the tutor.</li>
								<li>If you post a circular than qualified tutor may apply for this job.</li>
								<li>Our support team can estimate which tutor may surve best.</li>
								<li>Finally you are notified by us through phone call.<br>© Note: All rights reserved.</li>
							</ol>
							<div class="py-2">
								<div class="card">
									<div class="card-body">
										<h5 class="hire-sidebar">Guardian recommendation</h5>
										<img src="{{asset('asset/Frontend/images/h-1.png')}}"">
										<p class="mt-2">It's simple to search a tutor here Very helpfull this site I trust their speech Thank u onlinetutors.com</p>
									</div>
								</div>
							</div>
							<div class="py-2">
								<div class="card">
									<div class="card-body">
										<h5 class="hire-sidebar">Guardian recommendation</h5>
										<img src="{{asset('asset/Frontend/images/h-2.png')}}"">
										<p class="mt-2">This platform is really helpfull I found my home tutor here Best wishes to onlinetutors.com Great job Guardian recommendation</p>
									</div>
								</div>
							</div>
							<div class="py-2">
								<div class="card">
									<div class="card-body">
										<h5 class="hire-sidebar">Guardian recommendation</h5>
										<img src="{{asset('asset/Frontend/images/h-3.png')}}"">
										<p class="mt-2">Hlw people It's easy to find tutor here i found several tutor here Bravo onlinetutors.com</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

@endsection
