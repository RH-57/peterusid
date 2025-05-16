<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Education;
use Illuminate\Http\Request;

class EducationController extends Controller
{
    public function index() {
        $educations = Education::all();
        return view('admin.education.index', compact('educations'));
    }

    public function create()
    {
        return view('admin.education.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'start_year' => 'required|digits:4|integer',
            'end_year' => 'nullable|digits:4|integer',
            'institution' => 'required|string|max:255',
            'location' => 'required|string|max:255',
            'degree' => 'required|string|max:255',
            'field_of_study' => 'required|string|max:255',
            'description' => 'nullable|string',
        ]);

        Education::create($request->all());

        return redirect()->route('educations.index')->with('success', 'Education created successfully.');
    }

    public function edit(Education $education)
    {
        return view('admin.education.edit', compact('education'));
    }

    public function update(Request $request, Education $education)
    {
        $request->validate([
            'start_year' => 'required|digits:4|integer',
            'end_year' => 'nullable|digits:4|integer',
            'institution' => 'required|string|max:255',
            'location' => 'required|string|max:255',
            'degree' => 'required|string|max:255',
            'field_of_study' => 'required|string|max:255',
            'description' => 'nullable|string',
        ]);

        $education->update($request->all());

        return redirect()->route('educations.index')->with('success', 'Education updated successfully.');
    }

    public function destroy(Education $education)
    {
        $education->delete();

        return redirect()->route('educations.index')->with('success', 'Education deleted successfully.');
    }
}
