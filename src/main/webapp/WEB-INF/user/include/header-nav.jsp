<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <style>
    	.navbar-collapse.collapse
    	{
    		padding: 0px 46px;
    	}
    </style>
    
<div class="inner-banner">
		<div class="container#">
			<div class="banner-top inner-head">
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<%-- <div class="navbar-brand logo">
							<a href="/"><img src="${pageContext.request.contextPath}/resources/user/img/logo.png" alt=""></a>
						</div> --%>
					</div>
	    <!--/.navbar-header-->
	    
	     
		
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	  
	        <ul class="nav navbar-nav" style="float:left">
			<li><a href="/">Home</a></li>
		        
		       
		        <li class="dropdown">
		        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-2">
			            <div class="row">
				            <div class="col-sm-6">
					            <ul class="multi-column-dropdown">
									<h6>CAMERAS</h6>
						            <li><a href="/product/camera-new">New Camera</a></li>
						            <li><a href="/product/camera-used">Used Camera</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-6">
					             <ul class="multi-column-dropdown">
									<h6>ACCESSORIES</h6>
						            <li><a href="/product/accessory-new">New Accessory</a></li>
						            <li><a href="/product/accessory-used">Used Accessory</a></li>
					            </ul>
				            </div>
							<!-- <div class="clearfix"></div> -->
			            </div>
		            </ul>
		        </li>
		        
		        <li class="dropdown">
		        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">WARRANTY & SUPPORT <b class="caret"></b></a>
		            <ul class="dropdown-menu warrantyDrop">
			            <li><a href="/warranty">WARRANTY REGISTRATION</a></li>
						<li><a href="/warranty-canon">CANON AUTHORISED SERVICE CENTRE</a></li>
		            </ul>
		        </li>
		       
				<li><a href="/promotion">PROMOTION</a></li>
				<li><a href="/contact">CONTACT US</a></li>
				<li><a href="/about">ABOUT US</a></li>
	        </ul>
	    </div>
	    <!--/.navbar-collapse-->
			</nav>
	<!--/.navbar-->
		</div>
	</div>
</div>
   