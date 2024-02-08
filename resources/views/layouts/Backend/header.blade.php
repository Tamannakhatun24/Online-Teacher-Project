
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Highdmin - Responsive Bootstrap 4 Admin Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App css -->
        <link href="{{ asset('asset/Backend/assets/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{ asset('asset/Backend/assets/css/icons.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{ asset('asset/Backend/assets/css/style.css')}}" rel="stylesheet" type="text/css" />

        <script src="{{ asset('asset/Backend/assets/js/modernizr.min.js')}}"></script>

    </head>

    <body>

        <!-- Navigation Bar-->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container-fluid">

                    <!-- Logo container-->
                    <div class="logo">
                        <!-- Text Logo -->
                        <!-- <a href="index.html" class="logo">
                            <span class="logo-small"><i class="mdi mdi-radar"></i></span>
                            <span class="logo-large"><i class="mdi mdi-radar"></i> Highdmin</span>
                        </a> -->
                        <!-- Image Logo -->
                        <!-- <a href="index.html" class="logo">
                            <img src="assets/images/logo_sm.png" alt="" height="26" class="logo-small">
                            <img src="assets/images/logo.png" alt="" height="22" class="logo-large">
                        </a> -->

                    </div>
                    <!-- End Logo container-->


                    <div class="menu-extras topbar-custom">

                        <ul class="list-unstyled topbar-right-menu float-right mb-0">

                            <li class="menu-item">
                                <!-- Mobile menu toggle-->
                                <a class="navbar-toggle nav-link">
                                    <div class="lines">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </div>
                                </a>
                                <!-- End mobile menu toggle-->
                            </li>

                            <li class="dropdown notification-list">
                                <a class="nav-link dropdown-toggle waves-effect nav-user" data-toggle="dropdown" href="#" role="button"
                                   aria-haspopup="false" aria-expanded="false">
                                    <!-- <img src="assets/images/users/avatar-1.jpg" alt="user" class="rounded-circle"> -->
                                     <span class="ml-1 pro-user-name"> {{ auth::user()->name}}<i class="mdi mdi-chevron-down"></i> </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                    <!-- item-->
                                    <div class="dropdown-item noti-title">
                                        <h6 class="text-overflow m-0">Welcome !</h6>
                                    </div>


                                    <!-- item-->
                                    <a href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();" class="dropdown-item notify-item">
                                        <i class="fi-power"></i> <span>Logout</span>

                                    </a>
                                       <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                       </form>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- end menu-extras -->

                    <div class="clearfix"></div>

                </div> <!-- end container -->
            </div>
            <!-- end topbar-main -->

            <div class="navbar-custom">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">

                            <li class="has-submenu">
                                <a href="{{ url('/home')}}"><i class="icon-speedometer"></i>Dashboard</a>
                            </li>
                            @if(Auth::user()->role == 1)
                            <li class="has-submenu">
                                <a href=""><i class="icon-layers"></i>Categories</a>
                                <ul class="submenu">
                                    <li><a href="{{route('Backend/categories_topics')}}" class="{{ request()->is('Backend/add/categories_topics')? "bg-primary":""}}">Add Categories Topics</a></li>
                                    <li><a href="{{ route('Backend/categories') }}">Add Categories</a></li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href=""><i class="icon-layers"></i>Job Board</a>
                                <ul class="submenu">
                                    <li><a href="{{route('Backend/Add_job_post')}}" class="{{ request()->is('Backend/Add_job_post')? "bg-primary":""}}">Add Job POST</a></li>

                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="{{url('Backend/message')}}" class="{{ request()->is('Backend/message')? "bg-primary":""}}"><i class="icon-"></i>Message</a>
                            </li>
                            <li class="has-submenu">
                                <a href="{{url('Backend/complain_message')}}" class="{{ request()->is('Backend/complain_message')? "bg-primary":""}}"><i class="icon-"></i>Complain Message</a>
                            </li>
                            <li class="has-submenu">
                                <a href="{{url('Backend/hire_a_tutor')}}" class="{{ request()->is('Backend/hire_a_tutor')? "bg-primary":""}}"><i class="icon-"></i>Hire Tutor</a>
                            </li>
                            <li class="has-submenu">
                                <a href="{{url('/')}}" target="_blank"><i class="icon-"></i>Visit website</a>
                            </li>
                            @endif


                        </ul>
                        <!-- End navigation menu -->
                    </div> <!-- end #navigation -->
                </div> <!-- end container -->
            </div> <!-- end navbar-custom -->
        </header>
        <!-- End Navigation Bar-->
