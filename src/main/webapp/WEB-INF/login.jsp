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
<script src="${pageContext.request.contextPath}/resources/user/js/login.js"></script>

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
<script src="${pageContext.request.contextPath}/resources/user/js/bootstrap.min.js"></script>
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

</body>
</html>