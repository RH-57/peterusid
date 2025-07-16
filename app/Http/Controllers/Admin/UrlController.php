<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Url;
use Illuminate\Http\Request;
use Carbon\Carbon;

class UrlController extends Controller
{
    public function index() {
        $urls = Url::orderByDesc('last_use')->paginate(10);
        return view('admin.url.index', compact('urls'));
    }

    public function create() {
        return view('admin.url.create');
    }

    public function store(Request $request) {
        $request->validate([
            'group'         => 'required|string|max:10',
            'name'          => 'required|string|max:30',
            'url'           => 'required|string|max:2048',
            'description'   => 'nullable|string',
            'status'        => 'nullable|in:active,inactive',
        ]);

        Url::create([
            'group'         => $request->group,
            'name'          => $request->name,
            'url'           => $request->url,
            'description'   => $request->description,
            'status'        => $request->status === 'active' ? 'active' : 'inactive',
            'last_use'      => null,
        ]);

        return redirect()->route('urls.index')->with('success', 'URL Successfully Added');
    }

    public function edit(string $id) {
        $urls = Url::findOrFail($id);

        return view('admin.url.edit', compact('urls'));
    }

    public function update(Request $request, string $id) {
        $urls = Url::findOrFail($id);

        $request->validate([
            'group'         => 'required|string|max:10',
            'name'          => 'required|string|max:30',
            'url'           => 'required|string|max:2048',
            'description'   => 'nullable|string',
        ]);

        $urls->update([
            'group'       => $request->group,
            'name'        => $request->name,
            'url'         => $request->url,
            'description' => $request->description,
            'status'      => $request->has('status') ? 'active' : 'inactive',
        ]);

        return redirect()->route('urls.index')->with('success', 'URL Successfully Added');

    }

    public function destroy(string $id) {
        $urls = Url::findOrFail($id);
        $urls->delete();

        return redirect()->route('urls.index')->with('success', 'URL Successfully Deleted');
    }

    public function redirect($id)
    {
        $url = Url::findOrFail($id);

        // Update last_use ke waktu saat ini
        $url->update([
            'last_use' => Carbon::now(),
        ]);

        // Redirect ke URL asli
        return redirect()->away($url->url);
    }

    public function search(Request $request)
    {
        $query = Url::query();

        if ($request->has('q')) {
            $q = $request->q;
            $query->where(function ($subQuery) use ($q) {
                $subQuery->where('group', 'like', "%$q%")
                        ->orWhere('name', 'like', "%$q%");
            });
        }

        $urls = $query->orderByDesc('last_use')->paginate(10);

        return response()->json([
            'html' => view('admin.url.components.table', compact('urls'))->render()
        ], 200, ['Content-Type' => 'application/json']);
    }

}
