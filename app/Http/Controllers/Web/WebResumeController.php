<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Education;
use App\Models\Experience;
use App\Models\Language;
use App\Models\Skill;
use Illuminate\Http\Request;

class WebResumeController extends Controller
{
    public function index() {

        $educations = Education::all();
        $experiences = Experience::all();
        $skills = Skill::all();
        $languages = Language::all();
        return view('web.resume', compact(['educations', 'experiences', 'skills', 'languages']));
    }
}
