<%@ page pageEncoding="utf-8"%>

<div class="col-sm-4" ng-cloak>
  <div class="input-group">
      <div class="input-group-btn search-panel">
          <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
            <span id="search_concept">{{btnFilter.value}}</span> <span class="caret"></span>
          </button>
          <ul class="dropdown-menu" role="menu">
            <li class="divider"></li>
            <li ng-repeat="search_Filter in searchFilters">
              <a myVal="{{search_Filter.id}}" style="cursor: pointer;" ng-click="searchFilterClicked($index)">{{search_Filter.value}}</a>
            </li>
            <li class="divider"></li>
          </ul>
          <!-- <select class="form-control" id="searchFilter" ng-model="searchFilter" ng-options="search_Filter.value for search_Filter in searchFilters">
          </select> -->
      </div>
      <!-- <input type="hidden" name="search_param" value="all" id="search_param">          -->
      <input type="text" class="form-control" name="x" placeholder="Search camera..." ng-model="conditionValue">
      <span class="input-group-btn">
          <button class="btn btn-info" type="button" ng-click="searchCamera()"><span class="glyphicon glyphicon-search"></span></button>
      </span>
  </div>
</div>
    
