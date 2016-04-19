<%@ Page Language="C#" AutoEventWireup="false" CodeFile="Adminpanel.aspx.cs" Inherits="Adminpanel" %>

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
    <form id="form1" runat="server">
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
                        Logget på som Administrator
                        <b class="caret"></b>
                    <div class="ripple-container"></div></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="#" runat="server" onserverclick="Button2_Click">Log ud</a></li>
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
                            <li class="active">
                                <a href="adminPanel.html"><i class="material-icons">home</i> Overblik</a>
                            </li>
                            <li>
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
                            <div class="col-md-6">
                                <div class="title">
                                    <h3>Valg historik</h3>
                                </div>

                                <!-- Tabs with icons on Card (Vote Historic) -->
                                <div class="card card-nav-tabs">
                                    <div class="header header-success">
                                        <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                                        <div class="nav-tabs-navigation">
                                            <div class="nav-tabs-wrapper">
                                                <ul class="nav nav-tabs" data-tabs="tabs">
                                                    <li class="">
                                                        <a href="#aktuelleValg" data-toggle="tab" aria-expanded="false">
                                                            <i class="material-icons">mode_edit</i>
                                                            Aktuelle
                                                        <div class="ripple-container"></div></a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#kommendeValg" data-toggle="tab" aria-expanded="false">
                                                            <i class="material-icons">update</i>
                                                            Kommende
                                                        <div class="ripple-container"></div></a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#afsluttetValg" data-toggle="tab" aria-expanded="false">
                                                            <i class="material-icons">done</i>
                                                            Afsluttet
                                                        <div class="ripple-container"></div></a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#settings" data-toggle="tab" aria-expanded="true">
                                                            <i class="material-icons">build</i>
                                                            I alt
                                                        <div class="ripple-container"></div></a>

                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <div class="tab-content text-center">
                                            <div class="tab-pane" id="aktuelleValg">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center">#</th>
                                                            <th>Navn</th>
                                                            <th>Type</th>
                                                            <th>Start dato</th>
                                                            <th>Slut dato</th>
                                                            <th>Valgdeltagelse (%)</th>
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
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                            <div class="tab-pane" id="kommendeValg">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center">#</th>
                                                            <th>Navn</th>
                                                            <th>Type</th>
                                                            <th>Start dato</th>
                                                            <th>Slut dato</th>
                                                            <th>Valgdeltagelse (%)</th>
                                                            <th class="text-right">Handlinger</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="text-center">1</td>
                                                            <td class="text-left">Valg af dirigent</td>
                                                            <td class="text-left">Valg</td>
                                                            <td class="text-left">01.01.2016</td>
                                                            <td class="text-left">01.03.2016</td>
                                                            <td class="text-left">76,22</td>
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                                            <td class="text-left">Formand</td>
                                                            <td class="text-left">Valg</td>
                                                            <td class="text-left">28.03.2016</td>
                                                            <td class="text-left">05.07.2016</td>
                                                            <td class="text-left">45,22</td>
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                            <div class="tab-pane" id="afsluttetValg">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center">#</th>
                                                            <th>Navn</th>
                                                            <th>Type</th>
                                                            <th>Start dato</th>
                                                            <th>Slut dato</th>
                                                            <th>Valgdeltagelse (%)</th>
                                                            <th class="text-right">Handlinger</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="text-center">1</td>
                                                            <td class="text-left">Vedtægter</td>
                                                            <td class="text-left">Valg</td>
                                                            <td class="text-left">01.07.2016</td>
                                                            <td class="text-left">01.08.2016</td>
                                                            <td class="text-left">89,42</td>
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                                            <td class="text-left">Formand</td>
                                                            <td class="text-left">Valg</td>
                                                            <td class="text-left">28.03.2016</td>
                                                            <td class="text-left">05.07.2016</td>
                                                            <td class="text-left">45,22</td>
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                        </div>
                                    </div>
                                </div>
                                <!-- End Tabs with icons on Card (Vote Historic -->

                            </div>
                            <div class="col-md-6">
                                <div class="title">
                                    <h3>Kandidater</h3>
                                </div>

                                <!-- Tabs with icons on Card -->
                                <div class="card card-nav-tabs">
                                    <div class="header header-info">
                                        <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                                        <div class="nav-tabs-navigation">
                                            <div class="nav-tabs-wrapper">
                                                <ul class="nav nav-tabs" data-tabs="tabs">
                                                    <li class="">
                                                        <a href="#senestKandidater" data-toggle="tab" aria-expanded="false">
                                                            <i class="material-icons">face</i>
                                                            Senest oprettede
                                                        <div class="ripple-container"></div></a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#messages" data-toggle="tab" aria-expanded="false">
                                                            <i class="material-icons">chat</i>
                                                            Bekræftede
                                                        <div class="ripple-container"></div></a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#settings" data-toggle="tab" aria-expanded="true">
                                                            <i class="material-icons">build</i>
                                                            Afv. bekræftelse
                                                        <div class="ripple-container"></div></a>

                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <div class="tab-content text-center">
                                            <div class="tab-pane" id="senestKandidater">
                                                <table class="table">
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
                                                            <td class="text-left">Bekræftet</td>
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                                            <td class="text-left">Leo</td>
                                                            <td class="text-left">Feldborg</td>
                                                            <td class="text-left">Valg</td>
                                                            <td class="text-left">23.03.2016</td>
                                                            <td class="text-left">Afv. bekræftelse</td>
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                                            <td class="text-left">Tariq</td>
                                                            <td class="text-left">Amin</td>
                                                            <td class="text-left">Valg</td>
                                                            <td class="text-left">28.03.2016</td>
                                                            <td class="text-left">Bekræftet</td>
                                                            <td class="td-actions text-right">
                                                                <button type="button" rel="tooltip" title="Se Valg" class="btn btn-info btn-simple btn-xs">
                                                                    <i class="fa fa-user"></i>
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
                                            <div class="tab-pane" id="messages">
                                                <p> I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at.</p>
                                            </div>
                                            <div class="tab-pane active" id="settings">
                                                <p>I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. So when you get something that has the name Kanye West on it, it’s supposed to be pushing the furthest possibilities. I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Tabs with icons on Card -->

                            </div>
                        </div>
                        <div class="row">
                        <div class="col-md-12">
                            <div class="title">
                                <h3>Statistik</h3>
                            </div>

                            <!-- Tabs with icons on Card -->
                            <div class="card card-nav-tabs">
                                <div class="header header-success">
                                    <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                                    <div class="nav-tabs-navigation">
                                        <div class="nav-tabs-wrapper">
                                            <ul class="nav nav-tabs" data-tabs="tabs">
                                                <li class="">
                                                    <a href="#profile" data-toggle="tab" aria-expanded="false">
                                                        <i class="material-icons">face</i>
                                                        Aktuelle
                                                    <div class="ripple-container"></div></a>
                                                </li>
                                                <li class="">
                                                    <a href="#messages" data-toggle="tab" aria-expanded="false">
                                                        <i class="material-icons">chat</i>
                                                        Kommende
                                                    <div class="ripple-container"></div></a>
                                                </li>
                                                <li class="">
                                                    <a href="#messages" data-toggle="tab" aria-expanded="false">
                                                        <i class="material-icons">chat</i>
                                                        Afsluttet
                                                    <div class="ripple-container"></div></a>
                                                </li>
                                                <li class="active">
                                                    <a href="#settings" data-toggle="tab" aria-expanded="true">
                                                        <i class="material-icons">build</i>
                                                        I alt
                                                    <div class="ripple-container"></div></a>

                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="content">
                                    <div class="tab-content text-center">
                                        <div class="tab-pane" id="profile">
                                            <p> I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. </p>
                                        </div>
                                        <div class="tab-pane" id="messages">
                                            <p> I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at.</p>
                                        </div>
                                        <div class="tab-pane active" id="settings">
                                            <p>I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. So when you get something that has the name Kanye West on it, it’s supposed to be pushing the furthest possibilities. I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Tabs with icons on Card -->

                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
    </form>
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

