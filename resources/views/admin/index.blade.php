<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - NiceAdmin</title>

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
                <div class="card-body d-flex flex-column" style="height: 150px;">
                  <div class="overflow-auto mt-2" style="flex: 1;">
                    <table class="table table-sm mb-0">
                      <thead>
                        <tr>
                          <th class="small">URL</th>
                          <th class="small text-nowrap">Last Use</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($urls as $url)
                        <tr>
                          <td class="small align-middle">
                            <a href="#" class="open-in-iframe" data-url="{{ route('urls.redirect', $url->id) }}">
                              {{ $url->url }}
                            </a>
                          </td>
                          <td class="small align-middle text-nowrap">
                            {{ $url->last_use ? \Carbon\Carbon::parse($url->last_use)->format('d M Y H:i') : '-' }}
                          </td>
                        </tr>
                        @endforeach
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

      document.querySelectorAll('.open-in-iframe').forEach(link => {
        link.addEventListener('click', function (e) {
          e.preventDefault();
          currentUrl = this.dataset.url;
          iframe.src = currentUrl;
        });
      });

      tabBtn.addEventListener('click', () => {
        if (currentUrl) window.open(currentUrl, '_blank');
      });

      winBtn.addEventListener('click', () => {
        if (currentUrl) window.open(currentUrl, '_blank', 'width=1200,height=800');
      });
    });
  </script>

</body>
</html>
