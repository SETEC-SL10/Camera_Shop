<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>		
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Product Setup</title>	
	
	<%@include file="include/layout/link.jsp"%>
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"> --%>
	
	<!-- START UPLOAD IMAGE -->
	<link href="${pageContext.request.contextPath}/resources/plugins/jQuery.filer/css/jquery.filer.css" type="text/css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/jQuery.filer/css/themes/jquery.filer-dragdropbox-theme.css" type="text/css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/plugins/jQuery.filer/fancybox/source/jquery.fancybox.css?v=2.1.5">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/plugins/jQuery.filer/fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5">
	<!-- STOP UPLOAD IMAGE -->
	
</head>
<body class="hold-transition skin-blue sidebar-mini" ng-app = "admin-App" ng-controller = "productController">

	<%@include file="include/product/modal-add-new-camera.jsp"%>
    <%@include file="include/product/modal-view-product-detail.jsp"%>	
    <%@include file="include/product/modal-product-serial.jsp"%>	
    
<!-- Site wrapper -->
<div class="wrapper" >
	<%@include file="include/layout/header-top.jsp"%>
  	<%@include file="include/layout/left-side-bar.jsp"%>
  	
	<div class="content-wrapper">
	  <section class="content-header">
		  <h1>
		    Product
		  </h1>
	  </section>
	  <section class="content" ng-hide = "layoutProduct" >
		
		<!-- CONTENT BLOCK START HERE -->
		    	<div class="row" >
			      <div class="col-lg-12">
			        <div class="row"> 
			          <div class="col-sm-8" ng-cloak>
			            <button type="button" class="btn btn-info btn-md" ng-click = "addNewButtonClicked()">Add more Product</button> <!-- data-toggle="modal" data-target="#myModal" -->
			          </div> 			          
			          <%@include file="include/product/search.jsp"%>			          
			        </div>
			        
			        <div class="table-responsive" ng-cloak>
			          <table id="example1" class="table table-bordered table-hover table-striped">
			            <thead>
			              <tr>
			                <th >No</th>
			                <th >Action</th>
			                <th>Name</th>
			                <th>Code</th>
			                <th>Model</th>
			                <th>Brand</th>
			                <th>Category</th>
			              </tr>
			            </thead>
			            <tbody ng-cloak>
			              <tr ng-repeat="product in Products"> <!--  ng-repeat="camera in Cameras" -->
			                <td>{{(bntClickedIndex * pageForm.limit) + $index + 1}}</td>
			                <td>
			                  <button type="button" class="btn btn-warning" ng-click = "updateButtonClickedTB($index)" data-tooltip title="Update"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
			                  <button type="button" class="btn btn-danger" ng-click = "deleteButtonClicked(product.ID)" data-tooltip title="Delete"><i class="fa fa-trash" aria-hidden="true"></i></button>
			                  <button type="button" class="btn btn-primary"  ng-click = "viewProductDetail($index)" data-tooltip title="View Detail"><i class="fa fa-eye" aria-hidden="true"></i></button>
			                  <button type="button" class="btn btn-primary" ng-click = "addSpecClicked(product.ID)" ng-hide = "product.ID.substring(0, 1) == 'C' ? false : true" data-tooltip title="Add Spec"><i class="fa fa-list-alt" aria-hidden="true"></i></button>
			                  <button type="button" class="btn btn-primary" ng-click = "addImageClicked(product)" data-tooltip title="Add Image"><i class="fa fa-picture-o" aria-hidden="true"></i></button>          
			                </td>
			                <td>{{product.NAME | strLimit : 33}}</td>
			                <td>{{product.CODE | strLimit : 20}}</td>
			                <td>{{product.MODEL.model_name | strLimit : 20}}</td>
			                <td>{{product.BRAND.brand_name | strLimit : 20}}</td>
			                <td>{{product.CATEGORY.category_name | strLimit : 20}}</td>
			              </tr>
			            </tbody>
			          </table>
						
			        </div>
			        <div ng-hide = "Pagination.length == 10" ng-cloak class="main-pagination">
						   <nav role="navigation">
								<ul class="cd-pagination no-space">
									<li class="button"><a href="#" ng-click="getProductsByPagePrev()">Prev</a></li>
									<li  ng-repeat = "page in Pagination"><a href="#" ng-class="($index == bntClickedIndex) ? 'current' : ''" ng-click="getProductsByPage($index)">{{page}}</a></li>
									<li class="button"><a href="#" ng-click="getProductsByPageNext()">Next</a></li>
								</ul>
							</nav> <!-- cd-pagination-wrapper -->
						</div>
			      </div>
			    </div>			   
			   
	  </section>
	  
	<section class="content" ng-hide = "layoutImage"> 
	<%@include file="include/product/camera-image.jsp"%>
	</section>
	<section class="content" ng-hide = "layoutSpec"> <!-- ng-hide = "layoutImage" -->
	<%@include file="include/product/specification.jsp"%>
	</section>
	</div>

  <%@include file="include/layout/footer.jsp"%>
  <%@include file="include/layout/right-control-side-bar.jsp"%>
</div>

<%@include file="include/layout/script.jsp"%>

<%-- <script src="${pageContext.request.contextPath}/resources/plugins/CKEditor/ckeditor/ckeditor.js"></script> --%>
<!-- CK Editor -->
<script src="https://cdn.ckeditor.com/4.4.3/standard/ckeditor.js"></script>
<!-- <script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script> -->
<!-- Bootstrap WYSIHTML5 -->
<%-- <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/resources/plugins/CKEditor/angular-ckeditor.js"></script> --%>

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

<!-- <script>
  $(function () {
	  //alert("Hi");
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('Detail');
    CKEDITOR.replace('Description');
    
    //bootstrap WYSIHTML5 - text editor
    //$(".textarea").wysihtml5();
  });
</script> -->


<!-- START UPLOAD IMAGE -->

<!-- START UPLOAD IMAGE -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jQuery.filer/fancybox/source/jquery.fancybox.js?v=2.1.5"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jQuery.filer/fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jQuery.filer-1.3.0/js/jquery.filer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jQuery.filer/js/custom.js"></script>
	

<!-- STOP UPLOAD IMAGE -->

</body>
</html>
