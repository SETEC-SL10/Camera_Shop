<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	window.productID="${productID}";
 	window.colorID="${colorID}";
	window.serial="${serial}";
</script>
<title>Home</title>
<%@include file="link/user-link.jsp"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/etalage.css">
<!-- Related-->
 <link href="${pageContext.request.contextPath}/resources/user/css/component.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${pageContext.request.contextPath}/resources/user/css/product.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${pageContext.request.contextPath}/resources/user/css/detail.css" rel="stylesheet" type="text/css" media="all"/>

</head>
<body>  

<%@include file="include/header.jsp"%>

<div class="content" ng-app="front-App" ng-controller="DetailController" ng-cloak>
	<div class="container">
		<div class="single">
			<div class="col-md-12">
				<div class="single_grid">
					<div class="grid images_3_of_2">
						<ul id="etalage">
							<li ng-repeat="Image in ProductDetailsTmp.product.images" on-finish-render="ngRepeatFinished">
								<img ng-src="http://www.slcamten.com:9999/{{Image.image_url}}" class="etalage_thumb_image img-responsive"/>
								<img ng-src="http://www.slcamten.com:9999/{{Image.image_url}}" class="etalage_source_image img-responsive"/>
							</li>
						</ul>
						 <div class="clearfix"> </div>		
				  	</div> 
				  <!---->
					  <div class="span1_of_1_des">
						  <div class="desc1">
							<h3>{{ProductDetailsTmp.product.product_name}} </h3>
							<p>
								{{ProductDetailsTmp.product.description}}
							</p>
							
							<div class="col-md-5">						
								<section class="sky-form">
									<h4>All Color</h4>
										<ul class="w_nav2">
											<li ng-repeat="ProductDetail in ProductDetails"><a class="color" href="#" ng-click="ChangeColor($index)" ng-style="setBackground(ProductDetail.product.color)"> </a></li>																	
										</ul>
								</section>																						
							</div>
							<div class="col-md-7">
								<div class="col-xs-4">
									<h5>Color</h5>
									<h4 >{{ProductDetailsTmp.product.color.color_name}}</h4><!-- ng-style="setColor(ProductDetails[0].product.color)" -->
								</div>
								<div class="col-xs-4">
									<h5>Price</h5>
									<h4>{{ProductDetailsTmp.product.sell_price | currency}}</h4>
								</div>
								<div class="col-xs-4">
									<h5>Type</h5>
									<h4>{{ProductDetailsTmp.product.product_id.substring(1, 2) == "O" ? "USED":"NEW"}}</h4>
								</div>
							</div>
							<div class="col-md-12 addCartWishlist">
								<a href="#" ng-click = "addToCart()">Add To Cart</a>
								<a href="#" ng-click = "addToWishlist()">Add To Wishlist</a>							
							</div>
							<div class="col-md-12 share-desc">
								<div class="share">
									<h4>Share Product :</h4>
									<ul class="share_nav">
										<li><a href="#"><img src="${pageContext.request.contextPath}/resources/user/img/facebook.png" title="facebook"></a></li>
										<li><a href="#"><img src="${pageContext.request.contextPath}/resources/user/img/twitter.png" title="Twiiter"></a></li>
										<li><a href="#"><img src="${pageContext.request.contextPath}/resources/user/img/rss.png" title="Rss"></a></li>
										<li><a href="#"><img src="${pageContext.request.contextPath}/resources/user/img/gpluse.png" title="Google+"></a></li>
						    		</ul>
								</div>
								<div class="clearfix"></div>
							</div>
							
					   	 </div>
				   	</div>
          	    	<div class="clearfix"></div>
          	   </div>
          	   
			<div class="sap_tabs">	
			     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					  	<ul class="resp-tabs-list">
						  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>description</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Specifications</span></li>
							  <div class="clearfix"></div>
					  	</ul>				  	 
						<div class="resp-tabs-container">
						    <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Product Description</h2>
						    <div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
								<div class="facts col-md-12 description">
									<p>{{ProductDetailsTmp.product.detail}}</p>   									   
						        </div>
						    </div>					      
						   	<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
								<div class="facts col-xs-12 specification">
									<div ng-repeat="Specs in ProductDetailsTmp.specifications">
										<h4>{{Specs.specification_name}}</h4>
										<p>{{Specs.description}}</p>
									</div>							
						        </div>	
							</div>														      
				      	</div>
				 	</div>
				   	
				</div>
				
				<!-- Start Related -->	
				<div class="clearfix"></div>
				 <div class="product relatedProduct"> 				 
				 <h3>Related Product</h3>
				<hr>
					<div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">				
						<div class="clearfix"></div>
						 <ul>					
							<li ng-repeat="Product in ProductRelateds">
								<div class="simpleCart_shelfItem">
									<a class="cbp-vm-image" href="/detail?p={{Product.product_id}}&c={{Product.color.color_id}}&s={{Product.serial}}">
										<div class="view view-first">
											<div class="inner_content clearfix">
												<div class="product_image">												
													<img ng-src="http://www.slcamten.com:9999/{{Product.images[0].image_url}}" class="img-responsive" alt=""/>
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
									<a class="cbp-vm-icon cbp-vm-add item_add" href="#" ng-click = "addProductRelatedToCart($index)">Add to cart</a>
									<a class="cbp-vm-icon cbp-vm-add item_add" href="#" ng-click = "addProductRelatedToWishlist($index)">Add to Wishlist</a>
								</div>
							</li>																
						</ul> 
					 </div>
				 </div> 
				<!-- End Related -->	
							
			</div>
	   		<div class="clearfix"> </div>
		</div>
	</div>	
</div>
<%@include file="include/footer.jsp"%>
<%@include file="script/user-script.jsp"%>


<script src="${pageContext.request.contextPath}/resources/user/js/detail.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/jquery.etalage.min.js"></script>

<script>
		var myjQuery;
		jQuery(document).ready(function($){
			myjQuery = $;
			/* myjQuery('#etalage').etalage({
				thumb_image_width: 300,
				thumb_image_height: 300,
				source_image_width: 900,
				source_image_height: 1200,
				show_hint: true,
				click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				}); */
			
			});
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/jquery.jscrollpane.min.js"></script>
<script type="text/javascript" id="sourcecode">
/* 	$(function()
	{
		$('.scroll-pane').jScrollPane();
	}); */
</script> 

<script src="${pageContext.request.contextPath}/resources/user/js/easyResponsiveTabs.js" type="text/javascript"></script>
  <script type="text/javascript">
   $(document).ready(function () {
       $('#horizontalTab').easyResponsiveTabs({
           type: 'default', //Types: default, vertical, accordion           
           width: 'auto', //auto or any width like 600px
           fit: true   // 100% fit in a container
       });
   });
  </script>
</body>
</html>