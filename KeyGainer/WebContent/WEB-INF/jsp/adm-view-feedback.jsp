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
        <title>Feedbacks</title>
         <link rel="icon" href='<spring:url value="/resources/images/logo.ico"></spring:url>' />
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
                                    <li><a href="/KeyGainer/logout">Logout</a></li>
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
      <div class="row">
        
        <!-- /.col -->
        <div class="col-md-9">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Read Feedback</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <div class="mailbox-read-info">
                <h3>${message.subject}</h3>
                <h5>From: <a href="/KeyGainer/user/${message.fromUser.userID}">${message.fromUser.name}</a>
                <h5>About: <a href="/KeyGainer/user/${message.aboutUser.userID}">${message.aboutUser.name}</a></h5>
                  <span class="mailbox-read-time pull-right"><fmt:formatDate type = "both" dateStyle = "short" timeStyle = "short" value = "${message.feedbackDateTime}"/></span></h5>
              </div>
              <!-- /.mailbox-read-info -->
              <div class="mailbox-controls with-border text-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" data-container="body" title="" data-original-title="Delete">
                    <i class="fa fa-trash-o"></i></button>
                  <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" data-container="body" title="" data-original-title="Reply">
                    <i class="fa fa-reply"></i></button>
                  <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" data-container="body" title="" data-original-title="Forward">
                    <i class="fa fa-share"></i></button>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" title="" data-original-title="Print">
                  <i class="fa fa-print"></i></button>
              </div>
              <!-- /.mailbox-controls -->
              <div class="mailbox-read-message">
					${message.message}
              </div>
              <!-- /.mailbox-read-message -->
            </div>
            <!-- /.box-body -->
                        <!-- /.box-footer -->
            <div class="box-footer">
              <div class="pull-right">
                <button type="button" class="btn btn-default"><i class="fa fa-reply"></i> Reply</button>
                <button type="button" class="btn btn-default"><i class="fa fa-share"></i> Forward</button>
              </div>
              <button type="button" class="btn btn-default"><i class="fa fa-trash-o"></i> Delete</button>
              <button type="button" class="btn btn-default"><i class="fa fa-print"></i> Print</button>
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
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
