<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Home</title> 
<script src="${pageContext.request.contextPath}/resources/user/angular/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/angular/angular-cookies.js"></script>
<link href="${pageContext.request.contextPath}/resources/user/css/sweetalert.css" rel="stylesheet" type="text/css" media="all"/>
<script src="${pageContext.request.contextPath}/resources/user/js/sweetalert-dev.js"> </script>


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
<script src="${pageContext.request.contextPath}/resources/user/js/simpleCart.min.js"> </script>
<script src="${pageContext.request.contextPath}/resources/user/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/login_register.js"></script>
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

</body>
</html>