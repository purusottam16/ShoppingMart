<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Registration Confirmation Page</title>
	<link href="<c:url value='/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/css/app.css' />" rel="stylesheet"></link>
	<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/admin.css" />	
</head>
<body>
<div><jsp:include page="../home/menu.jsp" /></div>
	<div class="generic-container">
        <%@include file="../authheader.jsp" %>
         
		<div class="alert alert-success lead">
	    	${success}
		</div>
		
		<span class="well pull-left">
			<a href="<c:url value='/add-document-${user.id}' />">Click here to upload/manage your documents</a>	
		</span>
        <span class="well floatRight">
			Go to <a href="<c:url value='/list' />">Users List</a>
		</span>
	</div>
</body>

</html>