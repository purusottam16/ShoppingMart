<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<title>Elite Plus</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Elite" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 









</script>
<!--//tags -->
<link rel="shortcut icon"
	href="${pageContext.servletContext.contextPath}/icons/favicon.ico"
	type="image/x-icon" />
<link href="${pageContext.servletContext.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
	
<link href="${pageContext.servletContext.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<link
	href="${pageContext.servletContext.contextPath}/css/font-awesome.css"
	rel="stylesheet">
<link
	href="${pageContext.servletContext.contextPath}/css/easy-responsive-tabs.css"
	rel='stylesheet' type='text/css' />
<!-- //for bootstrap working -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="container">
			<ul>
				<li><a href="#" data-toggle="modal" data-target="#myModal"><i
						class="fa fa-unlock-alt" aria-hidden="true"></i> Sign In </a></li>
				<li><a href="#" data-toggle="modal" data-target="#myModal2"><i
						class="fa fa-pencil-square-o" aria-hidden="true"></i> Sign Up </a></li>
				<li><i class="fa fa-phone" aria-hidden="true"></i> Call :
					01234567898</li>
				<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a
					href="mailto:info@example.com">info@example.com</a></li>
			<div id="wrapper">
			<sec:authorize access="isAuthenticated()">
    			<sec:authentication property="principal.username" var="username" />
			</ul>
			

			<!-- <sec:authorize access="isFullyAuthenticated()"> -->
			
			<nav class="navbar navbar-default top-navbar" role="navigation"> -->
				<ul class="nav navbar-top-links navbar-right">
					<li><a class="dropdown-button waves-effect waves-dark"
						href="#!" data-activates="dropdown1"><i
							class="fa fa-user fa-fw"></i> <b>${username}</b> <i
							class="material-icons right"></i></a></li></ul>
</nav>
				<ul id="dropdown1" class="dropdown-content">
					<li><a href="${pageContext.servletContext.contextPath}/edit-user-{user.email}"><i class="fa fa-user fa-fw"></i> My
							Profile</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
					</li>
					<li><a href="${pageContext.servletContext.contextPath}/logout"><i class="fa fa-sign-out fa-fw"></i>
							Logout</a></li>
				</ul>
				<%-- <li class="dropdown menu__item" tabindex="-1" role="dialog"><a href="#"
									class="dropdown-toggle menu__link" data-toggle="dropdown"
									role="button" aria-haspopup="true" aria-expanded="false">Welcome, <strong>${loggedinuser}</strong><span class="caret"></span>
								</a>
								<ul class="dropdown-menu agile_short_dropdown">
										<li><a
											href="${pageContext.servletContext.contextPath}/edit-user-{user.email}">Preferences</a></li>
											<li><a href="/help/support"><i class="fa fa-phone"></i>
										Contact</a></li>
										<li><a
											href="${pageContext.servletContext.contextPath}/logout">Logout</a></li>
									</ul></li> --%>

				<%-- <li class="dropdown menu__item" tabindex="-1" role="dialog">
						<div class="" >
							<a href="#" class="fa fa-user dropdown-toggle"
								data-toggle="dropdown">Welcome, </strong>
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a
									href="${pageContext.servletContext.contextPath}/edit-user-{user.email}"><i
										class="fa fa-cog" aria-hidden="true"></i> Preferences</a></li>
								<li><a href="/help/support"><i class="fa fa-phone"></i>
										Contact</a></li>
								<!--  <li class="divider"></li> -->
								<li><a
									href="${pageContext.servletContext.contextPath}/logout"><i
										class="fa fa-power-off" aria-hidden="true"></i> Logout</a></li>
							</ul>
						</div>
					</li> --%>
				</sec:authorize>
			

			</ul>
			</sec:authorize>
			</div>
			<!-- <div class="pull-right">
                <ul class="nav pull-right">
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Welcome, User <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="/user/preferences"><i class="icon-cog"></i> Preferences</a></li>
                            <li><a href="/help/support"><i class="icon-envelope"></i> Contact Support</a></li>
                            <li class="divider"></li>
                            <li><a href="/auth/logout"><i class="icon-off"></i> Logout</a></li>
                        </ul>
                    </li>
                </ul>
              </div> -->
		</div>
	</div>


	<!-- //header -->
	<!-- header-bot -->
	<div class="header-bot">
		<div class="header-bot_inner_wthreeinfo_header_mid">
			<div class="col-md-4 header-middle">
				<form action="#" method="post">
					<input type="search" name="search" placeholder="Search here..."
						required=""> <input type="submit" value=" ">
					<div class="clearfix"></div>
				</form>
			</div>
			<!-- header-bot ,put logo in bellow div class -->
			<div class="col-md-4 logo_agile">
				<h1>
					<a href="${pageContext.servletContext.contextPath}/dashboard.htm"><span>E</span>lite
						Plus<i class="fa fa-shopping-bag top_logo_agile_bag"
						aria-hidden="true"></i></a>
				</h1>
			</div>
			<!-- header-bot -->
			<div class="col-md-4 agileits-social top_content">
				<ul class="social-nav model-3d-0 footer-social w3_agile_social">
					<li class="share">Share On :</li>
					<li><a href="#" class="facebook">
							<div class="front">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="twitter">
							<div class="front">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="instagram">
							<div class="front">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="pinterest">
							<div class="front">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</div>
					</a></li>
				</ul>



			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header-bot -->
	<!-- banner -->
	<div class="ban-top">
		<div class="container">
			<div class="top_nav_left">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse menu--shylock"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav menu__list">
								<li class="active menu__item menu__item--current"><a
									class="menu__link"
									href="${pageContext.servletContext.contextPath}/dashboard.htm">Home
										<span class="sr-only">(current)</span>
								</a></li>
								<li class=" menu__item"><a class="menu__link"
									href="${pageContext.servletContext.contextPath}/about.htm">About</a></li>
								<li class="dropdown menu__item"><a href="#"
									class="dropdown-toggle menu__link" data-toggle="dropdown"
									role="button" aria-haspopup="true" aria-expanded="false">Men's
										wear <span class="caret"></span>
								</a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
												<a href="${pageContext.servletContext.contextPath}/mens.htm"><img
													src="${pageContext.servletContext.contextPath}/images/img/top2.jpg"
													alt=" " /></a>
											</div>
											<div class="col-sm-3 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Clothing</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Wallets</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Footwear</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Watches</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Accessories</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Bags</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Caps
															& Hats</a></li>
												</ul>
											</div>
											<div class="col-sm-3 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Jewellery</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Sunglasses</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Perfumes</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Beauty</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Shirts</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Sunglasses</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/mens.htm">Swimwear</a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul></li>
								<li class="dropdown menu__item"><a href="#"
									class="dropdown-toggle menu__link" data-toggle="dropdown"
									role="button" aria-haspopup="true" aria-expanded="false">Women's
										wear <span class="caret"></span>
								</a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<div class="col-sm-3 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Clothing</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Wallets</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Footwear</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Watches</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Accessories</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Bags</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Caps
															& Hats</a></li>
												</ul>
											</div>
											<div class="col-sm-3 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Jewellery</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Sunglasses</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Perfumes</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Beauty</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Shirts</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Sunglasses</a></li>
													<li><a
														href="${pageContext.servletContext.contextPath}/womens.htm">Swimwear</a></li>
												</ul>
											</div>
											<div class="col-sm-6 multi-gd-img multi-gd-text ">
												<a
													href="${pageContext.servletContext.contextPath}/womens.htm"><img
													src="${pageContext.servletContext.contextPath}/images/img/top1.jpg"
													alt=" " /></a>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul></li>
								<li class="menu__item dropdown"><a class="menu__link"
									href="#" class="dropdown-toggle" data-toggle="dropdown">Short
										Codes <b class="caret"></b>
								</a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a
											href="${pageContext.servletContext.contextPath}/icons.htm">Web
												Icons</a></li>
										<li><a
											href="${pageContext.servletContext.contextPath}/typography.htm">Typography</a></li>
									</ul></li>
								<li class=" menu__item"><a class="menu__link"
									href="${pageContext.servletContext.contextPath}/contact.htm">Contact</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
			<div class="top_nav_right">
				<div class="wthreecartaits wthreecartaits2 cart cart box_1">
					<form action="https://www.paypal.com/cgi-bin/webscr" method="post"
						class="last">
						<input type="hidden" name="cmd" value="_cart"> <input
							type="hidden" name="display" value="1">
						<button class="w3view-cart" type="submit" name="submit" value="">
							<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
						</button>
					</form>

				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<!-- //banner-top -->
	<!-- Modal1 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">
							Sign In <span>Now</span>
						</h3>
						<%-- <form:form method="POST" id="loginform" modelAttribute="login" action="${pageContext.servletContext.contextPath}/login"
				class="styled-input agile-styled-input-top"> --%>
						<form action="${pageContext.servletContext.contextPath}/login"
							method="post">
							
							<c:if test="${param.error != null}">
								<div   class="alert alert-danger" id="msgDisplay">
									<p>Invalid username and password.</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success" id="msgDisplaySuccess">
									<p>You have been logged out successfully.</p>
								</div>
							</c:if>
							
							<div class="styled-input">
								<input id="log_email" type="email" name="email" required=""> <label>Email</label>
								<span></span>
							</div>
							<div class="styled-input agile-styled-input-top">
								<input id="log_password" type="password" name="password" required=""> <label>Password</label>
								<span></span>
							</div>
							<div class="input-group input-sm">
                              <div class="checkbox">
                                <label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>  
                              </div>
							</div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input type="submit" id="signin"
								value="Sign In">
						</form>
						<%-- </form:form> --%>
						<ul
							class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
							<li><a id="fb_login_link"
								href="${pageContext.servletContext.contextPath}/request/auth?provider=facebook"
								onclick="loginFacebook(); return false;" class="facebook">
									<div class="front">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div> <!-- <div class="fb-login-button front fa fa-facebook" data-max-rows="2"
										data-size="small" data-button-type="login_with"
										data-show-faces="false" data-auto-logout-link="true"
										data-use-continue-as="true"></div>
										<div class="fb-login-button back fa fa-facebook" data-max-rows="2"
										data-size="small" data-button-type="login_with"
										data-show-faces="false" data-auto-logout-link="true"
										data-use-continue-as="true"></div> -->
							</a></li>
							<li><a href="#" class="twitter">
									<div class="front">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="instagram">
									<div class="front">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="pinterest">
									<div class="front">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
							</a></li>
						</ul>
						<div class="clearfix"></div>
						<p>
							<a href="#" data-toggle="modal" data-target="#myModal2">
								Don't have an account?</a>
						</p>

					</div>
					<div class="col-md-4 modal_body_right modal_body_right1">
						<img
							src="${pageContext.servletContext.contextPath}/images/img/log_pic.jpg"
							alt=" " />
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- Modal2 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">
							Sign Up <span>Now</span>
						</h3>
						<form:form method="POST" modelAttribute="user"
							action="${pageContext.servletContext.contextPath}/newuser"
							class="styled-input agile-styled-input-top">
							<form:input type="hidden" path="id" id="id" />
							<div class="styled-input agile-styled-input-top">
								<form:input type="text" path="firstName" id="firstName" />
								<label>First Name</label>
								<div class="has-error">
									<form:errors path="firstName" class="help-inline" />
								</div>
							</div>
							<div class="styled-input">
								<form:input type="text" path="lastName" id="lasName" />
								<label>Last Name</label>
								<div class="has-error">
									<form:errors path="lastName" class="help-inline" />
								</div>
							</div>
							<div class="styled-input">
								<form:input type="text" path="gender" id="gender" />
								<label>Gender</label>
								<div class="has-error">
									<form:errors path="gender" class="help-inline" />
								</div>
							</div>
							<div class="styled-input">
								<form:input type="text" path="dob" id="DOB" />
								<label>Date Of Birth</label>
								<div class="has-error">
									<form:errors path="dob" class="help-inline" />
								</div>
							</div>
							<div class="styled-input">
								<form:input type="text" path="email" id="email" />
								<label>Email</label>
							</div>

							<div class="styled-input">
								<form:input type="password" path="password" required="" />
								<label>Password</label> <span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="confirmPassword" required="" /> <label>Confirm
									Password</label> <span></span>
							</div>
							<input type="submit" value="Sign Up">
						</form:form>
						<!-- <form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required=""> <label>Name</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> <label>Email</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="password" required=""> <label>Password</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="Confirm Password" required="">
								<label>Confirm Password</label> <span></span>
							</div>
							<input type="submit" value="Sign Up">
						</form> -->
						<ul
							class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
							<li><a id="fb_login_link" href="#"
								onclick="loginFacebook(); return false;" class="facebook">
									<div class="front">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="twitter">
									<div class="front">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="instagram">
									<div class="front">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="pinterest">
									<div class="front">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
							</a></li>
						</ul>
						<div class="clearfix"></div>
						<p>
							<a href="#">By clicking register, I agree to your terms</a>
						</p>

					</div>
					<div class="col-md-4 modal_body_right modal_body_right1">
						<img
							src="${pageContext.servletContext.contextPath}/images/img/log_pic.jpg"
							alt=" " />
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal2 -->

	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
			<li data-target="#myCarousel" data-slide-to="4" class=""></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							The Biggest <span>Sale</span>
						</h3>
						<p>Special for today</p>
						<a class="hvr-outline-out button2"
							href="${pageContext.servletContext.contextPath}/mens.htm">Shop
							Now </a>
					</div>
				</div>
			</div>
			<div class="item item2">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							Summer <span>Collection</span>
						</h3>
						<p>New Arrivals On Sale</p>
						<a class="hvr-outline-out button2"
							href="${pageContext.servletContext.contextPath}/mens.htm">Shop
							Now </a>
					</div>
				</div>
			</div>
			<div class="item item3">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							The Biggest <span>Sale</span>
						</h3>
						<p>Special for today</p>
						<a class="hvr-outline-out button2"
							href="${pageContext.servletContext.contextPath}/mens.htm">Shop
							Now </a>
					</div>
				</div>
			</div>
			<div class="item item4">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							Summer <span>Collection</span>
						</h3>
						<p>New Arrivals On Sale</p>
						<a class="hvr-outline-out button2"
							href="${pageContext.servletContext.contextPath}/mens.htm">Shop
							Now </a>
					</div>
				</div>
			</div>
			<div class="item item5">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							The Biggest <span>Sale</span>
						</h3>
						<p>Special for today</p>
						<a class="hvr-outline-out button2"
							href="${pageContext.servletContext.contextPath}/mens.htm">Shop
							Now </a>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
		<!-- The Modal -->
	</div>
	<!-- //banner -->
	<div class="banner_bottom_agile_info">
		<div class="container">
			<div class="banner_bottom_agile_info_inner_w3ls">
				<div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
					<figure class="effect-roxy">
						<img
							src="${pageContext.servletContext.contextPath}/images/img/bottom1.jpg"
							alt=" " class="img-responsive" />
						<figcaption>
							<h3>
								<span>F</span>all Ahead
							</h3>
							<p>New Arrivals</p>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
					<figure class="effect-roxy">
						<img
							src="${pageContext.servletContext.contextPath}/images/img/bottom2.jpg"
							alt=" " class="img-responsive" />
						<figcaption>
							<h3>
								<span>F</span>all Ahead
							</h3>
							<p>New Arrivals</p>
						</figcaption>
					</figure>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- schedule-bottom -->
	<div class="schedule-bottom">
		<div class="col-md-6 agileinfo_schedule_bottom_left">
			<img
				src="${pageContext.servletContext.contextPath}/images/img/mid.jpg"
				alt=" " class="img-responsive" />
		</div>
		<div class="col-md-6 agileits_schedule_bottom_right">
			<div class="w3ls_schedule_bottom_right_grid">
				<h3>
					Save up to <span>50%</span> in this week
				</h3>
				<p>Suspendisse varius turpis efficitur erat laoreet dapibus.
					Mauris sollicitudin scelerisque commodo.Nunc dapibus mauris sed
					metus finibus posuere.</p>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-user-o" aria-hidden="true"></i>
					<h4>Customers</h4>
					<h5 class="counter">653</h5>
				</div>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-calendar-o" aria-hidden="true"></i>
					<h4>Events</h4>
					<h5 class="counter">823</h5>
				</div>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-shield" aria-hidden="true"></i>
					<h4>Awards</h4>
					<h5 class="counter">45</h5>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //schedule-bottom -->
	<!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<h3 class="wthree_text_info">
				What's <span>Trending</span>
			</h3>

			<div class="col-md-5 bb-grids bb-left-agileits-w3layouts">
				<a href="/${pageContext.servletContext.contextPath}/womens.htm">
					<div class="bb-left-agileits-w3layouts-inner grid">
						<figure class="effect-roxy">
							<img
								src="${pageContext.servletContext.contextPath}/images/img/bb1.jpg"
								alt=" " class="img-responsive" />
							<figcaption>
								<h3>
									<span>S</span>ale
								</h3>
								<p>Upto 55%</p>
							</figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-7 bb-grids bb-middle-agileits-w3layouts">
				<a href="${pageContext.servletContext.contextPath}/mens.htm">
					<div class="bb-middle-agileits-w3layouts grid">
						<figure class="effect-roxy">
							<img
								src="${pageContext.servletContext.contextPath}/images/img/bottom3.jpg"
								alt=" " class="img-responsive" />
							<figcaption>
								<h3>
									<span>S</span>ale
								</h3>
								<p>Upto 55%</p>
							</figcaption>
						</figure>
					</div>
				</a> <a href="${pageContext.servletContext.contextPath}/mens.htm">
					<div class="bb-middle-agileits-w3layouts forth grid">
						<figure class="effect-roxy">
							<img
								src="${pageContext.servletContext.contextPath}/images/img/bottom4.jpg"
								alt=" " class="img-responsive">
							<figcaption>
								<h3>
									<span>S</span>ale
								</h3>
								<p>Upto 65%</p>
							</figcaption>
						</figure>
					</div>
				</a>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--/grids-->
	<div class="agile_last_double_sectionw3ls">
		<div class="col-md-6 multi-gd-img multi-gd-text ">
			<a href="${pageContext.servletContext.contextPath}/womens.htm"><img
				src="${pageContext.servletContext.contextPath}/images/img/bot_1.jpg"
				alt=" ">
				<h4>
					Flat <span>50%</span> offer
				</h4></a>

		</div>
		<div class="col-md-6 multi-gd-img multi-gd-text ">
			<a href="${pageContext.servletContext.contextPath}/womens.htm"><img
				src="${pageContext.servletContext.contextPath}/images/img/bot_2.jpg"
				alt=" ">
				<h4>
					Flat <span>50%</span> offer
				</h4></a>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--/grids-->
	<!-- /new_arrivals -->
	<div class="new_arrivals_agile_w3ls_info">
		<div class="container">
			<h3 class="wthree_text_info">
				New <span>Arrivals</span>
			</h3>
			<div id="horizontalTab">
				<ul class="resp-tabs-list">
					<li>Men's</li>
					<li>Women's</li>
					<li>Bags</li>
					<li>Footwear</li>
				</ul>
				<div class="resp-tabs-container">
					<!--/tab_one-->
					<div class="tab1">
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/m1.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/m1.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Formal
											Blue Shirt</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$45.99</span>
										<del>$69.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Formal Blue Shirt" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/m2.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/m2.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Gabi
											Full Sleeve Sweatshirt</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$45.99</span>
										<del>$69.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Sweatshirt" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/m3.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/m3.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Dark
											Blue Track Pants</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$80.99</span>
										<del>$89.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Dark Blue Track Pants" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/m4.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/m4.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Round
											Neck Black T-Shirt</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$190.99</span>
										<del>$159.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Black T-Shirt" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/m5.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/m5.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Men's
											Black Jeans</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$60.99</span>
										<del>$90.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Men's Black Jeans" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/m7.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/m7.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Analog
											Watch</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$160.99</span>
										<del>$290.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Analog Watch" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/m6.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/m6.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Reversible
											Belt</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$30.99</span>
										<del>$50.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Reversible Belt" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/m8.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/m8.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Party
											Men's Blazer</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$260.99</span>
										<del>$390.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Party Men's Blazer" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<!--//tab_one-->
					<!--/tab_two-->
					<div class="tab2">
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/w1.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/w1.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">A-line
											Black Skirt</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$130.99</span>
										<del>$189.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="A-line Black Skirt" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/w2.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/w2.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Sleeveless
											Solid Blue Top</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$140.99</span>
										<del>$189.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Sleeveless Solid Blue Top" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/w3.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/w3.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Skinny
											Jeans</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$150.99</span>
										<del>$189.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Skinny Jeans " /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/w4.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/w4.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Black
											Basic Shorts</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$120.99</span>
										<del>$189.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Black Basic Shorts" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/w5.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/w5.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Pink
											Track Pants</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$220.99</span>
										<del>$389.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Pink Track Pants" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/w6.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/w6.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Analog
											Watch</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$320.99</span>
										<del>$489.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Analog Watch" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/w7.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/w7.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Ankle
											Length Socks</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$100.99</span>
										<del>$159.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Ankle Length Socks" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/w8.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/w8.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Reebok
											Women's Tights</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$130.99</span>
										<del>$169.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Reebok Women's Tights" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<!--//tab_two-->
					<div class="tab3">

						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/b1.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/b1.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Laptop
											Messenger Bag</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$140.99</span>
										<del>$169.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value=" Laptop Messenger Bag" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/b2.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/b2.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Puma
											Backpack</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$127.99</span>
										<del>$169.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Puma Backpack" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/b3.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/b3.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">
											Laptop Backpack</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$120.99</span>
										<del>$189.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value=" Laptop Backpack" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/b4.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/b4.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Travel
											Duffel Bag </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$190.99</span>
										<del>$259.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Travel Duffel Bag " /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/b5.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/b5.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">
											Hand-held Bag </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$190.99</span>
										<del>$259.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value=" Hand-held Bag " /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/b6.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/b6.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Butterflies
											Bag </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$190.99</span>
										<del>$259.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Butterflies Bag" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/b7.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/b7.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Costa
											Swiss Bag </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$290.99</span>
										<del>$359.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Costa Swiss Bag" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/b8.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/b8.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Noble
											Designs Bag </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$120.99</span>
										<del>$159.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Noble Designs Bag " /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="tab4">

						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/s1.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/s1.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Running
											Shoes</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$80.99</span>
										<del>$89.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Running Shoes" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/s2.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/s2.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Shoetopia
											Lace Up</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$90.99</span>
										<del>$59.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Shoetopia Lace Up" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/s3.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/s3.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Steemo
											Casuals(Black)</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$90.99</span>
										<del>$59.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Steemo Casuals (Black)" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/s4.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/s4.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Benetton
											Flip Flops</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$40.99</span>
										<del>$99.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Benetton Flip Flops" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/s5.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/s5.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Moonwalk
											Bellies </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$80.99</span>
										<del>$99.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Moonwalk Bellies" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/s6.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/s6.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Aero
											Canvas Loafers </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$120.99</span>
										<del>$199.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Aero Canvas Loafers" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/s7.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/s7.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Sparx
											Sporty Canvas Shoes</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$160.99</span>
										<del>$199.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Sparx Sporty Canvas Shoes" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img
										src="${pageContext.servletContext.contextPath}/images/img/s8.jpg"
										alt="" class="pro-image-front"> <img
										src="${pageContext.servletContext.contextPath}/images/img/s8.jpg"
										alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.servletContext.contextPath}/single.htm"
												class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="${pageContext.servletContext.contextPath}/single.htm">Women
											BLACK Heels</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$180.99</span>
										<del>$199.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="https://www.paypal.com/cgi-bin/webscr"
											method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="Women BLACK Heels" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="USD" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="Add to cart"
													class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //new_arrivals -->
	<!-- /we-offer -->
	<div class="sale-w3ls">
		<div class="container">
			<h6>
				We Offer Flat <span>40%</span> Discount
			</h6>

			<a class="hvr-outline-out button2"
				href="${pageContext.servletContext.contextPath}/single.htm">Shop
				Now </a>
		</div>
	</div>
	<!-- //we-offer -->
	<!--/grids-->
	<div class="coupons">
		<div class="coupons-grids text-center">
			<div class="w3layouts_mail_grid">
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>FREE SHIPPING</h3>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-headphones" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>24/7 SUPPORT</h3>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-shopping-bag" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>MONEY BACK GUARANTEE</h3>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-gift" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>FREE GIFT COUPONS</h3>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!--grids-->
	<!-- footer -->
	<div class="footer">
		<div class="footer_agile_inner_info_w3l">
			<div class="col-md-3 footer-left">
				<h2>
					<a href="${pageContext.servletContext.contextPath}/dashboard.htm"><span>E</span>lite
						Plus </a>
				</h2>
				<p>Lorem ipsum quia dolor sit amet, consectetur, adipisci velit,
					sed quia non numquam eius modi tempora.</p>
				<ul class="social-nav model-3d-0 footer-social w3_agile_social two">
					<li><a href="#" class="facebook">
							<div class="front">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="twitter">
							<div class="front">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="instagram">
							<div class="front">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="pinterest">
							<div class="front">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</div>
					</a></li>
				</ul>
			</div>
			<div class="col-md-9 footer-right">
				<div class="sign-grds">
					<div class="col-md-4 sign-gd">
						<h4>
							Our <span>Information</span>
						</h4>
						<ul>
							<li><a
								href="${pageContext.servletContext.contextPath}/dashboard.htm">Home</a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/mens.htm">Men's
									Wear</a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/womens.htm">Women's
									wear</a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/about.htm">About</a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/typography.htm">Short
									Codes</a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/contact.htm">Contact</a></li>
						</ul>
					</div>

					<div class="col-md-5 sign-gd-two">
						<h4>
							Store <span>Information</span>
						</h4>
						<div class="w3-address">
							<div class="w3-address-grid">
								<div class="w3-address-left">
									<i class="fa fa-phone" aria-hidden="true"></i>
								</div>
								<div class="w3-address-right">
									<h6>Phone Number</h6>
									<p>+1 234 567 8901</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="w3-address-grid">
								<div class="w3-address-left">
									<i class="fa fa-envelope" aria-hidden="true"></i>
								</div>
								<div class="w3-address-right">
									<h6>Email Address</h6>
									<p>
										Email :<a href="mailto:example@email.com">
											mail@example.com</a>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="w3-address-grid">
								<div class="w3-address-left">
									<i class="fa fa-map-marker" aria-hidden="true"></i>
								</div>
								<div class="w3-address-right">
									<h6>Location</h6>
									<p>Broome St, NY 10002,California, USA.</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="col-md-3 sign-gd flickr-post">
						<h4>
							Flickr <span>Posts</span>
						</h4>
						<ul>
							<li><a
								href="${pageContext.servletContext.contextPath}/single.htm"><img
									src="${pageContext.servletContext.contextPath}/images/img/t1.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single.htm"><img
									src="${pageContext.servletContext.contextPath}/images/img/t2.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single.htm"><img
									src="${pageContext.servletContext.contextPath}/images/img/t3.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single.htm"><img
									src="${pageContext.servletContext.contextPath}/images/img/t4.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single.htm"><img
									src="${pageContext.servletContext.contextPath}/images/img/t1.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single.htm"><img
									src="${pageContext.servletContext.contextPath}/images/img/t2.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single.htm"><img
									src="${pageContext.servletContext.contextPath}/images/img/t3.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single.htm"><img
									src="${pageContext.servletContext.contextPath}/images/img/t2.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single.htm"><img
									src="${pageContext.servletContext.contextPath}/images/img/t4.jpg"
									alt=" " class="img-responsive" /></a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="agile_newsletter_footer">
				<div class="col-sm-6 newsleft">
					<h3>SIGN UP FOR NEWSLETTER !</h3>
				</div>
				<div class="col-sm-6 newsright">
					<form action="#" method="post">
						<input type="email" placeholder="Enter your email..." name="email"
							required=""> <input type="submit" value="Submit">
					</form>
				</div>

				<div class="clearfix"></div>
			</div>
			<p class="copy-right">
				&copy 2017 Elite Plus. All rights reserved | Design by <a href="">Purusottam</a>
			</p>
		</div>
	</div>
	<!-- //footer -->

	<!-- login -->
	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="login-grids">
						<div class="login">
							<div class="login-bottom">
								<h3>Sign up for free</h3>
								<form>
									<div class="sign-up">
										<h4>Email :</h4>
										<input type="text" value="Type here"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Type here';}"
											required="">
									</div>
									<div class="sign-up">
										<h4>Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required="">

									</div>
									<div class="sign-up">
										<h4>Re-type Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required="">

									</div>
									<div class="sign-up">
										<input type="submit" value="REGISTER NOW">
									</div>

								</form>
							</div>
							<div class="login-right">
								<h3>Sign in with your account</h3>
								<form>
									<div class="sign-in">
										<h4>Email :</h4>
										<input type="text" value="Type here"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Type here';}"
											required="">
									</div>
									<div class="sign-in">
										<h4>Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required=""> <a href="#">Forgot password?</a>
									</div>
									<div class="single-bottom">
										<input type="checkbox" id="brand" value=""> <label
											for="brand"><span></span>Remember Me.</label>
									</div>
									<div class="sign-in">
										<input type="submit" value="SIGNIN">
									</div>
								</form>
							</div>
							<div class="clearfix"></div>
						</div>
						<p>
							By logging in you agree to our <a href="#">Terms and
								Conditions</a> and <a href="#">Privacy Policy</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //login -->
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- js -->
	<script type="text/javascript"
		src="${pageContext.servletContext.contextPath}/js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<script
		src="${pageContext.servletContext.contextPath}/js/modernizr.custom.js"></script>
	<!-- Custom-JavaScript-File-Links -->
	<!-- cart-js -->
	<script
		src="${pageContext.servletContext.contextPath}/js/minicart.min.js"></script>
	<script>
		// Mini Cart
		paypal.minicart.render({
			action : '#'
		});

		if (~window.location.search.indexOf('reset=true')) {
			paypal.minicart.reset();
		}
	</script>

	<!-- //cart-js -->
	<!-- script for responsive tabs -->
	<script
		src="${pageContext.servletContext.contextPath}/js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>
	<!-- //script for responsive tabs -->
	<!-- stats -->
	<script
		src="${pageContext.servletContext.contextPath}/js/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/js/jquery.countup.js"></script>
		<script src="${pageContext.servletContext.contextPath}/js/bootbox.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript"
		src="${pageContext.servletContext.contextPath}/js/move-top.js"></script>
	<script type="text/javascript"
		src="${pageContext.servletContext.contextPath}/js/jquery.easing.min.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>

	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->


	<!-- for bootstrap working -->
	<script type="text/javascript"
		src="${pageContext.servletContext.contextPath}/js/bootstrap.js"></script>
	<script type="text/javascript">
		 /* $("#signin").on("click", function(e){
			e.preventDefault();
				 $('#loginform').attr('action', '${pageContext.servletContext.contextPath}/login').submit(); 
				}); */

								
		 $(function() {
			 $("#signin").click(function(){
				 event.preventDefault();
				 /* the email & the password values from the index page are assigned to varialbes */
				 var emailV = $( "#log_email" ).val();
				 var url='${pageContext.servletContext.contextPath}/login';
				 var pwdV = $( "#log_password" ).val();
				 /* check and make sure the user didn't submit blank values.
					This is where you can add more validation checks which i left open for expantion */
				 if(emailV =="" || pwdV =="" ){
					 $("#msgDisplay").html("Email address or password fields cannot be empty");
				 }
				 else{
					 var csrf_token='<c:out value='${_csrf.token}'/>';
						var csrf_param_name='<c:out value='${_csrf.parameterName}'/>';			 
					 $.ajax({
						type: "POST",			
						url: url, /* to validate the user input with database */
						data: {'email': emailV, 'password': pwdV, '_csrf': csrf_token},
						 /* passing the email & the password values to loginprocess.php */
						 headers: {'X-CSRF-Token': $('meta[name="_csrf"]').attr('content')},
						success: function(msg){
							 if(msg == 'success'){
								alert('test1=>: ' + msg) ; /* debug testing */
								$("#signmein").modal('hide');
									/* hide the dialog box if the login is successfull */
								/* bootbox.alert("<strong><center><i class='fa fa-check-square-o'></i>&nbsp;&nbsp;"
									 +msg +
									 + "</center></strong>");	 */				
							 }
							 /* else{
								 $("#msgDisplay").html(msg.error); /* Display login failer message in the div tag id=msgDisplay */
								 alert('test2=>: '+ msg);	/* debug testing */
							 } */				
						},
						error: function(msg){				
									
									/*  bootbox.alert("<strong><center><i class='fa fa-lg fa-ban text-danger'></i>&nbsp;&nbsp;"
											 +""+
											 + "</center></strong>"); */
							 $("#msgDisplay").html("Credentials not found!");
						}
					});		 
					
				 }	   
				   return false;
			 });
			});


		
	</script>
	<script type="text/javascript">
		function DropDown(el) {
			this.dd = el;
			this.initEvents();
		}
		DropDown.prototype = {
			initEvents : function() {
				var obj = this;

				obj.dd.on('click', function(event) {
					$(this).toggleClass('active');
					event.stopPropagation();
				});
			}
		}
		$(function() {

			var dd = new DropDown($('#dd'));

			$(document).click(function() {
				// all dropdowns
				$('.wrapper-dropdown-2').removeClass('active');
			});

		});
	</script>





	<div id="fb-root"></div>






	<script type="text/javascript">
		window.fbAsyncInit = function() {
			FB.init({
				appId : '1924530464539323',
				oauth : true,
				status : true, // check login status
				cookie : true, // enable cookies to allow the server to access the session
				xfbml : false
			// parse XFBML
			});

		};
		(function() {
			var e = document.createElement('script');
			e.src = document.location.protocol
					+ '//connect.facebook.net/en_US/all.js';
			e.async = true;
			document.getElementById('fb-root').appendChild(e);
		}());
		function loginFacebook() {
			FB
					.login(
							function(response) {
								if (response.authResponse) {
									// connected
									$('#fb_login_link').css('display', 'none');
									loginStatusInfo();
									testAPI();
								} else {
									// cancelled
								}
							},
							{
								scope : 'user_birthday,email,user_status,public_profile,user_about_me,user_location',
								return_scopes : true
							});
		}

		function testAPI() {
			console.log('Welcome!  Fetching your information.... ');
			FB
					.api(
							'/me',
							{
								fields : 'first_name,gender,last_name,birthday,email'
							},
							function(response) {
								var fName = response.first_name;
								$('#id').text(response.id);
								$('#name').text(response.name);
								$('#firstName').text(response.first_name);

								document.getElementById("firstName").value = response.first_name;
								document.getElementById("lasName").value = response.last_name;
								document.getElementById("gender").value = response.gender;
								document.getElementById("DOB").value = response.birthday;
								if (response.hasOwnProperty('email')
										&& response.email != 'undefined') {
									document.getElementById("email").value = response.email;
								}

								$('#lasName').text(response.last_name);
								$('#link').text(response.link);
								$('#username').text(response.username);
								$('#birthday').text(response.birthday);
								//$('#email').text(response.email);

								$('#user_info').css('display', 'block');
								console.log('response.id ' + response.id);
								console.log('response.name ' + response.name);
								console.log('response.first_name '
										+ response.first_name);
								console.log('response.last_name '
										+ response.last_name);
								console.log('response.username '
										+ response.username);
								console.log('response.email ' + response.email);
								console.log('response.birthday '
										+ response.birthday);
								console.log('response.link ' + response.link);
								console.log('response.gender '
										+ response.gender);
								console.log('response.user_about_me '
										+ response.user_about_me);
								console.log("=======   " + response);
							});
		}

		function loginStatusInfo() {
			FB.getLoginStatus(function(response) {
				if (response.status === 'connected') {
					$('#fb_status').text('Connected');

					$('#accessToken').text(response.authResponse.accessToken);
					$('#expiresIn').text(response.authResponse.expiresIn);
					$('#userID').text(response.authResponse.userID);

					$('#user_auth_info').css('display', 'block');
				}
			});
		}
	</script>

	<script>
		paypal.minicart.render();

		/*  paypal.minicart.cart.on('checkout', function (evt) {
		 	var items, len, i;

		 	if (this.subtotal() > 0) {
		 		items = this.items();

		 		for (i = 0, len = items.length; i < len; i++) {
		 			items[i].set('shipping', 0);
		 			items[i].set('shipping2', 0);
		 		}
		 	}
		 }); */
	</script>
</body>
</html>
