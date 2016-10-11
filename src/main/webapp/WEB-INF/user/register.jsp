<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title> 
<%@include file="link/user-link.jsp"%>
<style>
	.register{
		width: 600px;
	}
	</style>
</head>
<body>

<%@include file="include/header.jsp"%>

<div class="signin" ng-app="front-App" ng-controller="LoginRegisterController" ng-cloak>
	<div class="container register">
	 	<form ng-submit="insertCustomer()">
	       	<div class="form-group">
	             <label for="color">First Name</label>
	             <input type="text" placeholder="First Name" ng-model="customer.customer_first_name" required class="form-control">
        	</div>
        	
        	<div class="form-group">
	             <label for="color">Last Name</label>
	             <input type="text"  placeholder="Last Name" ng-model="customer.customer_last_name" required class="form-control">
        	</div>
        	
        	<div class="form-group">
	             <label for="color">Phone</label>
	             <input type="number" placeholder="Phone" ng-model="customer.customer_phone" class="form-control"/ >
        	</div>
        	
        	<div class="form-group">
	             <label for="color">Email</label>
	             <input type="text"  placeholder="Email" required="" ng-model="customer.customer_email" class="form-control"/>
        	</div>
        	
        	<div class="form-group">
	             <label for="color">Address</label>
	             <input type="text"  placeholder="Address" ng-model="customer.customer_address" required class="form-control">
        	</div>
        	
        	<div class="form-group">
	             <label for="color">Password</label>
	             <input type="password"  placeholder="Password" required="" ng-model="customer.customer_password" class="form-control"/>
        	</div>
        	
        	<div class="form-group">
	             <label for="color">Confirm Password</label>
	             <input type="password"  placeholder="Confirm Password" required="" ng-model="Confirmpassword" class="form-control"/>
        	</div>
        	
        	<div class="form-group">
	             <input type="button" class="btn btn-primary btnRegister" value="Register" ng-click="insertCustomer()" ng-disabled="customer.customer_password != Confirmpassword" class="form-control">
        	</div>
	         
	       
	      </form>
	</div>
</div>



<%@include file="include/footer.jsp"%>
<%@include file="script/user-script.jsp"%>
<script src="${pageContext.request.contextPath}/resources/user/js/login_register.js"></script>
</body>
</html>