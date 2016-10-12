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
		    Model
		  </h1>
	  </section>
	  <section class="content">
	  	<div class="main" ng-app="admin-App" ng-controller="modelController">
		    <!--Start action button-->
		    <div class="row">
		        <div class="col-lg-12">
		            <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-no-radius" ng-click="Clear()">
		            <span class="glyphicon glyphicon-plus"></span> Add New
		            </button>
		        </div>
		    </div>
		    <hr>
		    <!--End action button-->
		    <!-- <div class="pull-right">
		        <form class="form-inline" role="form">
		            <div class="form-group">
		                <label for="search" class="color-search" class="label label-danger label sm">ស្វែងរក</label>
		                <input type="text" class="form-control btn-no-radius border-0" id="search">
		            </div>
		        </form>
		    </div> -->
		    <!-- Modal -->
		    <div class="modal fade" id="myModal" role="dialog">
		        <div class="modal-dialog modal-lg">
		
		            <!-- Modal content-->
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" ng-click="modalShow()" >&times;</button>
		                    <h3 class="modal-title">Model</h3>
		                </div>
		                <div class="modal-body">
		                    <form role="form" style="font-size:18px;">
		                        <div class="form-group">
		                            <label for="txtName">Brand</label> <br>
		                            <select ng-model="modelTmp.brand_id" ng-options="Brand.brand_id as Brand.brand_name for Brand in Brands" class="form-control">
		                            </select>
		                        </div>
		                        <div class="form-group">
		                            <label for="txtName">Model Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                            <input type="text" class="form-control" id="txtName" ng-model="modelTmp.model_name">
								</div>
		                        <div class="form-group">
		                            <label for="description">Description</label>
		                            <textarea class="form-control"​id="description" ng-model="modelTmp.description"></textarea>
		                        </div>
		                        <div class="form-inline" style="margin-left: 22px;">
		                            <label>Available for Camera</label>&nbsp;
		                            <input type="checkbox" ng-model="modelTmp.model_camera"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                            <label>Available for Accessory</label>&nbsp;
		                            <input type="checkbox" ng-model="modelTmp.model_accessory"/><br/><br/>
		                        </div>
		                        <button type="submit" class="btn btn-primary" ng-click="insertproModel()" ng-hide="btnModal" data-dismiss="{{isInset}}">
		                        	<span class="glyphicon glyphicon-floppy-save"></span> Save</button>
		
		                        <button type="submit" class="btn btn-warning" ng-click="updateproModel()" ng-hide="!btnModal" data-dismiss="{{isInset}}">
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
		              <tr role="row" class="odd" ng-repeat="Model in Models" ng-cloak>
		                <td>{{$index+1}}</td>
		                <td>{{Model.model_name}}</td>
		                <td>{{Model.description}}</td>
		                <td>{{(Model.model_camera == true ) ? 'Yes':'No'}}</td>
		                <td>{{(Model.model_accessory == true ) ? 'Yes':'No'}}</td>
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
<script src="${pageContext.request.contextPath}/resources/admin/angular/model.js"></script>
</body>
</html>
