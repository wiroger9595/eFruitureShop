<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Shop | eCommerce</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="resources/assets/img/favicon.ico">



<!-- CSS here -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/slicknav.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/flaticon.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/progressbar_barfiller.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/lightslider.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/price_rangs.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/gijgo.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/animate.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/animated-headline.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/magnific-popup.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/themify-icons.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/slick.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/nice-select.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/style.css">
</head>
<body>

	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="<%=request.getContextPath()%>/resources/assets/img/logo/loder.png" alt="">
				</div>
			</div>
		</div>
	</div>

	<header>

		<div class="header-area">
			<div class="main-header header-sticky">
				<div class="container-fluid">
					<div
						class="row menu-wrapper align-items-center justify-content-between">
						<div class="header-left d-flex align-items-center">

							<div class="logo">
								<a href="<c:url value="/" /> "><img src="<%=request.getContextPath()%>/resources/assets/img/logo/logo.png"
									alt=""></a>
							</div>

							<div class="logo2">
								<a href="<c:url value="/" />"><img src="<%=request.getContextPath()%>/resources/assets/img/logo/logo2.png"
									alt=""></a>
							</div>

							<div class="main-menu  d-none d-lg-block">
								<nav>
									<ul id="navigation">
										<li><a href="<c:url value="/" /> "> Home</a></li>
										<li><a href="<c:url value="/frontView/productList" /> "> Product</a></li>
										<li><a href="about.html">About</a></li>
										<li><a href="#">Page</a>
											<ul class="submenu">
												<li><a href="login.html">Login</a></li>
												<li><a href="card.html">Card</a></li>
												<li><a href="categories.html">Categories</a></li>
												<li><a href="checkout.html">Checkout</a></li>
												<li><a href="product_details.html">Product Details</a></li>
											</ul></li>
										<li><a href="blog.html">Blog</a>
											<ul class="submenu">
												<li><a href="blog.html">Blog</a></li>
												<li><a href="blog_details.html">Blog Details</a></li>
												<li><a href="elements.html">Elements</a></li>
											</ul></li>
										<li><a href="contact.html">Contact</a></li>
									</ul>
								</nav>
							</div>
						</div>
						<div class="header-right1 d-flex align-items-center">
							<div class="search">
								<ul class="d-flex align-items-center">
									<li>

										<form action="#" class="form-box f-right ">
											<input type="text" name="Search"
												placeholder="Search products">
											<div class="search-icon">
												<i class="ti-search"></i>
											</div>
										</form>
									</li>
									<li><a href="login.html" class="account-btn"
										target="_blank">My Account</a></li>
									<li>
										<div class="card-stor">
											<img src="<%=request.getContextPath()%>/resources/assets/img/icon/card.svg" alt=""> <span>0</span>
										</div>
									</li>
								</ul>
							</div>
						</div>

						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</header>
