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
		    Category
		  </h1>
	  </section>
	  <section class="content">
	  	<div class="main" ng-app="admin-App" ng-controller="categoryController">
		    <div class="row">
		        <div class="col-lg-12">
		            <h1 class="page-header">ប្រភេទ<span class="glyphicon glyphicon-camera pull-right"></span></h1>
		        </div>
		    </div><!--/.row-->
		    <!--Start action button-->
		    <div class="row">
		        <div class="col-lg-12">
		            <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-no-radius" ng-click="Clear()"><span class="glyphicon glyphicon-plus"></span> បញ្ចូល...
		            </button>
		        </div>
		    </div>
		    <hr>
		    <!--End action button-->
		    <div class="pull-right">
		        <form class="form-inline" role="form">
		            <div class="form-group">
		                <label for="search" class="color-search" class="label label-danger label sm">ស្វែងរក</label>
		                <input type="text" class="form-control btn-no-radius border-0" id="search">
		            </div>
		        </form>
		    </div>
		    <!-- Modal -->
		    <div class="modal fade" id="myModal" role="dialog">
		        <div class="modal-dialog modal-lg">
		
		            <!-- Modal content-->
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" ng-click="modalShow()" >&times;</button>
		                    <h3 class="modal-title" style="font-weight:bold; color:#30a5ff; text-decoration:underline;">បញ្ចូលទិន្ន័យ</h3>
		                </div>
		                <div class="modal-body">
		                    <form role="form" style="font-size:18px;">
		                        <div class="form-group">
		                            <label for="txtName">ឈ្មោះប្រភេទ</label>
		                            <input type="text" class="form-control" id="txtName" ng-model="categoryTmp.category_name">
		                        </div>
		                        <div class="form-group">
		                            <label for="description">ការពិព័ត៏នាអំពីប្រភេទ</label>
		                            <textarea class="form-control"​id="description" ng-model="categoryTmp.description"></textarea>
		                        </div>
		                        <div class="form-inline" style="margin-left: 22px;">
		                            <label>ម៉ាករបស់កាមេរ៉ា</label>&nbsp;
		                            <input type="checkbox" ng-model="categoryTmp.category_camera"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                            <label>ម៉ាករបស់គ្រឿងបន្លាស់</label>&nbsp;
		                            <input type="checkbox" ng-model="categoryTmp.category_accessory"/><br/><br/>
		                        </div>
		                        <button type="submit" class="btn btn-primary" ng-click="insertCategories()" ng-hide="btnModal"data-dismiss="{{isInset}}"><span class="glyphicon glyphicon-floppy-save"></span> រក្សាទុក</button>
		
		                        <button type="submit" class="btn btn-warning" ng-click="updateCategories()" ng-hide="!btnModal" data-dismiss="{{isInset}}"}><span class="glyphicon glyphicon-floppy-save"></span> កែរប្រែ</button>
		
		                        <button type="button" class="btn btn-primary pull-right" data-dismiss="modal"><span class="glyphicon glyphicon-off"></span> ចាកចេញ</button>
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
		          <table id="datatable-example" class="table table-bordered table-striped table-hover table-sm">
		            <thead>
		              <tr>
		                <th>លេខរៀង</th>
		                <th>ឈ្មោះប្រភេទ</th>
		                <th>ព័តមាន</th>
		                <th>ម៉ាកកាមេរ៉ា</th>
		                <th>ម៉ាកគ្រឿងបន្លាស់</th>
		                <th>សកម្មភាព</th>
		                
		              </tr>
		            </thead>
		            <tbody>
		              <tr role="row" class="odd" ng-repeat="category in categories">
		                <td>{{$index}}</td>
		                <td>{{category.category_name}}</td>
		                <td>{{category.description}}</td>
		                <td>{{(category.category_camera == true ) ? 'Yes':'No'}}</td>
		                <td>{{(category.category_accessory == true ) ? 'Yes':'No'}}</td>
		                <td>
		                  <button class="btn btn-success btn-no-radius btn-sm" data-toggle="modal" data-target="#myModal" ng-click="updateClicked($index)"><span class="glyphicon glyphicon-edit"></span> កែប្រែ...
		                    </button>
		                    <button class="btn btn-danger btn-no-radius btn-sm" ng-click="deletClicked($index)"><span class="glyphicon glyphicon-trash"></span> លប់...
		                    </button>
		
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
<script src="${pageContext.request.contextPath}/resources/admin/angular/category.js"></script>
</body>
</html>
