<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	<%@include file="include/layout/link.jsp"%>
	<link href="${pageContext.request.contextPath}/resources/plugins/minicolors/css/jquery.minicolors.css" rel="stylesheet" type="text/css" media="all">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
	<%@include file="include/layout/header-top.jsp"%>
  	<%@include file="include/layout/left-side-bar.jsp"%>
  	
	<div class="content-wrapper">
	  <section class="content-header">
		  
	  </section>
	  <section class="content">
	  	<div class=" main" ng-app="admin-App" ng-controller="colorAppController">
		    <!--Start action button-->
		    <div class="row">
		        <div class="col-lg-12">
		            <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-no-radius">
		            	<span class="glyphicon glyphicon-plus"></span> Add New
		            </button>
		        </div>
		    </div>
		    <br>
		    <!--End action button-->
		   <!--  <div class="pull-right">
		        <form class="form-inline" role="form">
		            <div class="form-group">
		                <label for="search" class="color-search">Search</label>
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
		                    <button type="button" class="close" data-dismiss="modal">&times;</button>
		                    <h4 class="modal-title">Color</h4>
		                </div>
		                <div class="modal-body">
		                    <form role="form">
		                        <div class="form-group">
		                            <label for="colorName">Color name</label>
		                            <input type="text" class="form-control" id="colorName" ng-model="colorTmp.color_name" required="required">
		                        </div>
		                        <div class="form-group">
		                            <label for="description">Description</label>
		                            <input type="text" class="form-control" id="description" ng-model="colorTmp.description" required="required">
		                        </div>
		                        <div class="form-group">
		                            <label for="colorCode">Color code</label>
		        					<input type="text" id="hue-demo" class="form-control demo" data-control="hue" value="#ff6161" ng-model="colorTmp.color_code" required="required">
		                        </div>
		                        <button type="submit" class="btn btn-primary" ng-click="insertColor()"><span class="glyphicon glyphicon-floppy-save"></span> Save</button>
		                        <button type="submit" class="btn btn-primary" ng-click="updateColor()"><span class="glyphicon glyphicon-floppy-save"></span> Update</button>
		                        <button type="button" class="btn btn-danger pull-right" data-dismiss="modal"><span class="glyphicon glyphicon-off"></span> Close</button>
		                    </form>
		                </div>
		                <div class="modal-footer">
		                </div>
		            </div>
		
		        </div>
		    </div>
		    <!--end model-->
		    <div>
		        <table class="table table-bordered#">
		            <thead>
		            <tr class="adminTableHeader">
		               	<th>No</th>
		                <th>Color Name</th>
		                <th>Description</th>
		                <th>Color Code</th>
		                <th class="tableRowAction">Action</th>
		            </tr>
		            </thead>
		            <tbody>
		            <tr ng-repeat = "colorTmp in colorTmps" ng-cloak>
		                <td>{{$index+1}}</td>
		                <td>{{colorTmp.color_name}}</td>
		                <td>{{colorTmp.description}}</td>
		                <td>{{colorTmp.color_code}}</td>
		                <td class="tableRowAction">
		                    <button class="btn btn-success btn-no-radius btn-sm" data-toggle="modal" data-target="#myModal" ng-click="updateClicked($index)">
		                    	<span class="glyphicon glyphicon-edit"></span> Edit
		                    </button>
		                    <button class="btn btn-danger btn-no-radius btn-sm" ng-click = "deletClicked($index)">
		                    	<span class="glyphicon glyphicon-trash"></span> Delete
		                    </button>
		                </td>
		            </tr>
		            </tbody>
		        </table>
		    </div>
		
		</div> 
	  </section>
	</div>

  <%@include file="include/layout/footer.jsp"%>
  <%@include file="include/layout/right-control-side-bar.jsp"%>
</div>
<%@include file="include/layout/script.jsp"%>
<script src="${pageContext.request.contextPath}/resources/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/minicolors/js/jquery.minicolors.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/angular/color.js"></script>

<script type="text/javascript">
$(function(){
  var colpick = $('.demo').each( function() {
    $(this).minicolors({
      control: $(this).attr('data-control') || 'hue',
      inline: $(this).attr('data-inline') === 'true',
      letterCase: 'lowercase',
      opacity: false,
      change: function(hex, opacity) {
        if(!hex) return;
        if(opacity) hex += ', ' + opacity;
        try {
          console.log(hex);
        } catch(e) {}
        $(this).select();
      },
      theme: 'bootstrap'
    });
  });
  
  var $inlinehex = $('#inlinecolorhex h3 small');
  $('#inlinecolors').minicolors({
    inline: true,
    theme: 'bootstrap',
    change: function(hex) {
      if(!hex) return;
      $inlinehex.html(hex);
    }
  });
});
</script>
</body>
</html>
