<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>URL - Admin</title>
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
      <h1>URL Page</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">URLs</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h5 class="card-title">List URL</h5>
                    <a class="btn btn-primary" href="{{ route('urls.create')}}">Add URL</a>
                </div>
                <div class="input-group mb-3" style="max-width: 300px;">
                    <input type="text" class="form-control" id="search-url" placeholder="Search...">
                </div>

                <table class="table">
                    <thead>
                        <tr>
                        <th scope="col">Group</th>
                        <th scope="col">Name</th>
                        <th scope="col">Url</th>
                        <th scope="col">Description</th>
                        <th scope="col">Status</th>
                        <th scope="col">Last Use</th>
                        <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody id="url-table-body">
                        @include('admin.url.components.table', ['urls' => $urls])
                    </tbody>
                </table>

                <div class="d-flex justify-content-center">
                    {{ $urls->links() }}
                </div>
            </div>
          </div>
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
  <script>
    document.addEventListener('DOMContentLoaded', () => {
        const input = document.getElementById('search-url');
        const tableBody = document.getElementById('url-table-body');

        input.addEventListener('keyup', function() {
            const query = this.value;

            fetch(`{{ route('urls.search') }}?q=${encodeURIComponent(query)}`)
                .then(res => res.json())
                .then(data => {
                    tableBody.innerHTML = data.html;
                })
                .catch(err => console.error(err));
        });
    });
    </script>

</body>

</html>
