<%@ page pageEncoding="utf-8"%>

<section class="content" ng-controller = "productController">
   	<div class="row" >
      <div class="col-lg-12">
        <div class="row"> 
          <div class="col-sm-8">
            
          </div> 			          
          <%@include file="../product/search.jsp"%>			          
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
            <tbody ><!-- ng-cloak -->
              <tr ng-repeat="product in Products"> <!--  ng-repeat="camera in Cameras" -->
                <td>{{(bntClickedIndex * pageForm.limit) + $index + 1}}</td>
                <td>
                  <button type="button" class="btn btn-primary" ng-click="showImportPro()" data-tooltip title="Select"><i class="fa fa-get-pocket" aria-hidden="true"></i></button>
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
        <div ng-hide = "Pagination.length == 10" class="main-pagination"><!--ng-cloak  -->
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

