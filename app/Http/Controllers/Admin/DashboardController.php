<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Url;
use App\Models\Visit;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index() {

        $visits = Visit::distinct('ip_address')->count();
        $urls = Url::where('status', 'active')->orderByDesc('last_use')->get();

        return view('admin.index', compact('visits', 'urls'));
    }
}
