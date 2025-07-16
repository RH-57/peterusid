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

    public function searchUrls(Request $request) {
        $query = Url::query();

        if ($request->filled('url')) {
            $query->where('url', 'like', '%' . $request->url . '%');
        }

        if ($request->filled('date')) {
            $query->whereDate('last_use', $request->date);
        }

        $urls = $query->orderByDesc('last_use')->limit(10)->get();

        return response()->json([
            'html' => view('admin.components.url_table', compact('urls'))->render()
        ]);
    }
}
