<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<fmt:bundle basename="i18n.static.admin.login.Login">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/slideShow.css" />
	<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/admin.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css" />
<script language="javascript" src="<c:out value="${pageContext.servletContext.contextPath}"/>/js/loginPage.js"></script>
 
<jsp:include page="../header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogIn Page</title>
</head>
<script type="text/javascript">
var badUserName = '<fmt:message key='invalidusername'/>';	 
var badPassword=  '<fmt:message key='invalidpassword'/>';
</script>
<body>
		
	<div id="mydiv" class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">
				<fmt:message key='signin' />
			</h3>
		</div>
		<div class="panel-body">
			<label for="username" class="col-sm-12 control-label"> <fmt:message
					key='username' />
			</label>
			<form:form modelAttribute="Login" action='j_spring_security_check'
				method="post" role="form">

				<div class="input-group col-sm-12">
					<form:input id="login-username" path="username" maxlength="20"
						size="25" cssClass="formfield form-control" />
				</div>
				<br />
				<div class="input-group" id="usernamemsg">
					<form:errors path="username" cssClass="errorClass" />
				</div>
				<label for="password" class="col-sm-12 control-label"> <fmt:message
						key='password' />
				</label>
				<div class="input-group col-sm-12">
					<form:password path="password" cssClass="formfield form-control"
						maxlength="20" size="25" />
				</div>

				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<br />

				<div class="input-group" id="passwordmsg">
					<form:errors path="password" cssClass="errorClass" />
				</div>
				<div class="input-group col-sm-12">
					<input type="submit" name="Submit"
						value="<fmt:message key='sign'/>"
						class="btn btn-primary text-capitalize btn-lg btn-block" /> &nbsp;
				</div>
				<div class="input-group" id="passwordmsg">
					<div class="errorClass">
						<c:out value="${error}" />
					</div>

				</div>
				
			</form:form>
			
			<%-- <form name="loginForm"
				action='<c:url value="j_spring_security_check"/>' method="post">
				<table>
					<tr>
						<td colspan="2">LogIn</td>
					</tr>
					<tr>
						<td colspan="2" style="color: red;"><c:if
								test="${not empty error}">${error}</c:if></td>
					</tr>
					<tr>
						<td>UserName</td>
						<td><input type="text" name="username"></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="password"></td>
					</tr>
					<tr>
						<td><input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /></td>
						<td><input type="submit" name="submit"></td>

					</tr>

				</table>

			</form> --%>
</body>
</html>
</fmt:bundle>