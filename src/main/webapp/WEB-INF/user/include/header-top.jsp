<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/user/css/font-awesome.min.css" rel="stylesheet" type="text/css"> 

<div class="header">
	<div class="header-top-strip">
		<div class="container">
			<div class="header-top-left">
				<ul>
					<!-- <li><a href="/login" id="login"><span class="glyphicon glyphicon-user"> </span>Login</a></li> -->
					<li><a href="/login" id="login"><span class="glyphicon glyphicon-user"> </span>{{user}}</a></li>
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