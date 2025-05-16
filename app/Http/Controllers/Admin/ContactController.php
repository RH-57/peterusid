<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index() {
        $contacts = Contact::get();

        return view('admin.contact.index', compact('contacts'));
    }

    public function destroy(string $id) {
        $contacts = Contact::findOrFail($id);
        $contacts->delete();

        return redirect()->route('contacts.index')->with(['success', 'Pesan berhasil di hapus']);
    }
}
