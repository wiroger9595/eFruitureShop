<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Paper Dashboard 2 by Creative Tim</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<!-- CSS Files -->
<link href="<%=request.getContextPath()%>/resources/adminAssets/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/resources/adminAssets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="<%=request.getContextPath()%>/resources/adminAssets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="white" data-active-color="danger">
			<div class="logo">
				<a href="https://www.creative-tim.com" class="simple-text logo-mini">
					<div class="logo-image-small">
						<img src="<%=request.getContextPath()%>/resources/adminAssets/img/logo-small.png">
					</div> <!-- <p>CT</p> -->
				</a> <a href="https://www.creative-tim.com"
					class="simple-text logo-normal"> Creative Tim <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
				</a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li><a href="<spring:url value="/adminView/admin" />"> <i class="nc-icon nc-bank"></i>
							<p>Dashboard</p>
					</a></li>
					<li><a href="./icons.html"> <i class="nc-icon nc-diamond"></i>
							<p>Icons</p>
					</a></li>
					<li><a href="./map.html"> <i class="nc-icon nc-pin-3"></i>
							<p>Maps</p>
					</a></li>
					<li><a href="./notifications.html"> <i
							class="nc-icon nc-bell-55"></i>
							<p>Notifications</p>
					</a></li>
					<li><a href="./user.html"> <i class="nc-icon nc-single-02"></i>
							<p>User Profile</p>
					</a></li>
					<li class="active "><a href="./tables.html"> <i
							class="nc-icon nc-tile-56"></i>
							<p>Table List</p>
					</a></li>
					<li><a href="./typography.html"> <i
							class="nc-icon nc-caps-small"></i>
							<p>Typography</p>
					</a></li>
					<li class="active-pro"><a href="./upgrade.html"> <i
							class="nc-icon nc-spaceship"></i>
							<p>Upgrade to PRO</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler">
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="javascript:;">Paper Dashboard 2</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<form>
							<div class="input-group no-border">
								<input type="text" value="" class="form-control"
									placeholder="Search...">
								<div class="input-group-append">
									<div class="input-group-text">
										<i class="nc-icon nc-zoom-split"></i>
									</div>
								</div>
							</div>
						</form>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link btn-magnify"
								href="javascript:;"> <i class="nc-icon nc-layout-11"></i>
									<p>
										<span class="d-lg-none d-md-block">Stats</span>
									</p>
							</a></li>
							<li class="nav-item btn-rotate dropdown"><a
								class="nav-link dropdown-toggle" href="http://example.com"
								id="navbarDropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <i
									class="nc-icon nc-bell-55"></i>
									<p>
										<span class="d-lg-none d-md-block">Some Actions</span>
									</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a> <a
										class="dropdown-item" href="#">Something else here</a>
								</div></li>
							<li class="nav-item"><a class="nav-link btn-rotate"
								href="javascript:;"> <i class="nc-icon nc-settings-gear-65"></i>
									<p>
										<span class="d-lg-none d-md-block">Account</span>
									</p>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Simple Table</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead class=" text-primary">
											<th>Product Photo</th>
											<th>Product Name</th>
											<th>Product Status</th>
											<th>Unit In Stock</th>
											<th class="text-right">Product Price</th>
										</thead>
										<tbody>
											
											
											<c:forEach items="${products}" var="product">
										                <tr>
										                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image" style="width:100%"/></td>
										                    <td>${product.productName}</td>
										                    <td>${product.productCondition}</td>
										                    <td>${product.productPrice} USD</td>
										                    <td><a href="<spring:url value="/productList/viewProduct/${product.productId}" />"
										                    ><span class="glyphicon glyphicon-info-sign"></span></a>
										                        <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}" />"
										                        ><span class="glyphicon glyphicon-remove"></span></a>
										                    </td>
										                </tr>
										            </c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="card card-plain">
							<div class="card-header">
								<h4 class="card-title">Table on Plain Background</h4>
								<p class="card-category">Here is a subtitle for this table</p>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead class=" text-primary">
											<th>Name</th>
											<th>Country</th>
											<th>City</th>
											<th class="text-right">Salary</th>
										</thead>
										<tbody>
											<tr>
												<td>Dakota Rice</td>
												<td>Niger</td>
												<td>Oud-Turnhout</td>
												<td class="text-right">$36,738</td>
											</tr>
											<tr>
												<td>Minerva Hooper</td>
												<td>Curaçao</td>
												<td>Sinaai-Waas</td>
												<td class="text-right">$23,789</td>
											</tr>
											<tr>
												<td>Sage Rodriguez</td>
												<td>Netherlands</td>
												<td>Baileux</td>
												<td class="text-right">$56,142</td>
											</tr>
											<tr>
												<td>Philip Chaney</td>
												<td>Korea, South</td>
												<td>Overland Park</td>
												<td class="text-right">$38,735</td>
											</tr>
											<tr>
												<td>Doris Greene</td>
												<td>Malawi</td>
												<td>Feldkirchen in Kärnten</td>
												<td class="text-right">$63,542</td>
											</tr>
											<tr>
												<td>Mason Porter</td>
												<td>Chile</td>
												<td>Gloucester</td>
												<td class="text-right">$78,615</td>
											</tr>
											<tr>
												<td>Jon Porter</td>
												<td>Portugal</td>
												<td>Gloucester</td>
												<td class="text-right">$98,615</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<h5>
				<a href="<spring:url value="/adminView/admin/productInventory/addProduct" />" class="btn btn-primary">Add Product</a>
			</h5>
			
			<footer class="footer footer-black  footer-white ">
				<div class="container-fluid">
					<div class="row">
						<nav class="footer-nav">
							<ul>
								<li><a href="https://www.creative-tim.com" target="_blank">Creative
										Tim</a></li>
								<li><a href="https://www.creative-tim.com/blog"
									target="_blank">Blog</a></li>
								<li><a href="https://www.creative-tim.com/license"
									target="_blank">Licenses</a></li>
							</ul>
						</nav>
						<div class="credits ml-auto">
							<span class="copyright"> © <script>
								document.write(new Date().getFullYear())
							</script>, made with <i class="fa fa-heart heart"></i> by
								Creative Tim
							</span>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="<%=request.getContextPath()%>/resources/adminAssets/js/core/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/adminAssets/js/core/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/adminAssets/js/core/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/adminAssets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chart JS -->
	<script src="<%=request.getContextPath()%>/resources/adminAssets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="<%=request.getContextPath()%>/resources/adminAssets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="<%=request.getContextPath()%>/resources/adminAssets/js/paper-dashboard.min.js?v=2.0.1"
		type="text/javascript"></script>
	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="<%=request.getContextPath()%>/resources/adminAssets/demo/demo.js"></script>
</body>

</html> --%>



<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<br> <br> <br>

			<h1>Product Inventory Page</h1>
			<span class="glyphicon glyphicon-name">search</span>
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
				fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
			  <path fill-rule="evenodd"
					d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z" />
			  <path fill-rule="evenodd"
					d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z" />
			</svg>

			<p class="lead">This is the product inventory page!</p>
		</div>

		<table class="table table-striped table-hover">
			<thead>
				<tr class="bg-success">
					<th>Photo Thumb</th>
					<th>Product Name</th>
					<th>Condition</th>
					<th>Price</th>
					<th></th>
				</tr>
			</thead>
			<c:forEach items="${products}" var="product">
				<tr>
					<td><img
						src="<c:url value="/resources/images/${product.productId}.png" /> "
						alt="image" style="width: 100%" /></td>
					<td>${product.productName}</td>
					<td>${product.productCondition}</td>
					<td>${product.productPrice}USD</td>
					<td><a
						href="<spring:url value="/frontView/productList/viewProductDetail/${product.productId}" />"><svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-info-circle-fill"
								viewBox="0 0 16 16">
  <path fill-rule="evenodd"
									d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412l-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM8 5.5a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
</svg></a> 
					<a
						href="<spring:url value="/adminView/admin/productInventory/deleteProduct/${product.productId}" />"><svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  <path fill-rule="evenodd"
									d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
</svg> </a> 
					<a
						href="<spring:url value="/adminView/admin/productInventory/editProduct/${product.productId}" />"><svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
  <path fill-rule="evenodd"
									d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5L13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175l-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z" />
</svg> </a></td>
				</tr>
			</c:forEach>
		</table>

		<a href="<spring:url value="/adminView/admin/productInventory/addProduct" />"
			class="btn btn-primary">Add Product</a>

		<%@include file="/WEB-INF/views/template/footer.jsp"%>