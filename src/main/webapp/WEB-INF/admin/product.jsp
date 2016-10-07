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
<div class="wrapper" ng-app = "productApp" ng-controller = "productController">
	<%@include file="include/layout/header-top.jsp"%>
  	<%@include file="include/layout/left-side-bar.jsp"%>
  	
	<div class="content-wrapper">
	  <section class="content-header">
		  <h1>
		    Product
		  </h1>
	  </section>
	  <section class="content" ng-hide = "layoutProduct">
		
		<!-- CONTENT BLOCK START HERE -->
				            <form >
                  <textarea id="Detail" name="Detail"></textarea>
            </form>
		    	<div class="row" >
			      <div class="col-lg-12">
			        <div class="row"> 
			          <div class="col-sm-8">
			            <button type="button" class="btn btn-info btn-md" ng-click = "addNewButtonClicked()">Add more Product</button> <!-- data-toggle="modal" data-target="#myModal" -->
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
<%-- 							<c:choose>
							    <c:when test="${productPage.equals('new-camera')}">
			                		<th>Warranty</th>
							    </c:when>
							    <c:when test="${productPage.equals('used-camera')}">
							    	<th>Warranty</th>
							    </c:when>
							    <c:otherwise>
							    </c:otherwise>
							</c:choose> --%>
			                <th>Model</th>
			                <th>Brand</th>
			                <th>Category</th>
			              </tr>
			            </thead>
			            <tbody>
			              <tr ng-repeat="product in Products"> <!--  ng-repeat="camera in Cameras" -->
			                <td>{{(bntClickedIndex * pageForm.limit) + $index + 1}}</td>
			                <td>
			                  <button type="button" class="btn btn-warning" ng-click = "updateButtonClickedTB($index)">Update</button>
			                  <button type="button" class="btn btn-danger" ng-click = "deleteButtonClicked(product.ID)">Delete</button>
			                  <button type="button" class="btn btn-primary"  ng-click = "viewProductDetail($index)" >View Detail</button>
			                  <button type="button" class="btn btn-primary" ng-click = "addSpecClicked(product.ID)" ng-hide = "product.ID.substring(0, 1) == 'C' ? false : true">Add Spec</button>
			                  <button type="button" class="btn btn-primary" ng-click = "viewProductDetail($index)" >Add Image</button>          
			                </td>
			                <td>{{product.NAME}}</td>
			                <td>{{product.CODE}}</td>
			                <!-- <td>1 month</td> -->
			                <td>{{product.MODEL.model_name}}</td>
			                <td>{{product.BRAND.brand_name}}</td>
			                <td>{{product.CATEGORY.category_name}}</td>
			              </tr>
			            </tbody>
			          </table>
						
			        </div>
			        <div ng-hide = "Pagination.length == 10">
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
			    <%@include file="include/product/modal-add-new-camera.jsp"%>
			    <%@include file="include/product/modal-view-product-detail.jsp"%>

				 <%-- <c:choose>
				    <c:when test="${productPage.equals('new-camera')}">
                		<th>Warranty</th>
				    </c:when>
				    <c:when test="${productPage.equals('used-camera')}">
				    	<th>Warranty</th>
				    </c:when>
				    <c:when test="${productPage.equals('new-accessory')}">
				       New Accessory
				    </c:when>
				    <c:when test="${productPage.equals('used-accessory')}">
				        Used Accessory
				    </c:when>
				    <c:otherwise>
				        
				    </c:otherwise>
				</c:choose> --%>
		
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
<script src="${pageContext.request.contextPath}/resources/plugins/CKEditor/ckeditor/ckeditor.js"></script>
<!-- CK Editor -->
<script src="https://cdn.ckeditor.com/4.4.3/standard/ckeditor.js"></script>
<!-- <script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script> -->
<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath}/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<%-- <script src="${pageContext.request.contextPath}/resources/plugins/CKEditor/angular-ckeditor.js"></script> --%>
<script src="${pageContext.request.contextPath}/resources/admin/angular/camera_newSetup.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/angular/camera_newSetup.js"></script>

<script>
  $(function () {
	  alert("Hi");
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('Detail');
    CKEDITOR.replace('Description');
    
    //bootstrap WYSIHTML5 - text editor
    $(".textarea").wysihtml5();
  });
</script>
</body>
</html>
