<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

 	


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>
 <div >
	<nav class="navbar navbar-fixed-top navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Shopping Mart</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Dashboard</a></li>
			<li><a href="#">My Profile</a></li>
			<li><a href="#">Manage Product</a></li>
			<li><a href="#">My Items</a></li>
		</ul>
		
		<ul class="nav navbar-nav navbar-right dropdown-menu">
		<!-- <div class="well"> -->
			<sec:authorize access="hasRole('ADMIN')">
            
               <%--  <a href="<c:url value='/newuser' />">Add New User</a> --%>
                <li><a href='<c:url value="/newuser"></c:url>'><strong>Create Account</strong></a></li>
           
       		 </sec:authorize>
			
			<li class="user-header bg-light-blue">
			<img src="${pageContext.servletContext.contextPath }/images/img_fjords_wide.jpg" alt="user" class="img-circle" style="width: 50%;">
			<a href='<c:url value="/logout"></c:url>'><strong>Logout</strong></a></li>
		</ul>
	</div>
	</nav>
	</div>	
</body>
</html>