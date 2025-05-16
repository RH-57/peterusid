<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Skill;
use Illuminate\Http\Request;

class SkillController extends Controller
{
    public function index() {
        $skills = Skill::all();
        return view('admin.skill.index', compact('skills'));
    }

    public function create() {
        return view('admin.skill.create');
    }

    public function store(Request $request) {
        $request->validate([
            'name'  => 'required|min:3'
        ]);

        Skill::create([
            'name'  => $request->name,
        ]);

        return redirect()->route('skills.index')->with(['success', 'Skill berhasil ditambahkan']);

    }

    public function edit(string $id) {
        $skills = Skill::findOrFail($id);

        return view('admin.skill.edit', compact('skills'));
    }

    public function update(Request $request, string $id) {
        $skills = Skill::findOrFail($id);

        $request->validate([
            'name'  => 'required|min:3',
        ]);

        $skills->name = $request->name;
        $skills->save();

        return redirect()->route('skills.index')->with(['success', 'Skill berhasil di update']);
    }

    public function destroy(string $id) {
        $skills = Skill::findOrFail($id);
        $skills->delete();

        return redirect()->route('skills.index')->with(['success', 'Skill berhasil di hapus']);
    }
}
