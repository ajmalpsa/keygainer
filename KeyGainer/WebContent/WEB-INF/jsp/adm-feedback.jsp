<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <head>
    <link rel="icon" href='<spring:url value="/resources/images/logo.ico"></spring:url>' />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Feedbacks</title>
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
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="index.html">k-Admin </a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        
                        <ul class="nav pull-right">
                            
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
                <div class="row">
                    
                    <!--/.span3-->
                    
                    
                    
                    <div class="module message">
                                <div class="module-head">
                                    <h3>
                                        Message</h3>
                                </div>
                                <div class="module-option clearfix">
                                    <div class="pull-left">
                                        <div class="btn-group">
                                            <button class="btn">
                                                Inbox</button>
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Inbox(11)</a></li>
                                                <li><a href="#">Sent</a></li>
                                                <li><a href="#">Draft(2)</a></li>
                                                <li><a href="#">Trash</a></li>
                                                <li class="divider"></li>
                                                <li><a href="#">Settings</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="pull-right">
                                        <a href="#" class="btn btn-primary">Compose</a>
                                    </div>
                                </div>
                                <div class="module-body table">
                                    <table class="table table-message">
                                        <tbody>
                                            <tr class="heading">
                                                <td class="cell-check">
                                                    <input type="checkbox" class="inbox-checkbox">
                                                </td>
                                                <td class="cell-icon">
                                                </td>
                                                <td class="cell-author hidden-phone hidden-tablet">
                                                    Sender
                                                </td>
                                                <td class="cell-title">
                                                    Subject
                                                </td>
                                                
                                                <td class="cell-author ">
                                                    Time
                                                </td>
                                            </tr>
                                            
                                            <c:forEach var="feedback" items="${feedback}">
                                            <c:if test="${feedback.readstatus==0}">
                                            
                                            <tr class="unread" onclick="openmessage(${feedback.feedbackID})">
                                                <td class="cell-check">
                                                    <input type="checkbox" class="inbox-checkbox">
                                                </td>
                                                <td class="cell-icon">
                                                    <i class="icon-star"></i>
                                                </td>
                                                <td class="cell-author hidden-phone hidden-tablet">
                                                   ${feedback.fromUser.name}
                                                </td>
                                                <td class="cell-title">
                                                    ${feedback.subject}
                                                </td>
                                                <td class="cell-author align-right">    
         <fmt:formatDate type = "both" dateStyle = "short" timeStyle = "short" value = "${feedback.feedbackDateTime}" />
                                                </td>
                                            </tr>
                                            
                                            </c:if>
                                            <c:if test="${feedback.readstatus==1}">
                                            <tr class="read" onclick="openmessage(${feedback.feedbackID})">
                                                <td class="cell-check">
                                                    <input type="checkbox" class="inbox-checkbox">
                                                </td>
                                                <td class="cell-icon">
                                                    <i class="icon-star"></i>
                                                </td>
                                                <td class="cell-author hidden-phone hidden-tablet">
                                                   ${feedback.fromUser.name}
                                                </td>
                                                <td class="cell-title">
                                                    ${feedback.subject}
                                                </td>
                                                <td class="cell-author ">    
         <fmt:formatDate type = "both" dateStyle = "short" timeStyle = "short" value = "${feedback.feedbackDateTime}" />
                                                </td>
                                            </tr>
                                            
                                            </c:if>
                                            
                                            </c:forEach>
                                            
                                            
                                            
                                        </tbody>
                                    </table>
                                </div>
                                <div class="module-foot">
                                </div>
                            </div>
                    
                    
                    
                    <!--/.span9-->
                </div>
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
        <script type="text/javascript">
        
        function openmessage(data){
        	var url = "feedbacks/"+data;
        	window.open(url,"_self");
        }
        </script>
      
    </body>
