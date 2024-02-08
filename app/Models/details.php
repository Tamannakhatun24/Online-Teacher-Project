<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class details extends Model
{
    use HasFactory;
    protected $fillable = [
  'tutor_name',
  'gender',
  'categories_id',
  'designation',
  'education',
  'background',
  'salary',
  'address',
  'experience',
  'in_details',
  'photo',
  'phone',
  'status',
];

function datils_reletion_to_user(){
  return $this->hasOne('App\Models\User', 'id', 'tutor_name');
}




}
