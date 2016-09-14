<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Home</title>

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
<link href="${pageContext.request.contextPath}/resources/user/css/detail.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/etalage.css">
<script src="${pageContext.request.contextPath}/resources/user/js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
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




</head>
<body>

<%@include file="include/header.jsp"%>


<div class="content">
		<div class="container">
		<div class="single">
		<div class="col-md-9">
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
								<img class="etalage_thumb_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/sin2.jpg" alt="" >
								<img class="etalage_source_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/sin-2.jpg" alt="" >
							</li>
							<li>
								<img class="etalage_thumb_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/sin3.jpg" alt=""  >
								<img class="etalage_source_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/sin-3.jpg" alt="" >
							</li>
						    <li>
								<img class="etalage_thumb_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/sin4.jpg"  alt="" >
								<img class="etalage_source_image img-responsive" src="${pageContext.request.contextPath}/resources/user/img/sin-4.jpg" alt="" >
							</li>
						</ul>
						 <div class="clearfix"> </div>		
				  </div> 
				  <!---->
				  <div class="span1_of_1_des">
				  <div class="desc1">
					<h3>Lorem Ipsum is simply dummy text </h3>
					<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
					<h5>Rs. 399 <a href="#">click for offer</a></h5>
					<div class="available">
						<h4>Available Options :</h4>
						<ul>
							<li>Size:
								<select>
									<option>L</option>
									<option>XL</option>
									<option>S</option>
									<option>M</option>
								</select>
							</li>
							<li>Quality:
								<select>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</li>
						</ul>
						<div class="form-in">
							<a href="#">Add To Cart</a>
						</div>
						<span class="span_right"><a href="#">login to save in wishlist </a></span>
						<div class="clearfix"></div>
					</div>
					<div class="share-desc">
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
			   
			    <!----- tabs-box ---->
		<div class="sap_tabs">	
				     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>Product Description</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Additional Information</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Reviews</span></li>
							  <div class="clearfix"></div>
						  </ul>				  	 
							<div class="resp-tabs-container">
							    <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Product Description</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
									<div class="facts">
									  <p > There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
										<ul>
											<li>Research</li>
											<li>Design and Development</li>
											<li>Porting and Optimization</li>
											<li>System integration</li>
											<li>Verification, Validation and Testing</li>
											<li>Maintenance and Support</li>
										</ul>         
							        </div>
							    	</div>
							      <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>Additional Information</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="facts">									
										<p > Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections </p>
										<ul >
											<li>Multimedia Systems</li>
											<li>Digital media adapters</li>
											<li>Set top boxes for HDTV and IPTV Player applications on various Operating Systems and Hardware Platforms</li>
										</ul>
							        </div>	
								</div>									
							      <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>Reviews</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									 <div class="facts">
									  <p > There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
										<ul>
											<li>Research</li>
											<li>Design and Development</li>
											<li>Porting and Optimization</li>
											<li>System integration</li>
											<li>Verification, Validation and Testing</li>
											<li>Maintenance and Support</li>
										</ul>     
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
	<div class="col-md-3">
	  <div class="w_sidebar">
		<section  class="sky-form">
					<h4>catogories</h4>
						<div class="row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>kurtas</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>kutis</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>churidar kurta</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>salwar</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>printed sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>shree</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>	
							</div>
						</div>
		</section>
		
		<section class="sky-form">
			<h4>colour</h4>
			<ul class="w_nav2">
				<li><a class="color1" href="#"></a></li>
				<li><a class="color2" href="#"></a></li>
				<li><a class="color3" href="#"></a></li>
				<li><a class="color4" href="#"></a></li>
				<li><a class="color5" href="#"></a></li>
				<li><a class="color6" href="#"></a></li>
				<li><a class="color7" href="#"></a></li>
				<li><a class="color8" href="#"></a></li>
				<li><a class="color9" href="#"></a></li>
				<li><a class="color10" href="#"></a></li>
				<li><a class="color12" href="#"></a></li>
				<li><a class="color13" href="#"></a></li>
				<li><a class="color14" href="#"></a></li>
				<li><a class="color15" href="#"></a></li>
				<li><a class="color5" href="#"></a></li>
				<li><a class="color6" href="#"></a></li>
				<li><a class="color7" href="#"></a></li>
				<li><a class="color8" href="#"></a></li>
				<li><a class="color9" href="#"></a></li>
				<li><a class="color10" href="#"></a></li>
			</ul>
		</section>
		<section class="sky-form">
						<h4>discount</h4>
						<div class="row1 scroll-pane">
							<div class="col col-4">
								<label class="radio"><input type="radio" name="radio" checked=""><i></i>60 % and above</label>
								<label class="radio"><input type="radio" name="radio"><i></i>50 % and above</label>
								<label class="radio"><input type="radio" name="radio"><i></i>40 % and above</label>
							</div>
							<div class="col col-4">
								<label class="radio"><input type="radio" name="radio"><i></i>30 % and above</label>
								<label class="radio"><input type="radio" name="radio"><i></i>20 % and above</label>
								<label class="radio"><input type="radio" name="radio"><i></i>10 % and above</label>
							</div>
						</div>						
		</section>
	</div>
   </div>
   <div class="clearfix"> </div>
	</div>
	</div>
	</div>










<%-- <div class="single">
   <div class="container">
   	 <div class="single-main">
   	 	<div class="single-top-main">
	   		<div class="col-md-5 single-top">	
			   <div class="flexslider">
				  <ul class="slides">
				    <li data-thumb="${pageContext.request.contextPath}/resources/user/img/si1.jpg">
				        <div class="thumb-image"> <img src="${pageContext.request.contextPath}/resources/user/img/s1.jpg" data-imagezoom="true" class="img-responsive"> </div>
				    </li>
				    <li data-thumb="${pageContext.request.contextPath}/resources/user/img/si2.jpg">
				         <div class="thumb-image"> <img src="${pageContext.request.contextPath}/resources/user/img/s2.jpg" data-imagezoom="true" class="img-responsive"> </div>
				    </li>
				    <li data-thumb="${pageContext.request.contextPath}/resources/user/img/si3.jpg">
				       <div class="thumb-image"> <img src="${pageContext.request.contextPath}/resources/user/img/s3.jpg" data-imagezoom="true" class="img-responsive"> </div>
				    </li> 
				  </ul>
			</div>
			</div>
			<div class="col-md-7 single-top-left simpleCart_shelfItem">
				<h2>Undercover</h2>
				<h1>Lorem ipsum dolor</h1>
				<h3>Excepteur sint occaecat cupidatat</h3>
				<h6 class="item_price">$600.00</h6>			
				<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>
				<h4>Size Charts</h4>
				<ul class="bann-btns">
					<li><select class="bann-size">
						<option value="select your location">Size</option>
						<option value="saab">Small</option>
						<option value="fiat">Medium</option>
						<option value="audi">Large</option>
					</select>
					</li>
					<li><a href="#" class="item_add">Add To Cart</a></li>					
	            </ul>
			</div>
		   <div class="clearfix"> </div>
	   </div>
	   <div class="singlepage-product">
		   	 <div class="col-md-3 home-grid">
					<div class="home-product-main">
					   <div class="home-product-top">
					      <a href="#"><img src="${pageContext.request.contextPath}/resources/user/img/h14.jpg" alt="" class="img-responsive zoom-img"></a>
					   </div>
						<div class="home-product-bottom">
								<h3><a href="#">Smart Shopping</a></h3>
								<p>Explore Now</p>						
						</div>
						<div class="srch">
							<span>$200</span>
						</div>
					</div>
				 </div>
			      <div class="col-md-3 home-grid">
					<div class="home-product-main">
					   <div class="home-product-top">
					      <a href="#"><img src="${pageContext.request.contextPath}/resources/user/img/h15.jpg" alt="" class="img-responsive zoom-img"></a>
					   </div>
						<div class="home-product-bottom">
								<h3><a href="#">Smart Shopping</a></h3>
								<p>Explore Now</p>						
						</div>
						<div class="srch">
							<span>$200</span>
						</div>
					</div>
				 </div>
				 <div class="col-md-3 home-grid">
					<div class="home-product-main">
					   <div class="home-product-top">
					      <a href="#"><img src="${pageContext.request.contextPath}/resources/user/img/h16.jpg" alt="" class="img-responsive zoom-img"></a>
					   </div>
						<div class="home-product-bottom">
								<h3><a href="#">Smart Shopping</a></h3>
								<p>Explore Now</p>						
						</div>
						<div class="srch">
							<span>$200</span>
						</div>
					</div>
				 </div>
			      <div class="col-md-3 home-grid">
					<div class="home-product-main">
					   <div class="home-product-top">
					      <a href="#"><img src="${pageContext.request.contextPath}/resources/user/img/h17.jpg" alt="" class="img-responsive zoom-img"></a>
					   </div>
						<div class="home-product-bottom">
								<h3><a href="#">Smart Shopping</a></h3>
								<p>Explore Now</p>						
						</div>
						<div class="srch">
							<span>$200</span>
						</div>
					</div>
				 </div>
		  <div class="clearfix"> </div>
	   </div>
   	 </div>
   </div>
</div> --%>

<%@include file="include/footer.jsp"%>

</body>
</html>