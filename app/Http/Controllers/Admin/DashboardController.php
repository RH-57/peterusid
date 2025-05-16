<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Visit;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index() {

        $visits = Visit::count();

        return view('admin.index', compact('visits'));
    }
}
