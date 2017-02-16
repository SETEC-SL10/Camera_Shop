
var app = angular.module('front-App',['ngCookies']);

app.controller('UserCtrl',['$scope', function($scope,SharedService){	
	$scope.search=[
	               		
           		 	{data:"All Product"},
           		 	{data:"Category"},
           		 	{data:"Brand"},
           		 	{data:"Model"},
        		 	
	              ];
	$scope.type=$scope.search[0].data;
	$scope.user="Login";
	$scope.newUser="";
	$scope.login = function(){	
		
		$scope.user=$scope.newUser;
	}
	
 
	
}]);

app.controller('UserCtrl',['$scope','$http','$cookies','$cookieStore','SharedService', function($scope,$http,$cookies,$cookieStore,SharedService){	
	
	$scope.getCustomer = function(){
		$scope.customer = $cookieStore.get('C0504');
		if( $scope.customer == null){
			$scope.pageForm.conditionValue = "-1";
		}else{
			$scope.pageForm.conditionValue = $scope.customer.customer_id;
		}
	};
	
	
	
	
	
	
	$scope.search=[
	               		
           		 	{data:"All Product"},
           		 	{data:"Category"},
           		 	{data:"Brand"},
           		 	{data:"Model"},
        		 	
	              ];
	$scope.type=$scope.search[0].data;
	/*$scope.user="Login";
	$scope.newUser="AAAAAA";
	
	$scope.login = function(){	
		
		$scope.user=$scope.newUser;
	}*/
	
 
	
}]);





app.filter('strLimit', ['$filter', function($filter) {
   return function(input, limit) {
     if (! input) return;
     if (input.length <= limit) {
          return input;
      }
    
      return $filter('limitTo')(input, limit) + '...';
   };
}]);


app.factory('SharedService', function() {
	  return {
		  apiAddress : 'http://localhost:9999',
		  uiAddress : 'http://localhost'
	  };
});













    



