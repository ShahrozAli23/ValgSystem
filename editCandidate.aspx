<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editCandidate.aspx.cs" Inherits="editCandidate2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="../assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Profil</title>

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

<body class="profile-page">
    <!-- Navbar will come here -->
    <nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll" role="navigation">
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
		<div class="header header-filter" style="background-image: url('img/examples/city.jpg');"></div>

		<div class="main main-raised">
			<div class="profile-content">
	            <div class="container">
	                <div class="row">
	                    <div class="profile">
	                        <div class="avatar">
	                            <img src="http://facestudio.dk/wp-content/uploads/2013/05/131116-tomas-960x960.jpg" alt="Circle Image" class="img-circle img-responsive img-raised">
	                        </div>
	                        <div class="name">
	                            <h3 class="title">Shahroz Ali</h3>
								<h6>IT-ansvarlig</h6>
	                        </div>
	                    </div>
	                </div>

                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="title">Rediger din profil</h2>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group label-floating">
                                <label class="control-label">Virksomhed/Forening</label>
                                <input type="text" class="form-control" value="Feldborg Informatik" disabled>
                           </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group label-floating">
                                <label class="control-label">Stilling</label>
                                <input type="text" class="form-control" value="IT-ansvarlig">
                           </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group label-floating">
                                <label class="control-label">Fornavn</label>
                                <input type="text" class="form-control" placeholder="Fornavn" value="Shahroz Ali">
                           </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group label-floating">
                                <label class="control-label">Efternavn</label>
                                <input type="text" class="form-control" placeholder="Efternavn" value="Azmat">
                           </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group label-floating">
                                <label class="control-label">Vej</label>
                                <input type="text" class="form-control" placeholder="Adresse" value="Vestre Lindeskov">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group label-floating">
                                <label class="control-label">Nr.</label>
                                <input type="text" class="form-control" placeholder="Nr." value="77">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group label-floating">
                                <label class="control-label">Postnummer</label>
                                <input type="text" class="form-control" placeholder="Postnummer" value="2600">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group label-floating">
                                <label class="control-label">By</label>
                                <input type="text" class="form-control" placeholder="By" value="Glostrup">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group label-floating">
                                <label class="control-label">Bio</label>
                                <textarea class="form-control" placeholder="Skriv noget om dig selv..." rows="4">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.                                    </textarea>
                                <span class="material-input"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <label class="control-label">Tilpassede links</label>
                        </div>
                        <div id="tilpassedeLinks">
                            <div class="tl">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" value="" placeholder="Titel på link" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <input type="url" value="" placeholder="Webadresse" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <button class="deleteLink btn btn-danger btn-raised btn-fab btn-fab-mini btn-round input-button">
                                            <i class="material-icons">delete</i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                        <div class="row">
                            <div class="col-md-2">
                                <button id="addLink" class="btn btn-raised btn-default btn-sm"><i class="material-icons">add</i> Tilføj</button>
                            </div>
                        </div>
                    <div class="row">
                        <div class="col-md-2 col-md-offset-10">
                            <button class="btn btn-raised btn-primary">Opdater profil</button>
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
    <script src="js/javascript.js"></script>

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

