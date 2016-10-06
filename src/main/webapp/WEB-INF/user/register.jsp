<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title> 
<%@include file="link/user-link.jsp"%>
</head>
<body>

<%@include file="include/header.jsp"%>

<div class="signin" ng-app="LoginRegisterApp" ng-controller="LoginRegisterController" ng-cloak>
	<div class="container">
		<div class="signin-main">
			<h1>Register New Account</h1>
			<h2>Informations</h2>
			<form ng-submit="insertCustomer()"><!--   -->
				<input type="text" placeholder="First Name" ng-model="customer.customer_first_name" required>
				<input type="text"  placeholder="Last Name" ng-model="customer.customer_last_name" required>
				<input type="number" placeholder="Phone" ng-model="customer.customer_phone"/>
				<input type="text"  placeholder="Email" required="" ng-model="customer.customer_email"/>	<!-- class="no-margin" -->
				<input type="text"  placeholder="Address" ng-model="customer.customer_address"/ required>
				<input type="password"  placeholder="Password" required="" ng-model="customer.customer_password"/>
				<input type="password"  placeholder="Confirm Password" required="" ng-model="Confirmpassword"/>
				<input type="button" class="btn btn-primary btnRegister" value="Register" ng-click="insertCustomer()" ng-disabled="customer.customer_password != Confirmpassword" ><!--ng-click="insertCustomer()"  -->
			</form>
		</div>
	</div>
</div>



<%@include file="include/footer.jsp"%>
<%@include file="script/user-script.jsp"%>
<script src="${pageContext.request.contextPath}/resources/user/js/login_register.js"></script>
</body>
</html>