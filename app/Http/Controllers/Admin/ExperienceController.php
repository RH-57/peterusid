<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Experience;
use Illuminate\Http\Request;

class ExperienceController extends Controller
{
    public function index() {
        $experiences = Experience::all();
        return view('admin.experience.index', compact('experiences'));
    }

    public function create() {
        return view('admin.experience.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'start_year' => 'required|integer',
            'end_year' => 'nullable|integer',
            'position' => 'required|string|min:3',
            'company' => 'required|string|min:3',
            'location' => 'required|string',
            'description' => 'nullable|string',
            'is_present' => 'boolean',
        ]);

        Experience::create($request->all());

        return redirect()->route('experiences.index')->with('success', 'Experience berhasil ditambahkan');
    }

    public function edit($id)
    {
        $experience = Experience::findOrFail($id);
        return view('admin.experience.edit', compact('experience'));
    }

    public function update(Request $request, $id)
    {
        $experience = Experience::findOrFail($id);

        $request->validate([
            'start_year' => 'required|integer',
            'end_year' => 'nullable|integer',
            'position' => 'required|string|min:3',
            'company' => 'required|string|min:3',
            'location' => 'required|string',
            'description' => 'nullable|string',
            'is_present' => 'boolean',
        ]);

        $experience->update($request->all());

        return redirect()->route('experiences.index')->with('success', 'Experience berhasil diperbarui');
    }

    public function destroy($id)
    {
        $experience = Experience::findOrFail($id);
        $experience->delete();

        return redirect()->route('experiences.index')->with('success', 'Experience berhasil dihapus');
    }
}
