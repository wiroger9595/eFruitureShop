
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<%@include file="/WEB-INF/views/template/header.jsp" %>

    <!-- header end -->
    <main>
        <!--? slider Area Start-->
        <div class="slider-area ">
            <div class="slider-active">
                <div class="single-slider hero-overly2  slider-height2 d-flex align-items-center slider-bg2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-8 col-md-8">
                                <div class="hero__caption hero__caption2">
                                    <h1 data-animation="fadeInUp" data-delay=".4s" >Products</h1>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                            <li class="breadcrumb-item"><a href="#">Products</a></li> 
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
        <!--? Properties Start -->
        <section class="properties new-arrival fix">
            <div class="container">
                <!-- Section tittle -->
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8 col-md-10">
                        <div class="section-tittle mb-60 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                            <h2>Popular products</h2>
                            <P>Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra ornare, eros dolor interdum nulla.</P>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <div class="properties__button text-center">
                            <!--Nav Button  -->
                            <nav>                         
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-Sofa-tab" data-toggle="tab" href="#nav-Sofa" role="tab" aria-controls="nav-Sofa" aria-selected="true">Sofa</a>
                                    <a class="nav-item nav-link" id="nav-Table-tab" data-toggle="tab" href="#nav-Table" role="tab" aria-controls="nav-Table" aria-selected="false">Table</a>
                                    <a class="nav-item nav-link" id="nav-Chair-tab" data-toggle="tab" href="#nav-Chair" role="tab" aria-controls="nav-Chair" aria-selected="false">Chair</a>

                                    <a class="nav-item nav-link" id="nav-Bed-tab" data-toggle="tab" href="#nav-Bed" role="tab" aria-controls="nav-Bed" aria-selected="false">Bed</a>
                                    <a class="nav-item nav-link" id="nav-Lightning-tab" data-toggle="tab" href="#nav-Lightning" role="tab" aria-controls="nav-Lightning" aria-selected="false">Lightning</a>
                                    <a class="nav-item nav-link" id="nav-Decore-tab" data-toggle="tab" href="#nav-Decore" role="tab" aria-controls="nav-Decore" aria-selected="false">Decore</a>
                                </div>
                            </nav>
                            <!--End Nav Button  -->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Nav Card -->
                    <div class="tab-content" id="nav-tabContent">
                    
                        <!-- card one -->
                        
	                        <div class="tab-pane fade show active" id="nav-Sofa" role="tabpanel" aria-labelledby="nav-Sofa-tab">
	                           <div class="row">   
	                            	<c:forEach items="${products}" var="product">
	            						<c:if test="${product.productCategory == 'Sofa' }">
		                             	<div class="col-lg-4 col-md-6 col-sm-6">
		                                    <div class="single-new-arrival mb-50 text-center">
		                                    
		                                    
		                                        <div class="popular-img">
		                                            <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image" style="width:100%"/>
		                                        </div>
		                                        <div class="popular-caption">
		                                            <h3><a href="<spring:url value="/frontView/productList/viewProductDetail/${product.productId}" /> ">>${product.productName}</a></h3>
		                                            <span>${product.productPrice}</span>
		                                        </div>
		                                    </div>
		                                </div>
	                           		   </c:if>
	                           		 </c:forEach>
	                           	 </div>
	                        </div>
                        
                        
                        <!-- Card two -->
                        <div class="tab-pane fade" id="nav-Table" role="tabpanel" aria-labelledby="nav-Table-tab">
                            <div class="row">
                                <c:forEach items="${products}" var="product">
	            						<c:if test="${product.productCategory == 'Table' }">
		                             	<div class="col-lg-4 col-md-6 col-sm-6">
		                                    <div class="single-new-arrival mb-50 text-center">
		                                        <div class="popular-img">
		                                            <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image" style="width:100%"/>
		                                        </div>
		                                        <div class="popular-caption">
		                                            <h3><a href="<spring:url value="/frontView/productList/viewProductDetail/${product.productId}" /> ">>${product.productName}</a></h3>
		                                            <span>${product.productPrice}</span>
		                                        </div>
		                                    </div>
		                                </div>
	                           		   </c:if>
	                           		 </c:forEach>
                                
                            </div>
                        </div>
                        <!-- Card three -->
                        <div class="tab-pane fade" id="nav-Chair" role="tabpanel" aria-labelledby="nav-Chair-tab">
                            <div class="row">
                                <c:forEach items="${products}" var="product">
	            						<c:if test="${product.productCategory == 'Chair' }">
		                             	<div class="col-lg-4 col-md-6 col-sm-6">
		                                    <div class="single-new-arrival mb-50 text-center">
		                                        <div class="popular-img">
		                                            <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image" style="width:100%"/>
		                                        </div>
		                                        <div class="popular-caption">
		                                            <h3><a href="<spring:url value="/frontView/productList/viewProductDetail/${product.productId}" /> ">>${product.productName}</a></h3>
		                                            <span>${product.productPrice}</span>
		                                        </div>
		                                    </div>
		                                </div>
	                           		   </c:if>
	                           	</c:forEach>
                            </div>
                        </div>
                        <!-- Card FOUR -->
                        <div class="tab-pane fade" id="nav-Bed" role="tabpanel" aria-labelledby="nav-Bed-tab">
                            <div class="row">
                               		<c:forEach items="${products}" var="product">
	            						<c:if test="${product.productCategory == 'Bed' }">
		                             	<div class="col-lg-4 col-md-6 col-sm-6">
		                                    <div class="single-new-arrival mb-50 text-center">
		                                        <div class="popular-img">
		                                            <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image" style="width:100%"/>
		                                        </div>
		                                        <div class="popular-caption">
		                                            <h3><a href="<spring:url value="/frontView/productList/viewProductDetail/${product.productId}" /> ">>${product.productName}</a></h3>
		                                            <span>${product.productPrice}</span>
		                                        </div>
		                                    </div>
		                                </div>
	                           		   </c:if>
	                           		 </c:forEach>
                                    
                                    </div>
                                </div>
                                
                        <!-- Card FIVE -->
                        <div class="tab-pane fade" id="nav-Lightning" role="tabpanel" aria-labelledby="nav-Lightning-tab">
                            <div class="row">
                               <c:forEach items="${products}" var="product">
	            						<c:if test="${product.productCategory == 'Lighting' }">
		                             	<div class="col-lg-4 col-md-6 col-sm-6">
		                                    <div class="single-new-arrival mb-50 text-center">
		                                        <div class="popular-img">
		                                            <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image" style="width:100%"/>
		                                        </div>
		                                        <div class="popular-caption">
		                                            <h3><a href="<spring:url value="/frontView/productList/viewProductDetail/${product.productId}" /> ">>${product.productName}</a></h3>
		                                            <span>${product.productPrice}</span>
		                                        </div>
		                                    </div>
		                                </div>
	                           		   </c:if>
	                           		 </c:forEach>
                            </div>
                        </div>
                        <!-- Card SIX -->
                        <div class="tab-pane fade" id="nav-Decore" role="tabpanel" aria-labelledby="nav-Decore-tab">
                            <div class="row">
                                <c:forEach items="${products}" var="product">
	            						<c:if test="${product.productCategory == 'Decore' }">
		                             	<div class="col-lg-4 col-md-6 col-sm-6">
		                                    <div class="single-new-arrival mb-50 text-center">
		                                        <div class="popular-img">
		                                            <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image" style="width:100%"/>
		                                        </div>
		                                        <div class="popular-caption">
		                                            <h3><a href="<spring:url value="/frontView/productList/viewProductDetail/${product.productId}" /> ">>${product.productName}</a></h3>
		                                            <span>${product.productPrice}</span>
		                                        </div>
		                                    </div>
		                                </div>
	                           		   </c:if>
	                           		 </c:forEach>
                        </div>
                    </div>
                    <!-- End Nav Card -->
                </div>
                <!-- Button -->
                <br>
                <br>
                <div class="row justify-content-center">
                    <div class="room-btn">
                        <a href="product.html" class="border-btn">Discover More</a>
                    </div>
                </div>
            </div>
            </div>
        </section>
        <!-- Properties End -->
        
        <!--? New Arrival End -->
        <!-- Popular Locations End -->
       
        <!--? Services Area End -->
    </main>
   
   
<%@include file="/WEB-INF/views/template/footer.jsp" %>
   