<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../TemplateStyleFiles/MyStyles.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Site Metas -->
    <title>Aquaponics</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Site Icons -->
    <link rel="shortcut icon" href="../TemplateStyleFiles/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="../TemplateStyleFiles/images/apple-touch-icon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../TemplateStyleFiles/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="../TemplateStyleFiles/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="../TemplateStyleFiles/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../TemplateStyleFiles/css/custom.css">
</head>
<body>
    <!-- Start Main Top -->
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                    <a class="navbar-brand" href="UserHomePage.jsp"><img src="../TemplateStyleFiles/Aqua.png" width="250px" height="70px" class="logo" alt=""></a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" href="UserHomePage.jsp">Home</a></li> 
                        <li class="nav-item"><a class="nav-link" href="UserProfile.jsp">Profile</a></li>
                        <li class="nav-item"><a class="nav-link" href="PondChooserForAdvancePayment.jsp">Advance</a></li>
                        <li class="dropdown">
                            <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Material</a>
                            <ul class="dropdown-menu">
                                <li><a href="PondMechanism.jsp">Pond Mechanism</a></li>
                                <li><a href="SecondaryLayer.jsp">Secondary Layer Mechanism</a></li>
                                <li><a href="FarmBedMechanism.jsp">Farm Bed Mechanism</a></li>
                                <li><a href="FilterCategory.jsp">Filter Types</a></li>
                                <li><a href="FilterDetails.jsp">Filter Details</a></li>
                                <li><a href="TestkitDetails.jsp">Test Kit Details</a></li>
                                <li><a href="FishDetails.jsp">Fish Seed Details</a></li>
                                <li><a href="FeedDetails.jsp">Feed Details</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="../User/UserHomePage.jsp">User Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="../Gust/GuestHomePage.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    
    
    