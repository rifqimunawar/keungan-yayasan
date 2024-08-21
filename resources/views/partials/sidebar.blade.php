<ul class="sidebar-menu">
    <li class="menu-header">Dashboard</li>
    <li class="{{ Request::is('dashboard*') ? 'active' : '' }}">
        <a href="{{ route('dashboard.index') }}"><i class="fas fa-fire"></i><span>Dashboard</span></a>
    </li>

    <li class="menu-header">Starter</li>
    <li class="dropdown {{ Request::is('roles*') || Request::is('user*') ? 'active' : '' }}">
        <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i>
            <span>User Management</span></a>
        <ul class="dropdown-menu">
            <li><a class="nav-link" href="{{ route('user.index') }}">User</a></li>
            <li><a class="nav-link" href="{{ route('roles.index') }}">Role User</a></li>
        </ul>
    </li>
    <li
        class="dropdown {{ Request::is('master*') || Request::is('tahun_pel*') || Request::is('siswa*') ? 'active' : '' }}">
        <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i>
            <span>Master Data</span></a>
        <ul class="dropdown-menu">
            <li><a class="nav-link" href="">Tahun Pelajaran</a></li>
            <li><a class="nav-link" href="">List Tagihan</a></li>
            <li><a class="nav-link" href="{{ route('siswa.index') }}">Data Siswa</a></li>
        </ul>
    </li>
</ul>
