<?php

use App\Http\Controllers\Admin\AboutController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\EducationController;
use App\Http\Controllers\Admin\ExperienceController;
use App\Http\Controllers\Admin\LanguageController;
use App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\Admin\ProjectController;
use App\Http\Controllers\Admin\SkillController;
use App\Http\Controllers\Admin\VisitController;
use App\Http\Controllers\Web\WebContactController;
use App\Http\Controllers\Web\WebHomeController;
use App\Http\Controllers\Web\WebProjectController;
use App\Http\Controllers\Web\WebResumeController;
use Illuminate\Support\Facades\Route;

Route::middleware('guest')->group(function () {
    Route::get('/login', [LoginController::class, 'show'])->name('login.show');
    Route::post('/login', [LoginController::class, 'login'])->name('login');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard.index');
    Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

    Route::get('/about', [AboutController::class, 'index'])->name('about.index');
    Route::get('/about/edit', [AboutController::class, 'edit'])->name('about.edit');
    Route::put('/about', [AboutController::class, 'update'])->name('about.update');

    Route::resource('/projects', ProjectController::class);
    Route::resource('/educations', EducationController::class);
    Route::resource('/experiences', ExperienceController::class);
    Route::resource('/skills', SkillController::class);
    Route::resource('/languages', LanguageController::class);
    Route::resource('/contacts', ContactController::class);

    Route::get('/visits', [VisitController::class, 'index'])->name('visit.index');

});

Route::get('/', [WebHomeController::class, 'index'])->name('webhome.index');
Route::get('/resume', [WebResumeController::class, 'index'])->name('webresume.index');
Route::get('/project', [WebProjectController::class, 'index'])->name('webproject.index');
Route::get('/contact', [WebContactController::class, 'index'])->name('webcontact.index');
Route::post('/contact', [WebContactController::class, 'store'])->name('webcontact.store');
Route::get('/cek-env', function () {
    return [
        'env_app_url' => env('APP_URL'),
        'config_app_url' => config('app.url'),
        'current_url' => url('/'),
        'route_url' => route('home'), // Ganti 'home' jika tidak ada
    ];
});
