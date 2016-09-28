<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	<%@include file="include/link.jsp"%>
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
<%@include file="include/script.jsp"%>
</body>
</html>
