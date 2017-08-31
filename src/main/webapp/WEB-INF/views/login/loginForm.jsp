<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link href="<c:url value='/css/bootstrap.css' />" rel="stylesheet"></link>
<link href="<c:url value='/css/app.css' />" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>

<body id="mainWrapper">
	<div class="container">
		<div class="row">
			<jsp:include page="../home/menu.jsp" />
		</div>
		<div class="form-group col-md-12">
			<div class="login-container">
				<div class="login-card">
					<div class="login-form">
						<c:url var="loginUrl" value="/login" />
						<form action="${loginUrl}" method="post" class="form-horizontal">
							<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>Invalid username and password.</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p>You have been logged out successfully.</p>
								</div>
							</c:if>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="username"><i
									class="fa fa-user"></i></label> <input type="text" class="form-control"
									id="username" name="email" placeholder="Enter Username"
									required>
							</div>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="password"><i
									class="fa fa-lock"></i></label> <input type="password"
									class="form-control" id="password" name="password"
									placeholder="Enter Password" required>
							</div>
							<div class="input-group input-sm">
								<div class="checkbox">
									<label><input type="checkbox" id="rememberme"
										name="remember-me"> Remember Me</label>
								</div>
							</div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

							<div class="container">
								<div class="form-actions">
									<div class="navbar-left">
										<input type="submit"
											class="btn btn-block btn-primary btn-default"
											style="width: 131%; box-shadow: -7px 1px 31px 8px black;"
											value="Log in">
									</div>
									<div class="navbar-right">
										<a type="submit"
											class="btn btn-block btn-primary btn-default"
											style="width: 131%; box-shadow: -7px 1px 31px 8px black;"
											href="${pageContext.request.contextPath}/newuser"><strong>Sign Up</strong></a>
									</div>									
								</div>

							</div>
							</form>						
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<script type="text/javascript">
	function signUp() {
		document.getElementById('regUser').submit();
		}
	
	</script>
</body>
</html>