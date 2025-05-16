<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Project;
use Illuminate\Http\Request;

class WebProjectController extends Controller
{
    public function index() {

        $projects = Project::all();
        return view('web.projects', compact('projects'));
    }
}
