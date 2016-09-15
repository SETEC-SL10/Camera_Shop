
var app = angular.module('UserApp', []);

app.controller('UserCtrl',['$scope', function($scope){	
	$scope.search=[
	               		
           		 	{data:"All Product"},
           		 	{data:"Category"},
           		 	{data:"Brand"},
           		 	{data:"Model"},
        		 	
       		 	
	               		
	               		
	               
	              ];
	$scope.type=$scope.search[0].data;
	
	console.log($scope.search[0].data);

	/*$scope.getDocumentByLikeTitle = function(title){			
		$http({
			url:'http://localhost:1111/api/v1/getDocumentByLikeTitle/'+title,
			method:'GET'			
		}).then(function(response){
		
			
			  var preloader = document.querySelector(".preloader");
			  preloader.style.opacity = 0;
			  preloader.style.display ="none";
			
			
			$scope.documentSearch=response.data.DATA;
		
		}, function(response){
		
		});
	}*/
 
	
}]);












    



