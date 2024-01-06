<div class="sidebar border border-right col-md-3 col-lg-2 p-0  h-100">
    <div class="offcanvas-md offcanvas-end bg-body-tertiary" tabindex="-1" id="sidebarMenu" aria-labelledby="sidebarMenuLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="sidebarMenuLabel">Riververy</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#sidebarMenu" aria-label="Close"></button>
      </div>
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link d-flex align-items-center text-decoration-none gap-2 {{ Request::is('dashboard') ? 'active' : '' }}" aria-current="page" href="/dashboard">
               <i class="bi bi-file-text"></i>
              Dashboard
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link d-flex align-items-center text-decoration-none gap-2 {{ Request::is('dashboard/posts*') ? 'active' : '' }}" href="/dashboard/posts">
              <i class="bi bi-file-text"></i>
              My Posts
            </a>
          </li>
          <li class="nav-item">
            <form action="/logout" method="post">
              @csrf
              <button class="nav-link d-flex align-items-center gap-2 border-0 text-dark" type="submit">Log Out<svg class="bi"><use xlink:href="#door-closed"/></svg></button>
            </form>
          </li>
        </ul>

        @can('admin')
        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>Administrator</span>
        </h6>

        <ul class="nav flex-column">
          <li class="nav-item">
             <a class="nav-link d-flex align-items-center text-decoration-none gap-2 {{ Request::is('dashboard/categoris*') ? 'active' : '' }}" aria-current="page" href="/dashboard/categories">
              <i class="bi bi-grid"></i>
             Post Categories
            </a>
          </li>
        </ul>
        @endcan

      </div>
    </div>
</div>


