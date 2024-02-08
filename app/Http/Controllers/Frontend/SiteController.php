<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\add_job_post;
use App\Models\categories_topics;
use App\Models\Categories;
use App\Models\job_apply;
use App\Models\details;
use App\Models\hire_tusion;
use App\Models\message;
use carbon\carbon;
class SiteController extends Controller
{
    public function index(){
      $categories_active = Categories::where('status', 'Active')->get();
      $information = details::where('status', 'active')->get();
      return view('frontend/home', compact('categories_active', 'information'));
    }
    public function find_tutor(){
      $information = details::where('status', 'active')->get();
      $topics_all = categories_topics::where('status', 'Active')->get();
      $categories_active = Categories::where('status', 'Active')->get();
      return view('frontend/find_tutor', compact('categories_active', 'topics_all', 'information'));
    }
    public function job_board(Request $request){
      if($request->search){
        $add_job_post = add_job_post::where('location', 'LIKE', '%'.  $request->search .'%')->get();
      }
      else{
        $add_job_post = add_job_post::where('status', "Active")->get();
      }

      return view('frontend/job_board', compact('add_job_post'));
    }
    public function hire_tutor(){
      $categories_active = categories::where('status', 'Active')->get();
      return view('frontend/hire_tutor', compact('categories_active'));
    }
    public function about(){
      return view('frontend/about');
    }
    public function faq(){
      return view('frontend/faq');
    }

public function apply_job(Request $request){

  $request->validate([
    'job_post_id' => 'required',
    'user_id' => 'required',
  ]);
  if(job_apply::where('job_post_id',  $request->job_post_id)->where('user_id', $request->user_id)->exists()){
    return back()->with('message', 'You already Apply for Job');
  }
  else{
    job_apply::insert([
   'job_post_id'  => $request->job_post_id,
   'user_id'  => $request->user_id,
   'student_name'  => $request->student_name,
   'status'  => 'inactive',
   'created_at'  => carbon::now(),
 ]);
 return back()->with('message', "Apply for job successfully");
}

}

public function categories($id){
    $categories_active = categories::where('status', 'Active')->get();
  $information = details::where('categories_id', $id)->get();
  return view('frontend/categories', compact('categories_active', 'information'));
}
public function search(Request $request){
      $categories_active = categories::where('status', 'Active')->get();
  $search_value = $request->search;
  $information = details::where('designation', 'LIKE' , '%'. $search_value .'%')->Orwhere('address', 'LIKE' , '%'. $search_value .'%')->Orwhere('subject', 'LIKE' , '%'. $search_value .'%')->Orwhere('education', 'LIKE' , '%'. $search_value .'%')->Orwhere('salary', 'LIKE' , '%'. $search_value .'%')->get();
  return view('frontend/search', compact('information', 'categories_active'));
}

public function tutor_details($id){
  $value = details::findOrfail($id);
  return view('frontend/tutor_details', compact('value'));
}

public function tusion_apply(Request $request){
  if(hire_tusion::where('student_id',  $request->student_id)->where('tutor_id', $request->tutor_id)->exists()){
    return back()->with('message', 'You already Hire A tutor Request Sent');
  }
  else{

    hire_tusion::insert([
      'student_id' => $request->student_id,
      'tutor_id' => $request->tutor_id,
      'status' => 'inactive',
      'created_at' => carbon::now(),
    ]);
    return back()->with('message', 'Hire Tutor request successfully');
}

}

public function send_message(Request $request){
  echo "<pre>";
  print_r($request->all());
  $request->validate([
    'name'    =>'required',
    'phone'   =>'required',
    'message' =>'required',
  ]);
  message::insert([
    'name'    =>$request->name,
    'phone'   =>$request->phone,
    'message' =>$request->message,
    'created_at'=> carbon::now(),
  ]);
return back()->with('message', 'Send message successfully..');



}


}
