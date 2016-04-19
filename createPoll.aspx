<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createPoll.aspx.cs" Inherits="createPoll2" %>

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
            <a class="navbar-brand" href="http://www.creative-tim.com">E-Voting System</a>
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
                            <li class="active">
                                <a href="createPoll.html"><i class="material-icons">mode_edit</i>Valg</a>
                            </li>
                            <li>
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
                                <button class="btn btn-primary btn-raised" data-toggle="modal" data-target="#addPoll">
                                    <i class="material-icons">add</i> Tilføj valg
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
                                                <th>Navn</th>
                                                <th>Type</th>
                                                <th>Start dato</th>
                                                <th>Slut dato</th>
                                                <th>Valgdeltagelse (%)</th>
                                                <th>Status</th>
                                                <th class="text-right">Handlinger</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">1</td>
                                                <td class="text-left">Formand for Flyver Forening</td>
                                                <td class="text-left">Valg</td>
                                                <td class="text-left">23.03.2016</td>
                                                <td class="text-left">12.07.2016</td>
                                                <td class="text-left">99,22</td>
                                                <td class="text-left"><span class="label label-success">Igang</span></td>
                                                <td class="td-actions text-right">
                                                    <button type="button" rel="tooltip" title="Tilføj kandidat" class="btn btn-info btn-simple btn-xs" data-toggle="modal" data-target="#addCandidateToPoll">
                                                        <i class="fa fa-user-plus"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Rediger Valg" class="btn btn-success btn-simple btn-xs">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Fjern" class="btn btn-danger btn-simple btn-xs">
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">2</td>
                                                <td class="text-left">Formand for Flyver Forening</td>
                                                <td class="text-left">Valg</td>
                                                <td class="text-left">23.03.2016</td>
                                                <td class="text-left">12.07.2016</td>
                                                <td class="text-left">99,22</td>
                                                <td class="text-left"><span class="label label-danger">Stoppet</span></td>
                                                <td class="td-actions text-right">
                                                    <button type="button" rel="tooltip" title="Tilføj kandidat" class="btn btn-info btn-simple btn-xs" data-toggle="modal" data-target="#addCandidateToPoll">
                                                        <i class="fa fa-user-plus"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Rediger Valg" class="btn btn-success btn-simple btn-xs">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Fjern" class="btn btn-danger btn-simple btn-xs">
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">3</td>
                                                <td class="text-left">Formand for Flyver Forening</td>
                                                <td class="text-left">Valg</td>
                                                <td class="text-left">23.03.2016</td>
                                                <td class="text-left">12.07.2016</td>
                                                <td class="text-left">99,22</td>
                                                <td class="text-left"><span class="label label-default">Planlagt</span></td>
                                                <td class="td-actions text-right">
                                                    <button type="button" rel="tooltip" title="Tilføj kandidat" class="btn btn-info btn-simple btn-xs" data-toggle="modal" data-target="#addCandidateToPoll">
                                                        <i class="fa fa-user-plus"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Rediger Valg" class="btn btn-success btn-simple btn-xs">
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

    <!-- Modal Core for "Tilføj Valg" -->
    <div class="modal fade" id="addPoll" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h3 class="modal-title" id="myModalLabel"> <i class="material-icons">mode_edit</i> Tiføj valg</h3>
                    <p>Dette er en beskrivende tekst omkring oprettelse af et ny valg. <br> Hvis du ønsker at vide mere så hold musen henover det valgte form element.</p>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">info</i>
                                    </span>
                                    <input type="text" class="form-control" placeholder="Navn">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">build</i>
                                    </span>
                                    <select name="Type" class="form-control" id="valgTyper">
                                            <option value="type0"> Vælg afstemningstype</option>
                                            <option value="type1"> Valg i mellem flere opstillede kandidater </option>
                                            <option value="type2"> Afstemning om et forslag</option>
                                            <option value="type3"> Afstemning med valg i mellem flere alternativer </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="valgTyper_hide valgTyper_type1">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">people</i>
                                        </span>
                                        <input type="number" min="1" class="form-control" placeholder="Antal kandidater">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="afstemningsmuligheder">
                                        <div class="col-md-12">
                                            <label>Login-type</label>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="radio">
                                                <label>
                                                    Nem-ID
                                                    <input type="radio" name="optionsRadios">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="radio">
                                                <label>
                                                    Bruger
                                                    <input type="radio" name="optionsRadios">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="radio">
                                                <label>
                                                    Anonym
                                                    <input type="radio" name="optionsRadios">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="afstemningsmuligheder">
                                        <div class="col-md-12">
                                            <label>Afstemningsmuligheder</label>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="checkbox">
                                                <label>
                                                    Mail
                                                    <input type="checkbox" name="optionsCheckboxes">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="checkbox">
                                                <label>
                                                    SMS
                                                    <input type="checkbox" name="optionsCheckboxes">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="checkbox">
                                                <label>
                                                    Papir
                                                    <input type="checkbox" name="optionsCheckboxes">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <textarea class="form-control" placeholder="Oplysninger omkring valget" rows="4"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="togglebutton">
                                        <label>
                                            <input type="checkbox" id="timePeriodCheckbox" name="checkbox1"/>
                                            Tidsperiode
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div id="timePeriod">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">date_range</i>
                                            </span>
                                            <input class="datepicker form-control" type="text" placeholder="Vælg startdato"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">schedule</i>
                                            </span>
                                            <input class="datepicker form-control" type="text" placeholder="Vælg starttid"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">date_range</i>
                                            </span>
                                            <input class="datepicker form-control" type="text" placeholder="Vælg slutdato"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">schedule</i>
                                            </span>
                                            <input class="form-control" type="text" placeholder="Vælg sluttid"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="valgTyper_hide valgTyper_type2">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">date_range</i>
                                        </span>
                                        <input class="datepicker form-control" type="text" placeholder="Vælg startdato"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">schedule</i>
                                        </span>
                                        <input class="form-control" type="time" placeholder="Vælg starttid"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">date_range</i>
                                        </span>
                                        <input class="datepicker form-control" type="text" placeholder="Vælg slutdato"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">schedule</i>
                                        </span>
                                        <input class="datepicker form-control" type="time" placeholder="Vælg sluttid"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="valgTyper_hide valgTyper_type3">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">date_range</i>
                                        </span>
                                        <input class="datepicker form-control" type="text" placeholder="Indtast forslag"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <button id="addLink" class="btn btn-raised btn-default btn-sm"><i class="material-icons">add</i> Tilføj forslag</button>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">date_range</i>
                                        </span>
                                        <input class="datepicker form-control" type="text" placeholder="Vælg startdato"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">schedule</i>
                                        </span>
                                        <input class="form-control" type="time" placeholder="Vælg starttid"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">date_range</i>
                                        </span>
                                        <input class="datepicker form-control" type="text" placeholder="Vælg slutdato"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">schedule</i>
                                        </span>
                                        <input class="form-control" type="time" placeholder="Vælg sluttid"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger btn-simple" data-dismiss="modal">Anuller</button>
                    <button type="button" class="btn btn-info ">Tilføj</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End of Modal Core for "Tilføj valg" -->

    <!-- Modal Core for "Tilføj Kandidat -->
    <div class="modal fade" id="addCandidateToPoll" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h3 class="modal-title" id="myModalLabel"> <i  class="fa fa-user-plus"></i> Tiføj kandidat til valg</h3>
                    <p>Dette er en beskrivende tekst omkring oprettelse af et ny valg. <br> Hvis du ønsker at vide mere så hold musen henover det valgte form element.</p>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="col-md-9">
                                <select name="Type" class="form-control" id="valgTyper">
                                    <option value="type0"> Vælg kandidat</option>
                                    <option value=""> Bruger 1</option>
                                    <option value=""> Bruger 2</option>
                                    <option value=""> Bruger 3</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <button class="btn btn-primary btn-raised btn-sm addCandidateButton">
                                    <i class="material-icons">add</i>  Tilføj
                                </button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <h6>Tilføjede kandidater</h6>
                            </div>
                            <div class="col-md-12">
                                <ul class="list-group">
                                    <li class="list-group-item">Bruger 1 <button class="btn btn-primary btn-danger pull-right deleteCandidateButton"><i class="material-icons">delete</i></button></li>
                                    <li class="list-group-item">Bruger 2 <button class="btn btn-primary btn-danger pull-right deleteCandidateButton"><i class="material-icons">delete</i></button></li>
                                    <li class="list-group-item">Bruger 3 <button class="btn btn-primary btn-danger pull-right deleteCandidateButton"><i class="material-icons">delete</i></button></li>
                                    <li class="list-group-item">Bruger 4 <button class="btn btn-primary btn-danger pull-right deleteCandidateButton"><i class="material-icons">delete</i></button></li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Anuller</button>
                  <button type="button" class="btn btn-info ">Gem</button>
              </div>
            </div>
        </div>
    </div>
    <!-- End of Modal Core for "Tilføj valg" -->

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

