<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<div class="row searchBlock"> 
	<div class="col-sm-3">
		<!-- Trigger the modal with a button -->
		<!-- <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal">Add more Camera</button> -->
	</div> 
	<div class="col-sm-6">
		<div class="input-group">
			<div class="input-group-btn search-panel">
			    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
			    	<span id="search_concept">{{btnFilter.value}}</span> <span class="caret"></span>
			    </button>
			    <ul class="dropdown-menu" role="menu">
					<li class="divider"></li>
					<li ng-repeat="search_Filter in searchFilters"> <!-- ng-repeat="search_Filter in searchFilters" -->
					  <a myVal="{{search_Filter.id}}" style="cursor: pointer;" ng-click="searchFilterClicked($index)">{{search_Filter.value}}</a>
					</li>
					<li class="divider"></li>
			    </ul>
			    <!-- <select class="form-control" id="searchFilter" ng-model="searchFilter" ng-options="search_Filter.value for search_Filter in searchFilters">
			    </select> -->
			</div>
		    <!-- <input type="hidden" name="search_param" value="all" id="search_param">          -->
		    <input type="text" class="form-control" name="x" placeholder="Search ..." ng-model="conditionValue">
		    <span class="input-group-btn">
		    	<!-- <button class="btn btn-info" type="button" ng-click="searchProduct()"><span class="glyphicon glyphicon-search">ss</span></button> -->
		    	<button class="btn btn-info searchBtn" ng-click="searchProduct()">
			    	<span >&nbsp</span> <span class="glyphicon glyphicon-search"></span><!-- <span >&nbsp</span> -->
			    </button>
		    </span>
		</div>
	</div>
	<div class="col-sm-3">
		<!-- Trigger the modal with a button -->
		<!-- <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal">Add more Camera</button> -->
	</div>
</div>