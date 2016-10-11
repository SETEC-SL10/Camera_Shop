<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Home</title>
	<%@include file="link/user-link.jsp"%>
</head>
<body ng-app="front-App" ng-controller="wishlistController">

<%@include file="include/header.jsp"%>

<div class="ckeckout">
		<div class="container">
			<div class="ckeckout-top">
			<div class=" cart-items heading">
			 <h1>My Wishlist ({{countWishlist}})</h1>
			<div class="in-check" >
				<ul class="unit">
					<li style="width:100px;"><span>Item</span></li>
					<li style="width:450px;"><span>Product Name</span></li>	
					<li style="width:100px;"><span>Color</span></li>	
					<li style="width:100px;"><span>Unit Price</span></li>
					<li style="width:100px;"><span>Type</span></li>
					<li ><span>Add To Cart</span></li>
					<div class="clearfix"> </div>
				</ul>
				<ul class="cart-header simpleCart_shelfItem" ng-repeat = "wishlist in wishlists">
					<div class="close1" ng-click = "deleteWishlist($index)"> </div>
					<li class="ring-in" style="width:100px;">
						<a class="cbp-vm-image" href="/detail?p={{wishlist.product.product_id}}&c={{wishlist.product.color.color_id}}&s={{wishlist.product.serial}}">
							<img ng-src="http://www.slcamten.com:9999/{{wishlist.product.images[0].image_url}}" class="img-responsive" style="width:80px;hieght:80px" alt="">
						</a>
					</li>
					<li style="width:450px;">
						<a class="cbp-vm-image" href="/detail?p={{wishlist.product.product_id}}&c={{wishlist.product.color.color_id}}&s={{wishlist.product.serial}}"><span>{{wishlist.product.product_name}}</span></a>
					</li>
					<li style="width:100px;"><span ng-style = "set_color(wishlist.product.color)">{{wishlist.product.color.color_name}}</span></li>
					<li style="width:100px;"><span class="item_price">{{wishlist.product.sell_price | currency}}</span></li>
					<li style="width:100px;"><span style="color:red;">{{wishlist.product.product_id.substring(1, 2) == "O" ? "USED":"NEW"}}</span></li>
					<li> <a href="#" class="add-cart cart-check item_add" ng-click = "addToCart(wishlist.product)">Add to cart</a></li>				
					<div class="clearfix"> </div>
				</ul>
			</div>
			</div>  
		 </div>
		<div class="main-pagination">
			<nav role="navigation" >
				<ul class="cd-pagination no-space">
					<li class="button"><a href="#" ng-click="getWishlistByPagePrev()">Prev</a></li>
					<li  ng-repeat = "page in Pagination"><a href="#" ng-class="($index == bntClickedIndex) ? 'current' : ''" ng-click="getWishlistByPage($index)">{{page}}</a></li>
					<li class="button"><a href="#" ng-click="getWishlistByPageNext()">Next</a></li>
				</ul>
			</nav> <!-- cd-pagination-wrapper -->
		</div>
		</div>
	</div>

<%@include file="include/footer.jsp"%>
	<%@include file="script/user-script.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/user/js/wishlist.js"></script>
</body>
</html>