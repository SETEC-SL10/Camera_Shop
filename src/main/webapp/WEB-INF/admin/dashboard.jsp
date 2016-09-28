<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta charset="utf-8">	
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/plugins/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/plugins/AdminLTE/AdminLTE.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/plugins/AdminLTE/_all-skins.min.css">
	<link href="${pageContext.request.contextPath}/resources/admin/css/style.css" rel="stylesheet" type="text/css" media="all">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
	<%@include file="include/header-top.jsp"%>
  	<%@include file="include/left-side-bar.jsp"%>
  	
	<div class="content-wrapper">
	  <section class="content-header">
		  <h1>
		    Dashboard
		  </h1>
	  </section>
	  <section class="content">
		
		<!-- CONTENT BLOCK START HERE -->
		
	    <div class="box">
	      <div class="box-header with-border">
	        <h3 class="box-title">Title</h3>
	        <div class="box-tools pull-right">
	          <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
	            <i class="fa fa-minus"></i></button>
	          <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
	            <i class="fa fa-times"></i></button>
	        </div>
	      </div>
	      <div class="box-body">
	        Start creating your amazing application!
	      </div>
	      <div class="box-footer">
	        Footer
	      </div>
	    </div>
		
		<!-- END CONTENT BLOCK HERE -->
		
	  </section>
	</div>

  <%@include file="include/footer.jsp"%>
  <%@include file="include/right-control-side-bar.jsp"%>
</div>
<script src="${pageContext.request.contextPath}/resources/admin/js/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/plugins/bootstrap/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/plugins/fastclick/fastclick.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/plugins/AdminLTE/app.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/plugins/AdminLTE/demo.js"></script>
</body>
</html>
