<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div class="header">
	<div class="container">
		<div class="header-main">
			<div class="top-nav">
				<div class="content white">
	              <nav class="navbar navbar-default" role="navigation">
					    <div class="navbar-header">
					        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						        <span class="sr-only">Toggle navigation</span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
					        </button>
					        <div class="navbar-brand logo">
								<a href="/"><img src="${pageContext.request.contextPath}/resources/user/img/logo1.png" alt=""></a>
							</div>
					    </div>
					    <!--/.navbar-header-->
					 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					        <ul class="nav navbar-nav">
					        	   <li><a href="/product">Product</a></li>
					        	   <li><a href="/contact">Contact</a></li>
					        	   
						            <!--  <li class="dropdown">
						        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Product <b class="caret"></b></a>
						            <ul class="dropdown-menu multi-column columns-3">
							            <div class="row">
								            <div class="col-sm-12">
									            <ul class="multi-column-dropdown">
										            <li><a href="/product">Accessories New</a></li>
										            <li><a href="/product">Accessories Old</a></li>
										            <li><a href="/product">Cameras New</a></li>
										            <li><a href="/product">Cameras Old</a></li>										    
									            </ul>
								            </div>
								            <div class="col-sm-4">
									            <ul class="multi-column-dropdown">
										            <li><a href="product-m.html">Shirts</a></li>
										            <li><a href="product-m.html">Shoes,Boots</a></li>
										            <li><a href="product-m.html">Shorts</a></li>
										             <li><a href="product-m.html">Watches</a></li>
										            <li><a href="product-m.html">Sunglasses</a></li>
										             <li><a href="product-m.html">Bands</a></li>
										            <li><a href="product-m.html">Swimwear</a></li>
									            </ul>
								            </div>
								            <div class="col-sm-4">
									            <ul class="multi-column-dropdown">
										            <li><a href="product-m.html">Jewellery</a></li>
										            <li><a href="product-m.html">Jack & Jones</a></li>
										            <li><a href="product-m.html">Ray-Ban</a></li>
										             <li><a href="product-m.html">Lipsticks</a></li>
										            <li><a href="product-m.html">Longer wear</a></li>
										            <li><a href="product-m.html">sarees</a></li>
										            <li><a href="product-m.html">Nike</a></li>
									            </ul>
								            </div>
							            </div>
						            </ul>
						        </li> -->
						           
						         
						        <!-- <li><a href="/contact">Contact</a></li> -->
					        </ul>
					    </div>
					    <!--/.navbar-collapse-->
					</nav>
					<!--/.navbar-->
				</div>
			</div>
			<div class="header-right">
					<!-- <select class="form-control" ng-model="catID">			       
                        <option ng-repeat="x in category" value="{{x.CAT_ID}}">{{x.CAT_NAME}}</option>
                   	</select> -->
				<div class="search">
					
				      
					<div class="search-text">
						
					    <input class="serch" type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"/>
					</div>
					<div class="cart box_1">
						<a href="/checkout">
						<h3>
							<img src="${pageContext.request.contextPath}/resources/user/img/cart.png" alt=""/>
							<div class="total">
							<span class="simpleCart_total"></span></div>
							</h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
					</div>    
					<div class="head-signin">
						<h5><a href="/login"><i class="hd-dign"></i>Sign in</a></h5>
					</div>              
                     <div class="clearfix"> </div>					
				</div>
			</div>
		 <div class="clearfix"> </div>
		</div>
	</div>
</div>