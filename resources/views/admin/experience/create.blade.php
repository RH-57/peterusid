<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Create Projects - Admin</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
    <link href="{{ asset('admin/img/favicon.png')}}" rel="icon">
  <link href="{{ asset('admin/img/apple-touch-icon.png')}}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{ asset('admin/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{ asset('admin/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
  <link href="{{ asset('admin/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
  <link href="{{ asset('admin/vendor/quill/quill.snow.css')}}" rel="stylesheet">
  <link href="{{ asset('admin/vendor/quill/quill.bubble.css')}}" rel="stylesheet">
  <link href="{{ asset('admin/vendor/remixicon/remixicon.css')}}" rel="stylesheet">
  <link href="{{ asset('admin/vendor/simple-datatables/style.css')}}" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="{{ asset('admin/css/style.css') }}" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  @include('admin.components.header')
  <!-- End Header -->

  <!-- ======= Sidebar ======= -->
  @include('admin.components.sidebar')
  <!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Add Experience</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{route('dashboard.index')}}">Home</a></li>
          <li class="breadcrumb-item"><a href="{{route('experiences.index')}}">Experiences</a></li>
          <li class="breadcrumb-item active">Create</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
        <div class="card">
            <div class="card-body pt-3">
                <form action="{{ route('experiences.store') }}" method="POST">
                    @csrf

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Company</label>
                        <div class="col-sm-6">
                            <input type="text" name="company" class="form-control" value="{{ old('company') }}">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Position</label>
                        <div class="col-sm-6">
                            <input type="text" name="position" class="form-control" value="{{ old('position') }}">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Start Year</label>
                        <div class="col-sm-6">
                            <input type="number" name="start_year" class="form-control" value="{{ old('start_year') }}">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">End Year</label>
                        <div class="col-sm-6">
                            <input type="number" name="end_year" id="end_year" class="form-control" value="{{ old('end_year') }}" {{ old('is_present') ? 'disabled' : '' }}>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label class="col-md-2 form-check-label" for="is_present">Present</label>
                        <div class="col-sm-6 form-check ">
                            <input class="form-check-input" type="checkbox" name="is_present" id="is_present" value="1" {{ old('is_present') ? 'checked' : '' }}>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Location</label>
                        <div class="col-sm-6">
                            <input type="text" name="location" class="form-control" value="{{ old('location') }}">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Description</label>
                        <div class="col-sm-6">
                            <textarea name="description" class="form-control" rows="3">{{ old('description') }}</textarea>
                        </div>
                    </div>

                    <div class="row mb-3">
                         <div class="col-sm-10 offset-sm-2">
                            <a href="{{ route('experiences.index') }}" class="btn btn-secondary">Cancel</a>
                            <button type="submit" class="btn btn-primary">Save</button>
                         </div>
                    </div>
                </form>
            </div>
        </div>
    </section>


  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  @include('admin.components.footer')
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="{{ asset('admin/vendor/apexcharts/apexcharts.min.js')}}"></script>
  <script src="{{ asset('admin/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{ asset('admin/vendor/chart.js/chart.umd.js')}}"></script>
  <script src="{{ asset('admin/vendor/echarts/echarts.min.js')}}"></script>
  <script src="{{ asset('admin/vendor/quill/quill.js')}}"></script>
  <script src="{{ asset('admin/vendor/simple-datatables/simple-datatables.js')}}"></script>
  <script src="{{ asset('admin/vendor/tinymce/tinymce.min.js')}}"></script>
  <script src="{{ asset('admin/vendor/php-email-form/validate.js')}}"></script>

  <!-- Template Main JS File -->
  <script src="{{ asset('admin/js/main.js')}}"></script>
  @push('scripts')
<script>
document.addEventListener('DOMContentLoaded', function () {
    const isPresentCheckbox = document.getElementById('is_present');
    const endYearInput = document.getElementById('end_year');

    function toggleEndYear() {
    endYearInput.disabled = isPresentCheckbox.checked;
    }

    isPresentCheckbox.addEventListener('change', toggleEndYear);
    toggleEndYear(); // Initial check
});
</script>
@endpush

</body>

</html>
