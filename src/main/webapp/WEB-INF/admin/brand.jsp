<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	<%@include file="include/layout/link.jsp"%>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
	<%@include file="include/layout/header-top.jsp"%>
  	<%@include file="include/layout/left-side-bar.jsp"%>
  	
	<div class="content-wrapper">
	  <section class="content-header">
		  <h1>
		    Brand
		  </h1>
	  </section>
	  <section class="content">
	  	<div class="main" ng-app="admin-App" ng-controller="BrandController">
		    <div class="row">
		        <div class="col-lg-12">
		            <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-no-radius" ng-click="Clear()">
		            	<span class="glyphicon glyphicon-plus"></span> Add New
		            </button>
		        </div>
		    </div>
		    <hr>
		    <!-- Modal -->
		    <div class="modal fade" id="myModal" role="dialog">
		        <div class="modal-dialog modal-lg">
		
		            <!-- Modal content-->
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" ng-click="modalShow()" >&times;</button>
		                    <h3 class="modal-title">Brand</h3>
		                </div>
		                <div class="modal-body">
		                    <form role="form" style="font-size:18px;">
		                        <div class="form-group">
		                            <label for="txtName">Brand Name</label>
		                            <input type="text" class="form-control" id="txtName" ng-model="brandTmp.brand_name">
		                        </div>
		                        <div class="form-group">
		                            <label for="description">Description</label>
		                            <textarea class="form-control"​id="description" ng-model="brandTmp.description"></textarea>
		                        </div>
		                        <div class="form-inline" style="margin-left: 22px;">
		                            <label>Available for Camera</label>&nbsp;
		                            <input type="checkbox" ng-model="brandTmp.brand_camera"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                            <label>Available for Accessory</label>&nbsp;
		                            <input type="checkbox" ng-model="brandTmp.brand_accessory"/><br/><br/>
		                        </div>
		                        <button type="submit" class="btn btn-primary" ng-click="insertBrands()" ng-hide="btnModal" data-dismiss="{{isInset}}">
		                        	<span class="glyphicon glyphicon-floppy-save"></span> Save</button>
		
		                        <button type="submit" class="btn btn-warning" ng-click="updateBrands()" ng-hide="!btnModal" data-dismiss="{{isInset}}">
		                        	<span class="glyphicon glyphicon-floppy-save"></span> Update</button>
							 </form>
		                </div>
		                <div class="modal-footer">
		                </div>
		            </div>
		
		        </div>
		    </div>
		    <!--end model-->
		    <div>
		        <!-- table respondsive -->
		        <div class="table-responsive">
		          <table id="datatable-example" class="table table-bordered table-striped table-sm">
		            <thead>
		              <tr>
		                <th>No</th>
		                <th>Name</th>
		                <th>Description</th>
		                <th>Camera</th>
		                <th>Accessory</th>
		                <th class="tableRowAction">Action</th>
		                
		              </tr>
		            </thead>
		            <tbody>
		              <tr role="row" class="odd" ng-repeat="Brand in Brands" ng-cloak>
		                <td>{{$index+1}}</td>
		                <td>{{Brand.brand_name}}</td>
		                <td>{{Brand.description}}</td>
		                <td>{{(Brand.brand_camera == true ) ? 'Yes':'No'}}</td>
		                <td>{{(Brand.brand_accessory == true ) ? 'Yes':'No'}}</td>
		                <td class="tableRowAction">
		                  <button class="btn btn-success btn-no-radius btn-sm" data-toggle="modal" data-target="#myModal" ng-click="updateClicked($index)">
		                  	<span class="glyphicon glyphicon-edit"></span> Edit
		                    </button>
		                    <button class="btn btn-danger btn-no-radius btn-sm" ng-click="deletClicked($index)">
		                    	<span class="glyphicon glyphicon-trash"></span> Delete
		                    </button>
		                </td>
		              </tr>
		            </tbody>
		          </table>
		        </div>
		        <!-- end table respondsive -->
		    </div>
		</div>
	  </section>
	</div>

  <%@include file="include/layout/footer.jsp"%>
  <%@include file="include/layout/right-control-side-bar.jsp"%>
</div>
<%@include file="include/layout/script.jsp"%>
<script src="${pageContext.request.contextPath}/resources/admin/angular/brand.js"></script>
</body>
</html>
