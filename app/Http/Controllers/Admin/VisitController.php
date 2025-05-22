<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Visit;
use Carbon\Carbon;
use Illuminate\Http\Request;

class VisitController extends Controller
{
    public function index()
    {
        $today = Carbon::today();

        $visits = Visit::whereDate('created_at', $today)
                    ->orderBy('created_at', 'desc')
                    ->paginate(10);

        return view('admin.visit.index', compact('visits'));
    }
}
