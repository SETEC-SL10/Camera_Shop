<%@ page pageEncoding="utf-8"%>

<style>
.site-logo{
	padding:10px;
	background-color:white;	
}
.site-logo img{
	height:125px;
	width:125px;
}
.site-name{
	font-weight: bold;
    font-size: 22px;
}
.site-name strong{
	color:#ff6666;
}
.site-slog{
	font-size: 15px;
}

</style>

<div class="header">
	<div class="header-top-strip">
		<div class="container">
			<div class="header-top-left">
				<ul>
					<!-- <li><a href="/login" id="login"><span class="glyphicon glyphicon-user"> </span>Login</a></li> -->
					<li><a href="/login" id="login"><span class="glyphicon glyphicon-user"> </span>{{customer.customer_last_name}}</a></li>
					<li><a href="/register"><span class="glyphicon glyphicon-lock"> </span>Register</a></li>	

				</ul>
			</div>
			
			
			<div class="header-right-align">																				
				<a href="/cart"> <span><i class="fa fa-shopping-cart" aria-hidden="true"></i></span> Cart</a>
				<a href="/wishlist"> <span><i class="fa fa-heart" aria-hidden="true"></i></span> Wishlist</a>
				<a href="/account"> <span><i class="fa fa-user" aria-hidden="true"></i></span> Account</a>					
			</div>	
						
		</div>
		
	</div>
</div>  

<div class="container site-logo">
	<a href="/">
		<img src="${pageContext.request.contextPath}/resources/user/img/logo-top.png" style="width: 128px;float: left;"/>               
	    <p style="padding-top: 40px;" class="site-name">SL Cam Ten<strong> Shop</strong>	
	    </p>
	    <span class="site-slog">The Best Shop Camera</span>
	</a>
</div>  