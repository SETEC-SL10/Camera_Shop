
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@include file="user/link/user-link.jsp"%>
<link href="${pageContext.request.contextPath}/resources/user/css/flexisel.css" rel="stylesheet" type="text/css" media="all">
<!-- Start New Code here -->
<link href="${pageContext.request.contextPath}/resources/user/css/component.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${pageContext.request.contextPath}/resources/user/css/product.css" rel="stylesheet" type="text/css" media="all"/>

<style>
vm-title, .cbp-vm-view-list .cbp-vm-details, .cbp-vm-view-list .cbp-vm-price, .cbp-vm-view-list .cbp-vm-add {
    display: inline-block;
    vertical-align: top;
}
.cbp-vm-view-list .cbp-vm-add{
	clear: both;
	display: block
}
.cbp-vm-view-list .cbp-vm-add {
    display: table-cell;
}
</style>

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
						<div ng-hide = "Pagination.length == 0" class="main-pagination">
						   <div role="navigation">
								<ul class="cd-pagination no-space">
									<li class="button"><a href="#" ng-click="getProductsByPagePrev()">Prev</a></li>
									<li  ng-repeat = "page in Pagination"><a href="#" ng-class="($index == bntClickedIndex) ? 'current' : ''" ng-click="getProductsByPage($index)">{{page}}</a></li>
									<li class="button"><a href="#" ng-click="getProductsByPageNext()">Next</a></li>
								</ul>
							</div> 
						</div> 
					</div>
				</div>
			</div>				  
		</div>
	</div>
</div>

<%
   /* String pages = request.getParameter("productPage"); */
  /*  out.println("Page Geted is: " + pages); */
%>
<%-- <c:set var="pages" value="${productPage}"/> --%>



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
<%@include file="user/script/user-script.jsp"%>
<script src="${pageContext.request.contextPath}/resources/user/js/cbpViewModeSwitch.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/classie.js" type="text/javascript"></script>
<c:choose>
    <c:when test="${productPage.equals('all')}">
        <script src="${pageContext.request.contextPath}/resources/user/js/allProducts.js"></script>
        <!-- jssor slider scripts-->
    <!-- use jssor.slider.debug.js for debug -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jssorSlider/jssor.slider.mini.js"></script>
    <script>

        jQuery(document).ready(function ($) {
            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlaySteps: 1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
                $Idle: 2000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                                   //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideEasing: $JssorEasing$.$EaseOutQuint,          //[Optional] Specifies easing for right to left animation, default value is $JssorEasing$.$EaseOutQuad
                $SlideDuration: 800,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                $Cols: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
                $DragOrientation: 1,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $Cols is greater than 1, or parking position is not 0)

                $ArrowNavigatorOptions: {                           //[Optional] Options to specify and enable arrow navigator or not
                    $Class: $JssorArrowNavigator$,                  //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                    $Scale: false                                   //Scales bullets navigator or not while slider scale
                },

                $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 1,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                    $Rows: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 12,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 4,                                   //[Optional] Vertical space between each item in pixel, default value is 0
                    $Orientation: 1,                                //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                    $Scale: false                                   //Scales bullets navigator or not while slider scale
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth) {
                    /* jssor_slider1.$ScaleWidth(parentWidth - 30); */
                	jssor_slider1.$ScaleWidth(parentWidth);
                }
                else
                    window.setTimeout(ScaleSlider, 30);
            }
            ScaleSlider();

            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>
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

<!-- Placed at the end of the document so the pages load faster -->
    <!-- <script src="../js/jquery-1.9.1.min.js"></script>
    <script src="bootstrap.min.js"></script> -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jssorSlider/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jssorSlider/ie10-viewport-bug-workaround.js"></script>

    

</body>
</html> 
