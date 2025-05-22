<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="{{route('dashboard.index')}}">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-heading">Pages</li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('about.index') }}">
          <i class="bi bi-person"></i>
          <span>About</span>
        </a>
      </li><!-- End Profile Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="{{route('contacts.index')}}">
          <i class="bi bi-envelope"></i>
          <span>Messages</span>
        </a>
      </li><!-- End Contact Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('projects.index') }}">
          <i class="bi bi-card-list"></i>
          <span>Project</span>
        </a>
      </li><!-- End Register Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Resume</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="{{route('educations.index')}}">
              <i class="bi bi-circle"></i><span>Educations</span>
            </a>
          </li>
          <li>
            <a href="{{route('experiences.index')}}">
              <i class="bi bi-circle"></i><span>Experiences</span>
            </a>
          </li>
          <li>
            <a href="{{route('skills.index')}}">
              <i class="bi bi-circle"></i><span>Skills</span>
            </a>
          </li>
          <li>
            <a href="{{route('languages.index')}}">
              <i class="bi bi-circle"></i><span>Languages</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('visit.index') }}">
          <i class="bi bi-people"></i>
          <span>Visitor</span>
        </a>
      </li><!-- End Register Page Nav -->

      <li class="nav-item">
         <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
            @csrf
        </form>
        <a href="#" class="nav-link"
            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
            <i class="bi bi-box-arrow-in-left"></i>
            <span>Logout</span>
        </a>
      </li><!-- End Login Page Nav -->

    </ul>

  </aside>
