<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	<%@include file="include/layout/link.jsp"%>
</head>
<body class="hold-transition skin-blue sidebar-mini" ng-app = "admin-App"  ng-controller = "importController">
<!-- Site wrapper -->
<div class="wrapper">
	<%@include file="include/layout/header-top.jsp"%>
  	<%@include file="include/layout/left-side-bar.jsp"%>
  	
	<div class="content-wrapper">
		 <section class="content-header">
			  <h1>
			    Import
			  </h1>
		  </section>
		<div ng-show="showImportList">
			<%@include file="include/import/import-view.jsp"%>
		</div>
	  	
	  	
	  	<div ng-show="showImportNewProduct">
	  		<%@include file="include/import/new-import-product.jsp"%>
	  	</div>
	  	
	  	<div ng-show = "showSelectProduct">
	  		<%@include file="include/import/get-product.jsp"%>
	  	</div>
	  	
	</div>

  <%@include file="include/layout/footer.jsp"%>
  <%@include file="include/layout/right-control-side-bar.jsp"%>
</div>
<%@include file="include/layout/script.jsp"%>
<script src="${pageContext.request.contextPath}/resources/admin/angular/import.js"></script>
<c:choose>
    <c:when test="${productPage.equals('new-camera')}">
    	<script src="${pageContext.request.contextPath}/resources/admin/angular/camera_newSetup.js"></script>
    </c:when>
    <c:when test="${productPage.equals('used-camera')}">
    	<script src="${pageContext.request.contextPath}/resources/admin/angular/camera_oldSetup.js"></script>
    </c:when>
    <c:when test="${productPage.equals('new-accessory')}">
       <script src="${pageContext.request.contextPath}/resources/admin/angular/accessory_newSetup.js"></script>
    </c:when>
    <c:when test="${productPage.equals('used-accessory')}">
        <script src="${pageContext.request.contextPath}/resources/admin/angular/accessory_oldSetup.js"></script>
    </c:when>
    <c:otherwise>
        
    </c:otherwise>
</c:choose>

</body>
</html>
