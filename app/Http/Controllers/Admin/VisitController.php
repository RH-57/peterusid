<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Visit;
use Illuminate\Http\Request;

class VisitController extends Controller
{
    public function index() {
        $visits = Visit::orderBy('created_at', 'desc')->paginate(10);
        return view('admin.visit.index', compact('visits'));
    }
}
