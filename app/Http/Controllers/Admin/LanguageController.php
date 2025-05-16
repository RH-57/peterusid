<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Language;
use Illuminate\Http\Request;

class LanguageController extends Controller
{
    public function index() {
        $languages = Language::all();

        return view('admin.language.index', compact('languages'));
    }

    public function create() {
        return view('admin.language.create');
    }

    public function store(Request $request) {
        $request->validate([
            'name'  => 'required|min:3',
        ]);

        Language::create([
            'name'  => $request->name,
        ]);

        return redirect()->route('languages.index')->with(['success', 'Bahasa berhasil ditambah']);
    }

    public function edit(string $id) {
        $languages = Language::findOrFail($id);

        return view('admin.language.edit', compact('languages'));
    }

    public function update(Request $request, string $id) {
        $languages = Language::findOrFail($id);

        $request->validate([
            'name'  => 'required|min:3',
        ]);

        $languages->name = $request->name;
        $languages->save();

        return redirect()->route('languages.index')->with(['success', 'Language berhasil di update']);
    }

    public function destroy(string $id) {
        $languages = Language::findOrFail($id);
        $languages->delete();

        return redirect()->route('languages.index')->with(['success', 'Language berhasil di hapus']);
    }
}
