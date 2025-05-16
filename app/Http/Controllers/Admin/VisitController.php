<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Visit;
use Illuminate\Http\Request;

class VisitController extends Controller
{
    public function index() {
        $visits = Visit::all();
        return view('admin.visit.index', compact('visits'));
    }
}
