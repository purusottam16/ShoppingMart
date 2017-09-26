<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<title>Elite Plus</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Elite Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
	<link href="${pageContext.servletContext.contextPath}/css/customstyle.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.servletContext.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all" />	
<link
	href="${pageContext.servletContext.contextPath}/css/font-awesome.css"
	rel="stylesheet">
	<%-- <link href="${pageContext.servletContext.contextPath}/css/style.default.css" rel="stylesheet" id="theme-stylesheet"> --%>
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

				<c:if test="${loggedinuser != null}">
					<li><a href="#" data-toggle="modal" data-target="#myModal0"><i
							class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit Account
					</a></li>





					<div class="modal fade" id="myModal0" tabindex="-1" role="dialog">
						<div class="modal-dialog">
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>
								<div class="modal-body modal-body-sub_agile">
									<div class="col-md-8 modal_body_left modal_body_left1">
										<h3 class="agileinfo_sign">
											Edit<span> Account</span>
										</h3>
										<%-- <form:form method="POST" id="loginform" modelAttribute="login" action="${pageContext.servletContext.contextPath}/login"
				class="styled-input agile-styled-input-top"> --%>

										<%-- </form:form> --%>

										<div class="clearfix"></div>
										<li class="menu__item dropdown"><a class="menu__link"
											href="#" class="dropdown-toggle" data-toggle="dropdown">Welcome,
												${loggedinuser} </a>
											<ul class="dropdown-menu agile_short_dropdown">
												<li><a
													href="${pageContext.servletContext.contextPath}/edit-user-{user.email}">Preferences</a></li>
												<li><a
													href="${pageContext.servletContext.contextPath}/logout">Logout</a></li>
											</ul></li>

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

				</c:if>

			</ul>
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
					<form action="#" method="post" class="last">
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
							<div class="styled-input">
								<input type="email" name="email" required=""> <label>Email</label>
								<span></span>
							</div>
							<div class="styled-input agile-styled-input-top">
								<input type="password" name="password" required=""> <label>Password</label>
								<span></span>
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
							<li><a id="fb_login_link"
								href="#"
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
        <!-- *** LOGIN MODAL END *** -->
		<br>
           <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>Checkout - Delivery method</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="${pageContext.servletContext.contextPath}/dashboard.htm">Home</a>
                            </li>
                            <li>Checkout - Delivery method</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <div class="row">

                    <div class="col-md-9 clearfix" id="checkout">

                        <div class="box">
                            <form:form modelAttribute="userCheckoutDetails" action="${pageContext.servletContext.contextPath}/checkout/delivery-method.htm">
                           <%--  <form method="post"  action="${pageContext.servletContext.contextPath}/dashboard.htm"> --%>
                               <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                                <ul class="nav nav-pills nav-justified">
                                    <li><a href="${pageContext.servletContext.contextPath}/checkout/address.htm"><i class="fa fa-map-marker"></i><br>Address</a>
                                    </li>
                                    <li class="active"><a href="#"><i class="fa fa-truck"></i><br>Delivery Method</a>
                                    </li>
                                    <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Payment Method</a>
                                    </li>
                                    <li class="disabled"><a href="#"><i class="fa fa-eye"></i><br>Order Review</a>
                                    </li>
                                </ul>
								</div>
                                <div class="content">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="box shipping-method">

                                                <h4>USPS Next Day</h4>

                                                <p>Get it right on next day - fastest option possible.</p>

                                                <div class="box-footer text-center">

                                                    <input type="radio" name="delivery" value="delivery1">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="box shipping-method">

                                                <h4>USPS Next Day</h4>

                                                <p>Get it right on next day - fastest option possible.</p>

                                                <div class="box-footer text-center">

                                                    <input type="radio" name="delivery" value="delivery2">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-6">
                                            <div class="box shipping-method">

                                                <h4>USPS Next Day</h4>

                                                <p>Get it right on next day - fastest option possible.</p>

                                                <div class="box-footer text-center">

                                                    <input type="radio" name="delivery" value="delivery3">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.row -->

                                </div>
                                <!-- /.content -->

                                <div class="box-footer">
                                    <div class="pull-left">
                                        <a href="${pageContext.servletContext.contextPath}/checkout/address.htm " class="btn btn-default hvr-outline-out"><i class="fa fa-chevron-left"></i>BACK TO ADDRESS</a>
                                    </div>
                                    <div class="pull-right">
                                        <button type="submit" class="btn btn-template-main hvr-outline-out">CONTINUE TO PAYMENT METHOD<i class="fa fa-chevron-right"></i>
                                        </button>
                                    </div>
                                </div>
                           <%--  </form> --%>
                           </form:form>
                        </div>
                        <!-- /.box -->


                    </div>
                    <!-- /.col-md-9 -->

                    <div class="col-md-3">

                        <div class="box" id="order-summary">
                            <div class="box-header">
                                <h3>Order summary</h3>
                            </div>
                            <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>

                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td>Order subtotal</td>
                                            <th>$446.00</th>
                                        </tr>
                                        <tr>
                                            <td>Shipping and handling</td>
                                            <th>$10.00</th>
                                        </tr>
                                        <tr>
                                            <td>Tax</td>
                                            <th>$0.00</th>
                                        </tr>
                                        <tr class="total">
                                            <td>Total</td>
                                            <th>$456.00</th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>

                    </div>
                    <!-- /.col-md-3 -->

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>


        <!-- *** GET IT ***
	<!-- banner -->

	<!-- //banner -->
	
	<!-- schedule-bottom -->
	
	<!-- //schedule-bottom -->
	<!-- banner-bootom-w3-agileits -->

	<!--/grids-->
	
	<!--/grids-->
	<!-- /new_arrivals -->
		<!-- //new_arrivals -->
	<!-- /we-offer -->
	<div class="sale-w3ls">
		<%-- <div class="container">
			<h6>
				We Offer Flat <span>40%</span> Discount
			</h6>

			<a class="hvr-outline-out button2"
				href="${pageContext.servletContext.contextPath}/single">Shop Now
			</a>
		</div> --%>
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
								href="${pageContext.servletContext.contextPath}/single"><img
									src="${pageContext.servletContext.contextPath}/images/img/t1.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single"><img
									src="${pageContext.servletContext.contextPath}/images/img/t2.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single"><img
									src="${pageContext.servletContext.contextPath}/images/img/t3.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single"><img
									src="${pageContext.servletContext.contextPath}/images/img/t4.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single"><img
									src="${pageContext.servletContext.contextPath}/images/img/t1.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single"><img
									src="${pageContext.servletContext.contextPath}/images/img/t2.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single"><img
									src="${pageContext.servletContext.contextPath}/images/img/t3.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single"><img
									src="${pageContext.servletContext.contextPath}/images/img/t2.jpg"
									alt=" " class="img-responsive" /></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/single"><img
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
			FB.login(function(response) {
				if (response.authResponse) {
					// connected
					$('#fb_login_link').css('display', 'none');
					loginStatusInfo();
					testAPI();
				} else {
					// cancelled
				}
			}, {
				scope : 'user_birthday,email,user_status,public_profile,user_about_me,user_location',
				return_scopes: true
			});
		}

		function testAPI() {
			console.log('Welcome!  Fetching your information.... ');
			FB.api('/me', {fields: 'first_name,gender,last_name,birthday,email'}, function(response) {
				var fName=response.first_name;
				$('#id').text(response.id);
				$('#name').text(response.name);
				$('#firstName').text(response.first_name);
				
				document.getElementById("firstName").value =response.first_name;
				document.getElementById("lasName").value =response.last_name;
				document.getElementById("gender").value =response.gender;
				document.getElementById("DOB").value =response.birthday;
				if(response.hasOwnProperty('email') && response.email != 'undefined'){
					document.getElementById("email").value =response.email;
				}
				
				$('#lasName').text(response.last_name);
				$('#link').text(response.link);
				$('#username').text(response.username);
				$('#birthday').text(response.birthday);
				//$('#email').text(response.email);

				$('#user_info').css('display', 'block');
				console.log('response.id '+response.id);
				console.log('response.name '+response.name);
				console.log('response.first_name '+response.first_name);
				console.log('response.last_name '+response.last_name);
				console.log('response.username '+response.username);
				console.log('response.email '+response.email);
				console.log('response.birthday '+response.birthday);
				console.log('response.link '+response.link);
				console.log('response.gender '+response.gender);
				console.log('response.user_about_me '+response.user_about_me);
				console.log("=======   "+response);
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
</body>
</html>
