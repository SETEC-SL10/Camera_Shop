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
	
	<div class="container login">
	 	<form ng-submit="login()">
         	<div class="form-group">
	              <label for="color">Email</label>
	              <input type="text" placeholder="Email" required="" ng-model="customer.customer_email" class="form-control">
          	</div>
          
           <div class="form-group">
	              <label for="color">Password</label>
	              <input type="password" placeholder="Password" required="" ng-model="customer.customer_password" class="form-control">
          	</div>
          
          <div class="form-group">
              <a href=""  ng-click = "loginCustomer()" class="btn btn-primary">Login</a><!-- class="register-btn" -->
              <a href="/register" class="btn btn-primary" >Register</a>	
          </div>
       </form>
	</div>
	
	<%@include file="user/include/footer.jsp"%>
	<%@include file="user/script/user-script.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/user/js/login.js"></script>
</body>
</html>