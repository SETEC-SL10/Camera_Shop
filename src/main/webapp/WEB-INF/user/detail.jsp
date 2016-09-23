<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	window.productID="${productID}";
 	window.colorID="${colorID}";
	window.serial="${serial}";
	/* alert("ProductID: "+productID+"\nColorID: "+colorID+"\nSerial: "+serial); */
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Home</title>
<script src="${pageContext.request.contextPath}/resources/user/angular/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/angular/App.js"></script>

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

<!--flex slider-->
<script defer src="${pageContext.request.contextPath}/resources/user/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>
<!--flex slider-->
<script src="${pageContext.request.contextPath}/resources/user/js/imagezoom.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/simpleCart.min.js"> </script>
<script src="${pageContext.request.contextPath}/resources/user/js/bootstrap.min.js"></script>

<!-- End of old code  --> <!-- Will Delete Some of code later -->

<!-- Start New code  -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/etalage.css">
<script src="${pageContext.request.contextPath}/resources/user/js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 300,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>
<!-- the jScrollPane script -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script> 

<!-- Related-->
<!-- Flexisel -->
<script src="${pageContext.request.contextPath}/resources/user/js/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/user/css/flexisel.css" rel="stylesheet" type="text/css" media="all">
<!-- End Flexisel -->

<link href="${pageContext.request.contextPath}/resources/user/css/detail.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>  

<%@include file="include/header.jsp"%>


<div class="content" ng-app="ProductApp" ng-controller="ProductController" ng-cloak>
		<div class="container">
		<div class="single">
		<div class="col-md-12">
			<div class="single_grid">
				<div class="grid images_3_of_2">
						<ul id="etalage">
							<li>
								<a href="optionallink.html">
									<img class="etalage_thumb_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/sin1.jpg" alt="" >
									<img class="etalage_source_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/sin-1.jpg" alt="" >
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/p2.jpg" alt="" >
								<img class="etalage_source_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/p2.jpg" alt="" >
							</li>
							<li>
								<img class="etalage_thumb_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/p3.jpg" alt=""  >
								<img class="etalage_source_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/p3.jpg" alt="" >
							</li>
						    <li>
								<img class="etalage_thumb_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/p4.jpg"  alt="" >
								<img class="etalage_source_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/p4.jpg" alt="" >
							</li>
						</ul>
						 <div class="clearfix"> </div>		
				  </div> 
				  <!---->
				  <div class="span1_of_1_des">
				  <div class="desc1">
					<h3>Canon EOS 6D </h3>
					<p>
						Excellent image quality
						Great low light/high ISO capabilities
						Full-frame shooting at an "affordable" price
						Built-in WiFi and GPS
						Good performance overall Sophisticated feature set for the price CONS
					</p>
					
					<div class="col-md-5">						
						<section class="sky-form">
							<h4>Filter By Color</h4>
								<ul class="w_nav2">
									<li ng-repeat="Color in Colors"><a class="color" href="#" ng-click="getAllProductFilter('color',Color.color_code)" ng-style="set_color(Color)"> </a></li>																	
								</ul>
						</section>																						
					</div>
					<div class="col-md-7">
						<div class="col-xs-4">
							<h5>Price</h5>
							<h4>$100</h4>
						</div>
						<div class="col-xs-4">
							<h5>Type</h5>
							<h4>New</h4>
						</div>
						<div class="col-xs-4">
							<h5>Status</h5>
							<h4>Available</h4>
						</div>
					</div>
					<div class="col-md-12 addCartWishlist">
						<a href="#">Add To Cart</a>
						<a href="#">Add To Wishlist</a>							
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
          	   
          	   <%@include file="include/related.jsp"%>
		<div class="sap_tabs">	
		     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				  <ul class="resp-tabs-list">
				  	  <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>Description</span></li>
					  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Specifications</span></li>
					  <div class="clearfix"></div>
				  </ul>				  	 
					<div class="resp-tabs-container">
					    <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Product Description</h2>
					    <div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
							<div class="facts col-md-12 description">
								<h4>Header Title</h4>
								<p>This is detail for header</p>   
								<h4>Header Title</h4>
								<p>This is detail for header</p>   
								<h4>Header Title</h4>
								<p>This is detail for header</p>   
								<h4>Header Title</h4>
								<p>This is detail for header</p>   
								    
					        </div>
					    </div>					      
					      <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="facts col-xs-12 specification">									
								<div class="col-xs-2 specName">
									<h4>Sensor Resolution</h4>
									<h4>Sensor Resolution</h4>									
								</div>
								<div class="col-xs-10 specDetail">
									<p>42.4 Megapixels</p>
									<p>42.4 Megapixels</p>									
								</div>
					        </div>	
						</div>														      
			      </div>
			 </div>
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

	</div>
	</div>
	<!---->
	
   <div class="clearfix"> </div>
	</div>
	</div>
	</div>



<script src="${pageContext.request.contextPath}/resources/user/js/allProducts.js"></script>

<%@include file="include/footer.jsp"%>

</body>
</html>