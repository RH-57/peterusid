<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\About;
use App\Models\Visit;
use Illuminate\Http\Request;

class WebHomeController extends Controller
{
    public function index(Request $request)
    {
        Visit::create([
            'ip_address' => $request->ip(),
            'user_agent' => $request->header('User-Agent')
        ]);

        $abouts = About::first();
        return view('web.index', compact(['abouts']));
    }
}
