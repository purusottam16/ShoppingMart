<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css" />
	 <link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/bootstrap.css" />
	<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/admin.css" />	


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<div class="container">
 <div class="row">
	<jsp:include page="../home/menu.jsp" />
	</div>
		<div>
		<jsp:include page="../home/slideShow.jsp" />
		</div>
	 <div class="container">
		<div>Welcome to Shopping Mart</div>
		<p>Please proceed to by items....</p>
	</div>
	<%-- <div  style="display: none">
		<span
			style="display: inline; color: rgb(0, 128, 0); font-style: italic;">
			<img
			src="${pageContext.servletContext.contextPath }/images/icon_status_normal_15.gif"
			width="20" height="20"> &nbsp;<span id="clabel_"></span>
		</span>


	</div>

	<c:if test="${pageContext.request.userPrincipal.name !=null} }">${pageContext.request.userPrincipal.name } </c:if>
	<br> --%>
	<footer>Copyright &copy; ShoppingKart.com</footer>
	</div>
</body>
</html>