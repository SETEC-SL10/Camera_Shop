<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Home</title>
	<%@include file="user/link/user-link.jsp"%>
</head>
<body ng-app="LoginRegisterApp" ng-controller="LoginRegisterController" ng-cloak>

	<%@include file="user/include/header.jsp"%>
	
	 <div class="login">
		<div class="container">
			<div class="login-main">
				  <h1>Login</h1>
			  <div class="col-md-6 login-left">
				<!-- <h2>Existing User</h2> -->
				<form ng-submit="login()">
					<input type="text" placeholder="Email" required="" ng-model="customer.customer_email">
					<input type="password" placeholder="Password" required="" ng-model="customer.customer_password">
					<button class="register-btn" ng-click = "loginCustomer()">Login</button>
					<a href="/register" class="register-btn">Register</a>			
				</form>
			  </div>
			  <!-- <div class="col-md-6 login-right">
			  	 <h3>New User</h3>
			  	 <p>User can register to use our service for free.</p>
			     <a href="/register" class="register-btn">Create an Account </a>
			  </div> -->
			  <div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
	
	<%@include file="user/include/footer.jsp"%>
	<%@include file="user/script/user-script.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/user/js/login.js"></script>
</body>
</html>