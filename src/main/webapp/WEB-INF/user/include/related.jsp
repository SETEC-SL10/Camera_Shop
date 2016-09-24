<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div class="lady-in-on container" id="popular">
	<div class="buy-an">
		<h3>Related Product</h3><br>
	</div>
	<ul id="flexiselDemo1">			
		<li > <!-- ng-repeat="Product in ProductRelateds" -->
			<a href="/detail?p={{Product.product_id}}&c={{Product.color.color_id}}&s={{Product.serial}}">
				<img class="img-responsive women" src="${pageContext.request.contextPath}/resources/user/img/p2.jpg" alt="">
				<!-- <img ng-src="http://localhost:9999/{{Product.images[0].image_url}}" class="img-responsive" alt=""/> -->
			</a>
			<div class="hide-in">
				<p>Premium Denim Women's Hidden</p>
				<span>$179.00  |  <a href="#">Buy Now </a></span>
				<span>$179.00  |  <a href="#">Buy Now </a></span>
			</div>
		</li>
		<%-- <li > <!-- ng-repeat="Product in Products" -->
			<div class="simpleCart_shelfItem">
				<a class="cbp-vm-image" href="/detail?p=Product.product_id&c=Product.color.color_id&s=Product.serial">
					<div class="view view-first">
						<div class="inner_content clearfix">
							<div class="product_image">
								
								<img src="${pageContext.request.contextPath}/resources/user/img/p2.jpg" class="img-responsive" alt=""/>
								<!-- <img ng-src="http://localhost:9999/{{Product.images[0].image_url}}" class="img-responsive" alt=""/> -->
								<!-- <div class="mask">
									<div class="info">View Detail</div>
								</div> -->
								<div class="product_container">
									<div class="cart-left titleBlock">
										<p class="title">Product.product_name | strLimit : 70</p>
									</div>
									<div class="pricey"><span class="item_price">Product.sell_price | currency</span></div>
									<div class="pricey "><p class="title" style="color:red;">Product.product_id.substring(1, 2) == "O" ? "USED":"NEW"</p></div>
									<div class="clearfix"></div>
								</div>		
							</div>
						</div>
					</div>
				</a>
				<!-- <div class="cbp-vm-details desBlock">
					{{Product.description | strLimit : 100}}
				</div> -->
				<a class="cbp-vm-icon cbp-vm-add item_add" href="#" ng-click = "addToCart($index)">Add to cart</a>
				<a class="cbp-vm-icon cbp-vm-add item_add" href="#" ng-click = "addToWishlist($index)">Add to Wishlist</a>
			</div>
		</li>	 
		<li ng-repeat="Product in ProductRelateds"> <!-- ng-repeat="Product in ProductRelateds" -->
			<div class="simpleCart_shelfItem">
				<a class="cbp-vm-image" href="/detail?p={{Product.product_id}}&c={{Product.color.color_id}}&s={{Product.serial}}">
					<div class="view view-first">
						<div class="inner_content clearfix">
							<div class="product_image">
								
								<%-- <img src="${pageContext.request.contextPath}/resources/user/img/p2.jpg" class="img-responsive" alt=""/> 
								<img ng-src="http://localhost:9999/{{Product.images[0].image_url}}" class="img-responsive" alt=""/>
								<!-- <div class="mask">
									<div class="info">View Detail</div>
								</div> -->
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
				<!-- <div class="cbp-vm-details desBlock">
					{{Product.description | strLimit : 100}}
				</div> -->
				<a class="cbp-vm-icon cbp-vm-add item_add" href="#" ng-click = "addToCart($index)">Add to cart</a>
				<a class="cbp-vm-icon cbp-vm-add item_add" href="#" ng-click = "addToWishlist($index)">Add to Wishlist</a>
			</div>
		</li>	 --%>
				<!-- <li><a href="/detail"><img class="img-responsive women" src="${pageContext.request.contextPath}/resources/user/img/p2.jpg" alt=""></a>
				<div class="hide-in">
				<p>Premium Denim Women's Hidden</p>
				<span>$179.00  |  <a href="#">Buy Now </a></span>
				</div></li>
				<li><a href="/detail"><img class="img-responsive women" src="${pageContext.request.contextPath}/resources/user/img/p3.jpg" alt=""></a>
				<div class="hide-in">
				<p>Premium Denim Women's Hidden</p>
				<span>$179.00  |  <a href="#">Buy Now </a></span>
				</div></li>
				<li><a href="/detail"><img class="img-responsive women" src="${pageContext.request.contextPath}/resources/user/img/p4.jpg" alt=""></a>
				<div class="hide-in">
				<p>Premium Denim Women's Hidden</p>
				<span>$179.00  |  <a href="#">Buy Now </a></span>
				</div></a></li> -->
    </ul>
    <script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	</script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/jquery.flexisel.js"></script>
</div>