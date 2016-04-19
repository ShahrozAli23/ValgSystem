<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showCandidates.aspx.cs" Inherits="showCandidates2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Kandidat</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />

	<!-- CSS Files -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/material-kit.css" rel="stylesheet"/>
    <link href="css/stylesheet.css" rel="stylesheet"/>
</head>

<body class="components-page">

<!-- Navbar -->
<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="">E-Voting System</a>
        </div>

        <div class="collapse navbar-collapse" id="navigation-example">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <i class="material-icons">settings</i>
                        <b class="caret"></b>
                    <div class="ripple-container"></div></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li class="dropdown-header">Indstillinger</li>
                        <li><a href="#">Rediger profil</a></li>
                        <li><a href="#">Kontoindstillinger</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Hjælp</a></li>
                        <li><a href="#">Feedback</a></li>
                    </ul>
	            </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        Logget på som Shahroz Ali
                        <b class="caret"></b>
                    <div class="ripple-container"></div></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="#">Log ud</a></li>
                    </ul>
	            </li>
            </ul>
        </div>
    </div>
</nav>
<!-- end navbar -->

<div class="wrapper">
	<div class="header header-filter" style="background-image: url('img/candidates-header.png');">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h1 class="title text-center">Liste over alle kandidater</h1>
                </div>
            </div>
        </div>
	</div>
	<!-- you can use the class main-raised if you want the main area to be as a page with shadows -->
	<div class="main main-raised">
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="title">Opstillede kandidater <small>Hovedbestyrelsesvalg 2016</small></h2>
                    </div>
                    <div class="col-md-4">
                        <div class="profile">
                            <div class="avartar">
                                <img src="http://facestudio.dk/wp-content/uploads/2013/05/131116-tomas-960x960.jpg" class="img-circle img-raised img-responsive">
                            </div>
                            <div class="name">
                                <h3 class="title">Shahroz Ali</h3>
                                <h6>IT-ansvarlig</h6>
                                <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </div>
                            <button class="btn btn-raised btn-defualt">Se Shahroz fulde profil</button>
                            <button class="btn btn-raised btn-danger btn-round">
                                <i class="material-icons">done</i> Stem på Shahroz
                            </button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="profile">
                            <div class="avartar">
                                <img src="http://facestudio.dk/wp-content/uploads/2013/05/131116-tomas-960x960.jpg" alt="Profile Picture" class="img-circle img-raised img-responsive">
                            </div>
                            <div class="name">
                                <h3 class="title">Shahroz Ali</h3>
                                <h6>IT-ansvarlig</h6>
                                <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </div>
                            <button class="btn btn-raised brn-primary">Se Shahroz fulde profil</button>
                            <button class="btn btn-raised btn-danger btn-round">
                                <i class="material-icons">done</i> Stem på Shahroz
                            </button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="profile">
                            <div class="avartar">
                                <img src="http://facestudio.dk/wp-content/uploads/2013/05/131116-tomas-960x960.jpg" alt="Profile Picture" class="img-circle img-raised img-responsive">
                            </div>
                            <div class="name">
                                <h3 class="title">Shahroz Ali</h3>
                                <h6>IT-ansvarlig</h6>
                                <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </div>
                            <button class="btn btn-raised brn-primary">Se Shahroz fulde profil</button>
                            <button class="btn btn-raised btn-danger btn-round">
                                <i class="material-icons">done</i> Stem på Shahroz
                            </button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="profile">
                            <div class="avartar">
                                <img src="http://facestudio.dk/wp-content/uploads/2013/05/131116-tomas-960x960.jpg" alt="Profile Picture" class="img-circle img-raised img-responsive">
                            </div>
                            <div class="name">
                                <h3 class="title">Shahroz Ali</h3>
                                <h6>IT-ansvarlig</h6>
                                <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </div>
                            <button class="btn btn-raised brn-primary">Se Shahroz fulde profil</button>
                            <button class="btn btn-raised btn-danger btn-round">
                                <i class="material-icons">done</i> Stem på Shahroz
                            </button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="profile">
                            <div class="avartar">
                                <img src="http://facestudio.dk/wp-content/uploads/2013/05/131116-tomas-960x960.jpg" alt="Profile Picture" class="img-circle img-raised img-responsive">
                            </div>
                            <div class="name">
                                <h3 class="title">Shahroz Ali</h3>
                                <h6>IT-ansvarlig</h6>
                                <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </div>
                            <button class="btn btn-raised brn-primary">Se Shahroz fulde profil</button>
                            <button class="btn btn-raised btn-danger btn-round">
                                <i class="material-icons">done</i> Stem på Shahroz
                            </button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="profile">
                            <div class="avartar">
                                <img src="http://facestudio.dk/wp-content/uploads/2013/05/131116-tomas-960x960.jpg" alt="Profile Picture" class="img-circle img-raised img-responsive">
                            </div>
                            <div class="name">
                                <h3 class="title">Shahroz Ali</h3>
                                <h6>IT-ansvarlig</h6>
                                <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a href="#" class="btn btn-just-icon">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </div>
                            <button class="btn btn-raised brn-primary">Se Shahroz fulde profil</button>
                            <button class="btn btn-raised btn-danger btn-round">
                                <i class="material-icons">done</i> Stem på Shahroz
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>

<footer class="footer">
    <div class="container">
        <div class="copyright pull-right">
                Feldborg.dk &copy; 2016
        </div>
    </div>
</footer>

</body>

	<!--   Core JS Files   -->
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/material.min.js"></script>

	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="js/nouislider.min.js" type="text/javascript"></script>

	<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
	<script src="js/bootstrap-datepicker.js" type="text/javascript"></script>

	<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
	<script src="js/material-kit.js" type="text/javascript"></script>

    <script type="text/javascript">
		$().ready(function(){
			// the body of this function is in assets/material-kit.js
			$(window).on('scroll', materialKit.checkScrollForTransparentNavbar);
		});
	</script>

</html>
