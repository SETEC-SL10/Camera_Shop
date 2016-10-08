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
	<div class="container aboutUs">
		<h1 class="header">About Us</h1>
		<hr>
		<div class="col-md-3 ">
		<p>
			Welcome to SL10 Camera Shop in Cambodia ! 
			SL CAM TEN SHOP. Established in late 2010 and has been a prominent Degital online Shop destination in Cambodia ever since . Our customer service is ready to answer your questions in almost any waking hour. We redefine Degital shopping experience in Cambodia. As a premier photo and video outlet, we are full line dealers for the entire range of photographic equipment and supplies. 
			Whether you are a leading professional or new to photography, our expert staff are always ready to assist you in finding the perfect equipment at great prices.
		</p>
		</div>
		
		<div class="col-md-9 ">
		<%-- <iframe src="${pageContext.request.contextPath}/resources/user/video/about720.mp4" style="height:480px; width:100%;" loop="true"> --%>
		
		<video  autoplay loop style="height:480px; width:100%;">
		  <source src="${pageContext.request.contextPath}/resources/user/video/about720.mp4" type="video/mp4">
		  <!-- <source src="movie.ogg" type="video/ogg"> -->
		  Your browser does not support the video tag.
		</video>
		<%-- <img src="${pageContext.request.contextPath}/resources/user/img/about 720.gif" class="img-responsive" alt=""/> --%>
		<%-- <img src="${pageContext.request.contextPath}/resources/user/img/2.jpg" class="img-responsive" alt=""/> --%>
		</div>
	</div>
	<%@include file="include/footer.jsp"%>
	<%@include file="script/user-script.jsp"%>
</body>
</html>