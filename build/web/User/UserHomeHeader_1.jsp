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
                <a href="index.html" title="Go to Home">Itsy</a>
            </div>
        </div><!-- /logo -->


        <nav id="nav" role="navigation">
            <div class="table">
                <div class="table-cell">
                    <ul id="menu-menu-1">
                        
                        <li class="menu-item">
                            <a href="UserHomePage.jsp">Home</a>
                        </li>  
                        
                        <li class="menu-item">
                            <a href="UserProfile.jsp">Profile</a>
                        </li> 
                            
                        <li class="menu-item">
                            <a href="RegisterMovementForm.jsp">Register</a>
                        </li> 
                        <li class="menu-item">
                            <a href="SiteMoreImagesAdding.jsp">Image</a>
                        </li> 
                        <li class="menu-item">
                            <a href="SiteSeleter.jsp">Advance</a>
                        </li>    
                         
                        <li class="menu-item">
                            <a href="PaymentSitePicker.jsp">Payment</a>
                        </li> 
                       
                        <li class="menu-item">
                            <a href="Contacts.jsp">Contact</a></li>
                        <li class="menu-item">
                            
                            <a href="../Guest/GuestHomePage.jsp">Logout</a></li>
                        
                        
                        <li class="menu-inline menu-item">
                            <a title="Twitter" href="http://twitter.com/fh5co">
                                <i class="fa fa-twitter"></i><span class="i">Twitter</span>
                            </a></li>
                        <li class="menu-inline menu-item">
                            <a title="Facebook" href="http://www.facebook.com/fh5co">
                                <i class="fa fa-facebook"></i><span class="i">Facebook</span>
                            </a></li>
                        <li class="menu-inline menu-item">
                            <a title="Flickr" href="#"><i class="fa fa-flickr"></i><span class="i">Flickr</span></a>
                        </li>
                        <li class="menu-inline menu-item">
                            <a title="Instagram" href="#">
                                <i class="fa fa-instagram"></i><span class="i">Instagram</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <a href="#nav" class="menu-trigger"><i class="fa fa-bars"></i></a>

        <a href="#topsearch" class="search-trigger"><i class="fa fa-search"></i></a>

    </div>

</header>

    
    
    

