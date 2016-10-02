<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>		
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Product Setup</title>	
	<%@include file="include/layout/link.jsp"%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
	<%@include file="include/layout/header-top.jsp"%>
  	<%@include file="include/layout/left-side-bar.jsp"%>
  	
	<div class="content-wrapper">
	  <section class="content-header">
		  <h1>
		    Product
		  </h1>
	  </section>
	  <section class="content">
		
		<!-- CONTENT BLOCK START HERE -->
		
		<c:choose>
		    <c:when test="${productPage.equals('new-camera')}">
		    	<div class="row">
			      <div class="col-lg-12">
			        <div class="row"> 
			          <div class="col-sm-8">
			            <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal">Add more Camera</button>
			          </div> 			          
			          <%@include file="include/product/search.jsp"%>			          
			        </div>
			        
			        <div class="table-responsive" >
			          <table id="example1" class="table table-bordered table-hover table-striped">
			            <thead>
			              <tr>
			                <th >No</th>
			                <th >Action</th>
			                <th>Name</th>
			                <th>Code</th>
			                <th>Warranty</th>
			                <th>Model</th>
			                <th>Brand</th>
			                <th>Category</th>
			              </tr>
			            </thead>
			            <tbody>
			              <tr> <!--  ng-repeat="camera in Cameras" -->
			                <td>1</td>
			                <td>
			                  <button type="button" class="btn btn-warning">Update</button>
			                  <button type="button" class="btn btn-danger">Delete</button>
			                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#viewProductDetail">View Detail</button>          
			                </td>
			                <td>EOS 5D</td>
			                <td>123456</td>
			                <td>1 month</td>
			                <td>aa</td>
			                <td>bb</td>
			                <td>cc</td>
			              </tr>
			            </tbody>
			          </table>
			        </div>
			      </div>
			    </div>			   
			    <%@include file="include/product/modal-add-new-camera.jsp"%>
			    <%@include file="include/product/modal-view-product-detail.jsp"%>
		    </c:when>
		    <c:when test="${productPage.equals('used-camera')}">
		       Used Camera
		    </c:when>
		    <c:when test="${productPage.equals('new-accessory')}">
		       New Accessory
		    </c:when>
		    <c:when test="${productPage.equals('used-accessory')}">
		        Used Accessory
		    </c:when>
		    <c:otherwise>
		        
		    </c:otherwise>
		</c:choose>

		<!-- END CONTENT BLOCK HERE -->
		
	  </section>
	</div>

  <%@include file="include/layout/footer.jsp"%>
  <%@include file="include/layout/right-control-side-bar.jsp"%>
</div>




<%@include file="include/layout/script.jsp"%>

<!-- CK Editor -->
<script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath}/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>


<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1');
    //bootstrap WYSIHTML5 - text editor
    $(".textarea").wysihtml5();
  });
</script>
</body>
</html>
