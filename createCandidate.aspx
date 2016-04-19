<%@ Page Language="VB" AutoEventWireup="false" CodeFile="createCandidate.aspx.vb" Inherits="createCandidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Admin Panel</title>

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
<body class="admin-page">

<!-- Navbar -->
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
	<div class="header header-filter" style="background-image: url('img/adminPanel-header.png');">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h1 class="title text-center">Velkommen til<br>Admin Panel</h1>
                </div>
            </div>
        </div>
	</div>

	<!-- you can use the class main-raised if you want the main area to be as a page with shadows -->
	<div class="main">
        <div class="section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-2 col-md-1 sidebar">
                        <ul class="nav nav-sidebar nav-pills nav-pills-primary nav-stacked"  role="tablist">
                            <li>
                                <a href="adminPanel.html"><i class="material-icons">home</i> Overblik</a>
                            </li>
                            <li>
                                <a href="createPoll.html"><i class="material-icons">mode_edit</i>Valg</a>
                            </li>
                            <li class="active">
                                <a href="createCandidate.html" role="tab"><i class="material-icons">group</i>Kandidater</a>
                            </li>
                            <li>
                                <a href="#" role="tab"><i class="material-icons">show_chart</i>Statistik</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-sm-10 col-md-11 main-admin">
                        <div class="row">
                            <div class="col-md-12">
                                <!-- Button trigger modal -->
                                <button class="btn btn-primary btn-raised" data-toggle="modal" data-target="#createCandidateModal">
                                  <i class="material-icons">add</i> Opret ny kandidat
                                </button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <table class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th class="text-center">#</th>
                                                <th>Fornavn</th>
                                                <th>Efternavn</th>
                                                <th>Valg</th>
                                                <th>Opret. dato</th>
                                                <th>Status</th>
                                                <th class="text-right">Handlinger</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">1</td>
                                                <td class="text-left">Shahroz Ali</td>
                                                <td class="text-left">Azmat</td>
                                                <td class="text-left">Valg</td>
                                                <td class="text-left">01.01.2016</td>
                                                <td class="text-left"><span class="label label-success">Bekræftet</span></td>
                                                <td class="td-actions text-right">
                                                    <button type="button" rel="tooltip" title="Se kandidat" class="btn btn-info btn-simple btn-xs">
                                                        <i class="fa fa-user"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Rediger kandidat" class="btn btn-success btn-simple btn-xs" data-toggle="modal" data-target="#editCandidateModal">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Fjern" class="btn btn-danger btn-simple btn-xs">
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">2</td>
                                                <td class="text-left">Leo</td>
                                                <td class="text-left">Feldborg</td>
                                                <td class="text-left">Valg</td>
                                                <td class="text-left">23.03.2016</td>
                                                <td class="text-left"><span class="label label-default">Afventer bekræftelse</span></td>
                                                <td class="td-actions text-right">
                                                    <button type="button" rel="tooltip" title="Se kandidat" class="btn btn-info btn-simple btn-xs">
                                                        <i class="fa fa-user"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Rediger kandidat" class="btn btn-success btn-simple btn-xs" data-toggle="modal" data-target="#editCandidateModal">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Fjern" class="btn btn-danger btn-simple btn-xs">
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">3</td>
                                                <td class="text-left">Tariq</td>
                                                <td class="text-left">Amin</td>
                                                <td class="text-left">Valg</td>
                                                <td class="text-left">28.03.2016</td>
                                                <td class="text-left"><span class="label label-success">Bekræftet</span></td>
                                                <td class="td-actions text-right">
                                                    <button type="button" rel="tooltip" title="Se kandidat" class="btn btn-info btn-simple btn-xs">
                                                        <i class="fa fa-user"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Rediger kandidat" class="btn btn-success btn-simple btn-xs" data-toggle="modal" data-target="#editCandidateModal">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Fjern" class="btn btn-danger btn-simple btn-xs">
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End of card -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>

</body>

    <!-- Modal Core for "Opret ny kandidat" -->
    <div class="modal fade" id="createCandidateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h3 class="modal-title" id="myModalLabel"><i class="material-icons">people</i> Opret en ny kandidat</h3>
                    <p>Dette er en beskrivende tekst omkring oprettelse af et ny kandidat. <br> Hvis du ønsker at vide mere så hold musen henover det valgte form element.</p>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                   <i class="material-icons">group</i>
                                </span>
                                <input type="name" class="form-control" value="" placeholder="Indtast kandidatens fornavn">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                   <i class="material-icons">group</i>
                                </span>
                                <input type="name" class="form-control" value="" placeholder="Indtast kandidatens efternavn">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">mail</i>
                                </span>
                                <input type="text" class="form-control" placeholder="Indtast kandidatens email">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">business</i>
                                </span>
                                <input type="text" class="form-control" placeholder="Indtast navn på virksomhed/forening">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">build</i>
                                </span>
                                <select name="Type" class="form-control" id="valgTyper">
                                        <option value="type0"> Vælg eventuel tilknytning til valg</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger btn-simple" data-dismiss="modal">Anuller</button>
                    <button type="button" class="btn btn-info ">Send anmodning</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End of Modal Core for "Opret ny kandidat" -->

    <!-- Modal Core for "Rediger kandidat" -->
    <div class="modal fade" id="editCandidateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h3 class="modal-title" id="myModalLabel"><i class="fa fa-edit"></i> Rediger kandidat</h3>
                    <p>Dette er en beskrivende tekst omkring redigering af en oprettede kandidat. <br> Hvis du ønsker at vide mere så hold musen henover det valgte form element.</p>
                </div>
                <div class="modal-body">
                    <div class="row">
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
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger btn-simple" data-dismiss="modal">Anuller</button>
                    <button type="button" class="btn btn-info ">Gem ændringer</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End of Modal Core for "Rediger kandidat" -->


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

