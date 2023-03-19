<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    //
    public function create(Request $req){
        $ceate = Employee::create([
            'name' => $req->name
        ]);
        if ($ceate) return response()->json('created successful!');
        return response()->json('Oops! something is wrong');
    }
}
