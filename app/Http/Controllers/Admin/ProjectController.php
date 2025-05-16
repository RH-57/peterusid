<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProjectController extends Controller
{
    public function index() {
        $projects = Project::all();
        return view('admin.project.index', compact('projects'));
    }

    public function create() {
        return view('admin.project.create');
    }

    public function store(Request $request) {
        $request->validate([
            'image'         => 'required|image|mimes:jpeg,jpg,png|max:2048',
            'name'          => 'required|min:3',
            'description'   => 'required|min:10'
        ]);

        $image = $request->file('image');
        $image->storeAs('projects', $image->hashName(), 'public');

        Project::create([
            'image'         => $image->hashName(),
            'name'          => $request->name,
            'description'   => $request->description,
        ]);

        return redirect()->route('projects.index')->with(['success', 'Data Berhasil Disimpan']);
    }

    public function edit(string $id) {

        $projects = Project::findOrFail($id);

        return view('admin.project.edit', compact('projects'));
    }

    public function update(Request $request, string $id)
    {
        $project = Project::findOrFail($id);

        $request->validate([
            'image'         => 'nullable|image|mimes:jpeg,jpg,png|max:2048',
            'name'          => 'required|min:3',
            'description'   => 'required|min:10'
        ]);

        // Jika ada file baru
        if ($request->hasFile('image')) {
            // Hapus gambar lama
            Storage::disk('public')->delete('projects/' . $project->image);

            // Simpan gambar baru
            $image = $request->file('image');
            $image->storeAs('projects', $image->hashName(), 'public');

            $project->image = $image->hashName();
        }

        // Update data lainnya
        $project->name = $request->name;
        $project->description = $request->description;
        $project->save();

        return redirect()->route('projects.index')->with('success', 'Data berhasil diperbarui');
    }

    public function destroy(string $id)
    {
        $project = Project::findOrFail($id);

        // Hapus gambar
        if ($project->image) {
            Storage::disk('public')->delete('projects/' . $project->image);
        }

        $project->delete();

        return redirect()->route('projects.index')->with('success', 'Data berhasil dihapus');
    }

}
