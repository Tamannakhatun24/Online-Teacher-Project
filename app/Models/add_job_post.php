<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class add_job_post extends Model
{
    use HasFactory;
protected $fillable =
[
'job_id',
'student_name',
'categories_id',
'job_heading',
'location',
'salary',
'subject',
'in_details',
'status',
];
}
