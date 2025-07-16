<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - Admin</title>

  <link href="{{ asset('admin/img/favicon.png') }}" rel="icon">
  <link href="{{ asset('admin/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

  <!-- Fonts & CSS -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans|Nunito|Poppins" rel="stylesheet">
  <link href="{{ asset('admin/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ asset('admin/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
  <link href="{{ asset('admin/vendor/simple-datatables/style.css') }}" rel="stylesheet">
  <link href="{{ asset('admin/css/style.css') }}" rel="stylesheet">
</head>

<body>

  @include('admin.components.header')
  @include('admin.components.sidebar')

  <main id="main" class="main">
    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ route('dashboard.index') }}">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div>

    <section class="section dashboard">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <!-- URL Table -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">
                <div class="card-body d-flex flex-column" style="height: 250px;">
                  <div class="overflow-auto mt-2" style="flex: 1;">
                    <div class="d-flex gap-2 sticky-top bg-white z-1 p-1">
                        <input type="text" class="form-control form-control-sm" id="search-url-dashboard" placeholder="Search URL..." style="max-width: 200px;">
                        <input type="date" class="form-control form-control-sm" id="search-date-dashboard" style="max-width: 180px;">
                    </div>
                    <table class="table table-sm mb-0">
                      <thead>
                        <tr>
                          <th class="small">URL</th>
                          <th class="small text-nowrap">Date</th>
                        </tr>
                      </thead>
                      <tbody id="dashboard-url-table">
                        @include('admin.components.url_table', ['urls' => $urls])
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>

            <!-- Current Date & Time -->
            <div class="col-xxl-4 col-md-3">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">Current Date & Time</h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-clock-history"></i>
                    </div>
                    <div class="ps-3">
                      <span id="current-date" class="small text-muted d-block fw-normal"><strong>-</strong></span>
                      <span class="text-muted small pt-1 d-block" id="current-time">-</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Visitors -->
            <div class="col-xxl-4 col-md-3">
              <div class="card info-card sales-card">
                <div class="card-body">
                  <h5 class="card-title">Visitors</h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $visits }}</h6>
                      <span class="text-success small pt-1 fw-bold">Person Today</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div> <!-- End Row -->
        </div>
      </div>

      <!-- Preview Section -->
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-center mb-2">
                <h5 class="card-title mb-0">Preview Website</h5>
                <div id="iframe-fallback-buttons">
                  <button class="btn btn-sm btn-primary me-1" id="openTabBtn">New Tab</button>
                  <button class="btn btn-sm btn-secondary" id="openWindowBtn">New Window</button>
                </div>
              </div>
              <iframe id="urlPreviewFrame" src="" width="100%" height="500px" frameborder="0"></iframe>
            </div>
          </div>
        </div>
      </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <h5 class="card-title mb-0">Maps</h5>
                        </div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d247.9324372419977!2d106.7850108970013!3d-6.141583230573993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sKompleks%20fajar%20permai%20no.%2056%20ao%20rt08%20rw%2017%20jakarta%20utara%2014450!5e0!3m2!1sid!2sid!4v1752651859706!5m2!1sid!2sid" width="100%" height="500px" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
  </main>

  @include('admin.components.footer')

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center">
    <i class="bi bi-arrow-up-short"></i>
  </a>

  <!-- JS Assets -->
  <script src="{{ asset('admin/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
  <script src="{{ asset('admin/vendor/simple-datatables/simple-datatables.js') }}"></script>
  <script src="{{ asset('admin/js/main.js') }}"></script>

  <!-- Date & Time -->
  <script>
    function updateDateTime() {
      const now = new Date();
      const optionsDate = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
      const optionsTime = { hour: '2-digit', minute: '2-digit', second: '2-digit' };

      document.getElementById('current-date').textContent = now.toLocaleDateString('id-ID', optionsDate);
      document.getElementById('current-time').textContent = now.toLocaleTimeString('id-ID', optionsTime);
    }

    setInterval(updateDateTime, 1000);
    updateDateTime();
  </script>

  <!-- Iframe & Button Handler -->
  <script>
    document.addEventListener('DOMContentLoaded', () => {
    const iframe = document.getElementById('urlPreviewFrame');
    const tabBtn = document.getElementById('openTabBtn');
    const winBtn = document.getElementById('openWindowBtn');
    let currentUrl = '';

    // Inisialisasi link awal
    attachIframeLinks();

    // Tombol untuk buka di tab/window baru
    tabBtn.addEventListener('click', () => {
        if (currentUrl) window.open(currentUrl, '_blank');
    });

    winBtn.addEventListener('click', () => {
        if (currentUrl) window.open(currentUrl, '_blank', 'width=1200,height=800');
    });

    // Delegasi klik agar selalu update currentUrl
    document.addEventListener('click', function (e) {
        if (e.target.classList.contains('open-in-iframe')) {
        e.preventDefault();
        currentUrl = e.target.dataset.url;
        iframe.src = currentUrl;
        }
    });
    });
  </script>
  <script>
    document.addEventListener('DOMContentLoaded', function () {
        const urlInput = document.getElementById('search-url-dashboard');
        const dateInput = document.getElementById('search-date-dashboard');
        const tableBody = document.getElementById('dashboard-url-table');

        function fetchFilteredUrls() {
            const url = encodeURIComponent(urlInput.value);
            const date = dateInput.value;

            fetch(`{{ route('dashboard.search.urls') }}?url=${url}&date=${date}`)
            .then(res => res.json())
            .then(data => {
                tableBody.innerHTML = data.html;
                attachIframeLinks();
            })
            .catch(err => console.error('Search Error:', err));
        }

        urlInput.addEventListener('input', fetchFilteredUrls);
        dateInput.addEventListener('change', fetchFilteredUrls);
    });

    function attachIframeLinks() {
        const iframe = document.getElementById('urlPreviewFrame');
        document.querySelectorAll('.open-in-iframe').forEach(link => {
        link.addEventListener('click', function (e) {
            e.preventDefault();
            const currentUrl = this.dataset.url;
            iframe.src = currentUrl;
        });
        });
    }
    </script>

</body>
</html>
