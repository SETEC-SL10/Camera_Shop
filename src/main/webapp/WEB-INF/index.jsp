
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- AngularJS-->
<script src="${pageContext.request.contextPath}/resources/user/angular/angular.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/user/angular/angular-cookies.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Home</title>
<!-- Flexisel -->
<script src="${pageContext.request.contextPath}/resources/user/js/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/user/css/flexisel.css" rel="stylesheet" type="text/css" media="all">
<!-- End Flexisel -->

<link href="${pageContext.request.contextPath}/resources/user/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/resources/user/js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/resources/user/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Hind:400,500,300,600,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
<!-- //end-smoth-scrolling -->
<script src="${pageContext.request.contextPath}/resources/user/js/simpleCart.min.js"> </script>
<script src="${pageContext.request.contextPath}/resources/user/js/bootstrap.min.js"></script>

<!-- Start New Code here -->
<link href="${pageContext.request.contextPath}/resources/user/css/component.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${pageContext.request.contextPath}/resources/user/css/product.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${pageContext.request.contextPath}/resources/user/css/pagination.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${pageContext.request.contextPath}/resources/user/css/sweetalert.css" rel="stylesheet" type="text/css" media="all"/>
<script src="${pageContext.request.contextPath}/resources/user/js/sweetalert-dev.js"> </script>

</head>
<body>

<%@include file="user/include/header-top.jsp"%>
<c:choose>
    <c:when test="${productPage.equals('all')}">
      	<%@include file="user/include/banner.jsp"%>       
    </c:when>
</c:choose>
<%@include file="user/include/header-nav.jsp"%>


<div class="product" ng-app="ProductApp" ng-controller="ProductController" ng-cloak>
	<div class="container">
		<%@include file="user/include/search.jsp"%>
		<div class="product-main">

			<div class=" product-menu-bar">
			    <div class="col-md-3 prdt-right">
					<div class="w_sidebar">
						<section class="sky-form">
							<h4>Categories</h4>
								<div class="row1 row2 scroll-pane">
									<div class="col col-4">
										<label class="radio" ng-click="getAllProductFilter('category','')"><input type="radio" name="radio" checked=""><i></i>All Category</label>
										<label class="radio" ng-repeat="Category in Categorys" ng-click="getAllProductFilter('category',Category.category_name)"><input type="radio" name="radio"><i></i>{{Category.category_name}}</label>
									</div>
								</div>						
						</section>
						
						<section class="sky-form">
							<h4>Brands</h4>
								<div class="row1 row2 scroll-pane">
									<div class="col col-4">
										<label class="radio" ng-click="getAllProductFilter('brand','')"><input type="radio" name="radio"><i></i>All Brand</label>
										<label class="radio" ng-repeat="Brand in Brands" ng-click="getAllProductFilter('brand',Brand.brand_name)"><input type="radio" name="radio"><i></i>{{Brand.brand_name}}</label>
									</div>
								</div>						
						</section>	
						
						<section class="sky-form">
							<h4>Models</h4>
								<div class="row1 row2 scroll-pane">
									<div class="col col-4">
										<label class="radio" ng-click="getAllProductFilter('model','')"><input type="radio" name="radio"><i></i>All Model</label>
										<label class="radio" ng-repeat="Model in Models" ng-click="getAllProductFilter('model',Model.model_name)"><input type="radio" name="radio"><i></i>{{Model.model_name}}</label>
									</div>
								</div>						
						</section>	
						
						<section class="sky-form">
							<h4>Colors</h4>
								<ul class="w_nav2">
									<li ng-repeat="Color in Colors"><a class="color" href="#" ng-click="getAllProductFilter('color',Color.color_code)" ng-style="set_color(Color)"> </a></li>
								</ul>
						</section>																						
					</div>
				</div>
			</div>	
			  
			<div class="col-md-9 product-block">
				<!-- Start New code here -->
				<div class="products-page####">
			
					<div class="new-product####"> 
			       		<div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
							<div class="cbp-vm-options">
								<a href="#" class="cbp-vm-icon cbp-vm-grid cbp-vm-selected" data-view="cbp-vm-view-grid" title="grid">Grid View</a>
								<a href="#" class="cbp-vm-icon cbp-vm-list" data-view="cbp-vm-view-list" title="list">List View</a>
							</div>
							<div class="clearfix"></div>
							<ul>
								<li ng-repeat="Product in Products">
									<div class="simpleCart_shelfItem">
										<a class="cbp-vm-image" href="/detail?p={{Product.product_id}}&c={{Product.color.color_id}}&s={{Product.serial}}">
											<div class="view view-first">
												<div class="inner_content clearfix">
													<div class="product_image">
														
														<img ng-src="http://localhost:9999/{{Product.images[0].image_url}}" class="img-responsive" alt=""/>
														<div class="mask">
															<div class="info">View Detail</div>
														</div>
														<div class="product_container">
															<div class="cart-left titleBlock">
																<p class="title">{{Product.product_name | strLimit : 70}}</p>
															</div>
															<div class="pricey"><span class="item_price">{{Product.sell_price | currency}}</span></div>
															<div class="pricey "><p class="title" style="color:red;">{{Product.product_id.substring(1, 2) == "O" ? "USED":"NEW"}}</p></div>
															<div class="clearfix"></div>
														</div>		
													</div>
												</div>
											</div>
										</a>
										<div class="cbp-vm-details desBlock">
											{{Product.description | strLimit : 100}}
										</div>
										<a class="cbp-vm-icon cbp-vm-add item_add" href="#" ng-click = "addToCart($index)">Add to cart</a>
										<a class="cbp-vm-icon cbp-vm-add item_add" href="#" ng-click = "addToWishlist($index)">Add to Wishlist</a>
									</div>
								</li>						
							</ul>
						</div>
						<script src="${pageContext.request.contextPath}/resources/user/js/cbpViewModeSwitch.js" type="text/javascript"></script>
		                <script src="${pageContext.request.contextPath}/resources/user/js/classie.js" type="text/javascript"></script>
					</div>
				</div>
			</div>
			<div ng-hide = "Pagination.length == 0">
			   <nav role="navigation">
					<ul class="cd-pagination no-space">
						<li class="button"><a href="#" ng-click="getProductsByPagePrev()">Prev</a></li>
						<li  ng-repeat = "page in Pagination"><a href="#" ng-class="($index == bntClickedIndex) ? 'current' : ''" ng-click="getProductsByPage($index)">{{page}}</a></li>
						<li class="button"><a href="#" ng-click="getProductsByPageNext()">Next</a></li>
					</ul>
				</nav> <!-- cd-pagination-wrapper -->
			</div> 	  
		</div>
	</div>
</div>

<%
   /* String pages = request.getParameter("productPage"); */
  /*  out.println("Page Geted is: " + pages); */
%>
<%-- <c:set var="pages" value="${productPage}"/> --%>

<c:choose>
    <c:when test="${productPage.equals('all')}">
        <script src="${pageContext.request.contextPath}/resources/user/js/allProducts.js"></script>
    </c:when>
    <c:when test="${productPage.equals('camera-new')}">
        <script src="${pageContext.request.contextPath}/resources/user/js/newCameraProducts.js"></script>
    </c:when>
    <c:when test="${productPage.equals('camera-used')}">
        <script src="${pageContext.request.contextPath}/resources/user/js/oldCameraProducts.js"></script>
    </c:when>
    <c:when test="${productPage.equals('accessory-new')}">
        <script src="${pageContext.request.contextPath}/resources/user/js/newAccessoryProducts.js"></script>
    </c:when>
    <c:when test="${productPage.equals('accessory-used')}">
        <script src="${pageContext.request.contextPath}/resources/user/js/oldAccessoryProducts.js"></script>
    </c:when>
    <c:otherwise>
        
    </c:otherwise>
</c:choose>

<%-- <%if(pages.equalsIgnoreCase("all")) {%>
	<script src="${pageContext.request.contextPath}/resources/user/js/allProducts.js"></script>
<%}else if(pages.equalsIgnoreCase("camera-new")){%>
	<script src="${pageContext.request.contextPath}/resources/user/js/newCameraProducts.js"></script>
<%}else if(pages.equalsIgnoreCase("camera-used")){%>
	<script src="${pageContext.request.contextPath}/resources/user/js/oldCameraProducts.js"></script>
<%}else if(pages.equalsIgnoreCase("accessory-new")){%>
	<script src="${pageContext.request.contextPath}/resources/user/js/newAccessoryProducts.js"></script>
<%}else if(pages.equalsIgnoreCase("accessory-used")){%>
	<script src="${pageContext.request.contextPath}/resources/user/js/oldAccessoryProducts.js"></script>
<%}else{%> 
	
<%}%> --%>


<%@include file="user/include/footer.jsp"%>


</body>
</html> 
