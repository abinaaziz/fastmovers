<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
table.Round_corner_Form_Base 
{

    margin-left: auto;
    margin-right: auto;
    margin-top: 100px;
    margin-bottom: 40px;
    
    padding: 5px;
    
    border: #ccc 1px solid;
    border-collapse: separate;
    border-spacing: 10px 10px;
    border-radius: 10px;
    
    box-shadow: 0 2px 5px #000;
    background: #f8f8f8;
    font-size: 12px;

}
.Round_corner_Form_Base td
{
    padding: 5px;
    vertical-align: top;
    background : 0;

}
</style>



<!doctype html>
<!--
	Itsy by FreeHTML5.co
	Twitter: https://twitter.com/fh5co
	Facebook: https://fb.com/fh5co
	URL: https://freehtml5.co
-->
<html class="home blog no-js" lang="en-US">
<head>
    <title>Itsy | Shifters</title>

    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css" media="all"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC%3A400%2C700%7CLato%3A400%2C700%2C400italic%2C700italic&amp;ver=4.9.8"
          type="text/css" media="screen"/>
    <link rel="stylesheet" href="../TemplateStyleFiles/style.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="../TemplateStyleFiles/print.css" type="text/css" media="print"/>
   
    <script src='../TemplateStyleFiles/js/jquery-3.0.0.min.js'></script>
    <script src='../TemplateStyleFiles/js/jquery-migrate-3.0.1.min.js'></script>
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body class="home sticky-menu sidebar-off" id="top">

<header class="header">

    <div class="header-wrap">

        <div class="logo plain logo-left">
            <div class="site-title">
                <a href="GuestHomePage.jsp" title="Go to Home"style="font-family:verdana;font-size: 40px;color:red">Itsy</a>
            </div>
        </div><!-- /logo -->


        <nav id="nav" role="navigation">
            <div class="table">
                <div class="table-cell">
                    <ul id="menu-menu-1"style="font-family: Lucida Console;font-size:20px; ">
                        
                        <li class="menu-item">
                            <a href="StaffHomePage.jsp">Home</a>
                        </li>
                        
                        <li class="menu-item">
                            <a href="StaffProfile.jsp">Profile</a>
                        </li>
                                                
                        <li class="menu-item">
                            <a href="DailyWorkerDetails.jsp">Workers</a>
                        </li>
                        
                        <li class="menu-item">
                            <a href="VehicleDetails.jsp">Vehicles</a>
                        </li>
                        
                        <li class="menu-item">
                            <a href="SiteChooser.jsp">Verify</a>
                        </li>
                        
                        <li class="menu-item">
                            <a href="SitePicker.jsp">Assign</a>
                        </li>
                        
                        <li class="menu-item">
                            <a href="StatusSitePicker.jsp">Finish</a>
                        </li>
                                               
                        <li class="menu-item">
                            <a href="Contacts.jsp">Contact</a></li>
                         
                        <li class="menu-item">
                            <a href="../Guest/GuestHomePage.jsp">Logout</a></li>
                      </ul>
                </div>
            </div>
        </nav>
        
    </div>

</header>

    
    
    

