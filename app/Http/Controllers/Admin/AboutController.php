<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\About;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index() {

        $about = About::first();
        return view('admin.about.index', compact('about'));
    }

    public function edit() {
        $about = About::first();
        return view('admin.about.edit', compact('about'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'headline' => 'required|string|max:255',
            'description' => 'required|string',
        ]);

        $about = About::first();
        $about->update([
            'headline' => $request->headline,
            'description' => $request->description,
        ]);

        return redirect()->route('about.index')->with('success', 'About updated successfully.');
    }
}
