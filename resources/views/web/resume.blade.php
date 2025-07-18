<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Resume - Peterus</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Custom Google font-->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="{{ asset('web/css/styles.css') }}" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column h-100 bg-light">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            @include('web.components.header')
            <!-- Page Content-->
            <div class="container px-5 my-5">
                <div class="text-center mb-5">
                    <h1 class="display-5 fw-bolder mb-0"><span class="text-gradient d-inline">Resume</span></h1>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-11 col-xl-9 col-xxl-8">
                        <!-- Experience Section-->
                        <section>
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <h2 class="text-primary fw-bolder mb-0">Experience</h2>
                                <!-- Download resume button-->
                            </div>
                            <!-- Experience Card 1-->
                            @foreach($experiences as $exp)
                                <div class="card shadow border-0 rounded-4 mb-5">
                                    <div class="card-body p-5">
                                        <div class="row align-items-center gx-5">
                                            <div class="col text-center text-lg-start mb-4 mb-lg-0">
                                                <div class="bg-light p-4 rounded-4">
                                                    <div class="text-primary fw-bolder mb-2">
                                                        {{ $exp->start_year }} - {{ $exp->is_present ? 'Present' : $exp->end_year }}
                                                    </div>
                                                    <div class="small fw-bolder">{{ $exp->position }}</div>
                                                    <div class="small text-muted">{{ $exp->company }}</div>
                                                    <div class="small text-muted">{{ $exp->location }}</div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div>{{ $exp->description }}</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                        </section>
                        <!-- Education Section-->
                        <section>
                            <h2 class="text-secondary fw-bolder mb-4">Education</h2>
                            <!-- Education Card 1-->
                            @foreach ($educations as $education)
                            <div class="card shadow border-0 rounded-4 mb-5">
                                <div class="card-body p-5">
                                    <div class="row align-items-center gx-5">
                                        <div class="col text-center text-lg-start mb-4 mb-lg-0">
                                            <div class="bg-light p-4 rounded-4">
                                                <div class="text-secondary fw-bolder mb-2">{{$education->start_year}} - {{$education->end_year}}</div>
                                                <div class="mb-2">
                                                    <div class="small fw-bolder">{{$education->institution}}</div>
                                                    <div class="small text-muted">{{$education->location}}</div>
                                                </div>
                                                <div class="fst-italic">
                                                    <div class="small text-muted">{{$education->degree}}</div>
                                                    <div class="small text-muted">{{$education->field_of_study}}</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8"><div>{{$education->description}}</div></div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                            <!-- Education Card 2-->
                        </section>
                        <!-- Divider-->
                        <div class="pb-5"></div>
                        <!-- Skills Section-->
                        <section>
                            <!-- Skillset Card-->
                            <div class="card shadow border-0 rounded-4 mb-5">
                                <div class="card-body p-5">
                                    <!-- Professional skills list-->
                                    <div class="mb-5">
                                        <div class="d-flex align-items-center mb-4">
                                            <div class="feature bg-primary bg-gradient-primary-to-secondary text-white rounded-3 me-3"><i class="bi bi-tools"></i></div>
                                            <h3 class="fw-bolder mb-0"><span class="text-gradient d-inline">Professional Skills</span></h3>
                                        </div>
                                         @if ($skills->count())
                                        @foreach ($skills->chunk(3) as $chunk)
                                            <div class="row row-cols-1 row-cols-md-3 mb-4">
                                                @foreach ($chunk as $skill)
                                                    <div class="col mb-4 mb-md-0">
                                                        <div class="d-flex align-items-center bg-light rounded-4 p-3 h-100">
                                                            {{ $skill->name }}
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        @endforeach
                                    @else
                                        <p class="text-muted">No skills available.</p>
                                    @endif
                                    </div>
                                    <!-- Languages list-->
                                    <div class="mb-0">
                                        <div class="d-flex align-items-center mb-4">
                                            <div class="feature bg-primary bg-gradient-primary-to-secondary text-white rounded-3 me-3"><i class="bi bi-code-slash"></i></div>
                                            <h3 class="fw-bolder mb-0"><span class="text-gradient d-inline">Languages</span></h3>
                                        </div>
                                        @if ($languages->count())
                                        @foreach ($languages->chunk(3) as $chunk)
                                            <div class="row row-cols-1 row-cols-md-3 mb-4">
                                                @foreach ($chunk as $language)
                                                    <div class="col mb-4 mb-md-0">
                                                        <div class="d-flex align-items-center bg-light rounded-4 p-3 h-100">
                                                            {{ $language->name }}
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        @endforeach
                                    @else
                                        <p class="text-muted">No languages available.</p>
                                    @endif
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </main>
        <!-- Footer-->
        @include('web.components.footer')
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="{{ asset('web/js/scripts.js') }}"></script>
    </body>
</html>
