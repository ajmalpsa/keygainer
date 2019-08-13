<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edmin</title>
        <link href='<spring:url value="/resources/bootstrap/css/bootstrap.min.css"></spring:url>' rel="stylesheet">
        <link href='<spring:url value="/resources/bootstrap/css/bootstrap.min.css"></spring:url>' rel="stylesheet">
        <link href='<spring:url value="/resources/css/theme.css"></spring:url>' rel="stylesheet">
        <link href='<spring:url value="/resources/images/icons/css/font-awesome.css"></spring:url>' rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
            rel='stylesheet'>
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="index.html">Edmin </a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav nav-icons">
                            <li class="active"><a href="#"><i class="icon-envelope"></i></a></li>
                            <li><a href="#"><i class="icon-eye-open"></i></a></li>
                            <li><a href="#"><i class="icon-bar-chart"></i></a></li>
                        </ul>
                        <form class="navbar-search pull-left input-append" action="#">
                        <input type="text" class="span3">
                        <button class="btn" type="button">
                            <i class="icon-search"></i>
                        </button>
                        </form>
                        <ul class="nav pull-right">
                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Users
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">All Users</a></li>
                                    <li><a href="#">Approval Pending</a></li>
                                    
                                </ul>
                            </li>
                            <li><a href="#">Support </a></li>
                            <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src='<spring:url value="/resources/images/user.png"></spring:url>' class="nav-avatar" />
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Your Profile</a></li>
                                    <li><a href="#">Edit Profile</a></li>
                                    <li><a href="#">Account Settings</a></li>
                                    <li class="divider"></li>
                                    <li><a href="logout">Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- /.nav-collapse -->
                </div>
            </div>
            <!-- /navbar-inner -->
        </div>
        <!-- /navbar -->
        <div class="wrapper">
            <div class="container">
                <section class="content">
      <div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3> ${user.name}</h3>
							</div>
							
							<dl class="dl-horizontal">
							<b>
                                            <dt>Name : </dt>
                                            <dd>
                                                ${user.name}</dd><br>
                                            <dt>Email : </dt>
                                            <dd>
                                                ${user.emailid} </dd><br>
                                            <dt>Phone : </dt>
                                            <dd>
                                                ${user.phone}</dd><br>
                                                <dt>Date of Birth : </dt>
                                            <dd>
                                                ${user.dob}</dd><br>
                                                <dt>Gender : </dt>
                                            <dd>
                                                ${user.gender}</dd><br>
                                                <dt>Role : </dt>
                                            <dd>
                                                ${user.role}</dd><br>
                                                <dt>Registration Date : </dt>
                                            <dd>
                                                ${user.reg_date}</dd><br>
                                                <dt>Blocked : </dt>
                                            
                                                <c:if test="${user.blocked==0}"><dd>No</dd><dd>
                                                <form action = "/KeyGainer/blockuser/${user.userID}">
                                                <button class="btn-danger small">Block</button>
                                                </form>
                                                </dd><br></c:if>
                                                <c:if test="${user.blocked==1}"><dd>Yes</dd><dd>
                                                <form action = "/KeyGainer/blockuser/${user.userID}">
                                                <button class="btn-success small">Unblock</button>
                                                </form>
                                                </dd><br></c:if>
                                                
                                                <dt>Approved : </dt>
                                           
                                                <c:if test="${user.approved==0}"><dd>No</dd><br></c:if>
                                                <c:if test="${user.approved==1}"><dd>Yes</dd><br></c:if>
                                             </b>  
                                        </dl>
							
						</div>

						
						
					</div><!--/.content-->
				</div>
    </section>
            </div>
            <!--/.container-->
        </div>
        <!--/.wrapper-->
        <div class="footer">
            <div class="container">
                <b class="copyright">&copy; 2014 Edmin - EGrappler.com </b>All rights reserved.
            </div>
        </div>
        <script type="text/javascript" src='<spring:url value="/resources/scripts/jquery-1.9.1.min.js"></spring:url>'></script>
		<script type="text/javascript" src='<spring:url value="/resources/scripts/jquery-ui-1.10.1.custom.min.js"></spring:url>'></script>
		<script type="text/javascript" src='<spring:url value="/resources/bootstrap/js/bootstrap.min.js"></spring:url>'></script>
		<script type="text/javascript" src='<spring:url value="/resources/scripts/flot/jquery.flot.js"></spring:url>'></script>
		<script type="text/javascript" src='<spring:url value="/resources/scripts/flot/jquery.flot.resize.js"></spring:url>'></script>
		<script type="text/javascript" src='<spring:url value="/resources/scripts/datatables/jquery.dataTables.js"></spring:url>'></script>
		<script type="text/javascript" src='<spring:url value="/resources/scripts/common.js"></spring:url>'></script>
        
    </body>
