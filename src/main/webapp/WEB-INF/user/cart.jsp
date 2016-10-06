<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<%@include file="link/user-link.jsp"%>
</head>
<body ng-app="cartApp" ng-controller="cartController">

<%@include file="include/header.jsp"%>

	<div class="ckeckout">
		<div class="container">
			<div class="ckeckout-top">
				<div class=" cart-items heading">
			 		<h1>My Cart ({{Carts.length}})</h1>
					<div class="in-check" >
						<ul class="unit">
							<li style="width:100px;"><span>Item</span></li>
							<li style="width:400px;"><span>Product Name</span></li>	
							<li style="width:100px;"><span>Color</span></li>	
							<li style="width:100px;"><span>Unit Price</span></li>
							<li style="width:100px;"><span>Type</span></li>
							<li style="width:150px;"><span >Quantity</span></li>
							<li style="width:100px;"><span >Total</span></li>
							<div class="clearfix"> </div>
						</ul>
						<ul class="cart-header simpleCart_shelfItem" ng-repeat = "Cart in Carts" ng-init = "calculateGrandTotal(Cart.product.sell_price * Cart.product_qty)">
							<div class="close1" ng-click = "deleteCart($index)"> </div>
							<li class="ring-in" style="width:100px;">
								<a class="cbp-vm-image" href="/detail?p={{Cart.product.product_id}}&c={{Cart.product.color.color_id}}&s={{Cart.product.serial}}">
									<img ng-src="http://localhost:9999/{{Cart.product.images[0].image_url}}" class="img-responsive" style="width:80px;hieght:80px" alt="">
								</a>
							</li>
							<li style="width:400px;">
								<a href="/detail" ><span>{{Cart.product.product_name}}</span></a>
							</li>
							<li style="width:100px;"><span ng-style = "set_color(Cart.product.color)">{{Cart.product.color.color_name}}</span></li>
							<li style="width:100px;"><span class="item_price">{{Cart.product.sell_price | currency}}</span></li>
							<li style="width:100px;"><span style="color:red;">{{Cart.product.product_id.substring(1, 2) == "O" ? "USED":"NEW"}}</span></li>
							<li style="width:150px;">
								<span ng-hide = "checkProductType(Cart.product)">
									<form>
									   <input type="button" ng-click="updateCartQty(Cart, -1)" value="-" id="decrease" / >
									   <input type="number" class = "numberQty" ng-change = "changeValueQty(Cart)" ng-model = "Cart.product_qty" size="20" />
									   <input type="button" ng-click="updateCartQty(Cart, 1)" value="+" id="increase" / >
									</form>
								</span>
								<span ng-hide = "!checkProductType(Cart.product)">{{Cart.product_qty}}</span>
							</li>
							<li style="width:100px;"><span >{{Cart.product.sell_price * Cart.product_qty | currency}}</span> </li>		
							<div class="clearfix"> </div>
						</ul>
						
						<!-- <span ng-bind="calculateGrandTotal(Cart.product.sell_price * Cart.product_qty)"></span> -->
					</div>
					<div id="TotalSumarry">
						<div class="col-md-7"></div>
						<div class="well col-md-5">
							<h1>Grand Total: <span class="alignRight">{{grandTotal | currency}}</span></h1> 
							<!-- <h4>Shipping: <span class="alignRight">sdfsdfwerewr</span></h4>	
							<h4>Grand Total: <span class="alignRight">$2434</span></h4>		 -->
						</div>
						<a href="/checkout" class="alignRight btn btn-primary" > Process Checkout</a>
					</div>
				</div>  
			</div> 
		</div>
	</div>

<%@include file="include/footer.jsp"%>
<%@include file="script/user-script.jsp"%>
<script src="${pageContext.request.contextPath}/resources/user/js/cart.js"></script>
</body>
</html>