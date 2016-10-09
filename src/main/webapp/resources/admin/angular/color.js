//var color_app = angular.module('colorApp', []);

app.controller('colorAppController',function($scope,$http,SharedService){
	$scope.colorTmp = {
					    "color_id": "",
					    "color_name": "",
					    "description": "",
						"color_status": true,
					    "color_code": 0,
						"created_date": ""
					  };
	//console.log($scope.colorTmp);
	$scope.getColorByID = function(){
		$http({
				url : SharedService.apiAddress + "api/products/Color",
		        method : "GET",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	$scope.colorTmps = response.data.DATA;
		    	console.log(response.data);
		    	//$scope.schoolClass = response.data.DATA;
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	$scope.getColorByID();

	$scope.insertColor = function (){
	$http({
			url : SharedService.apiAddress + "api/products/Color",
			method : "POST",
			headers:{
				"accept": "application/json; charset=utf-8"
				//'Content-Type':'application/json;charset=UTF-8'
			},
			data : $scope.colorTmp
		}).then(function mySucces(response) {
			if (response.data.Message == "Success Insert Color"){
				$scope.getColorByID();
			}
			console.log(response);
		}, function myError(response) {
			console.log(response);
	});
  	};
	/*start update*/
	$scope.updateColor = function(){
		$http({
				url : SharedService.apiAddress + "api/products/Color",
		        method : "PUT",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.colorTmp
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Success Update Color"){
					swal("Error Request Data", response.data.Message, "error");
				}else{
					swal("Update Data", response.data.Message, "success");
					$scope.colorTmps = response.data.DATA;
		//Refresh Data on page
					$scope.getColorByID();
				}
		    }, function myError(response) {
				consol.log(response);
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		
	};
	/*start delete*/
	$scope.deleteColor = function(id){
	//	alert(id);
		$http({
				url : SharedService.apiAddress + "api/products/Color/"+id,
		        method : "DELETE",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Success delete Color"){
					swal("Error Request Data", response.data.Message, "error");
				}else{
					swal("Error Request Data", response.data.Message, "success");
					$scope.colorTmps = response.data.DATA;
		//Refresh Data on page
					$scope.getColorByID();

				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		
	};
	/*end delete */
	$scope.updateClicked = function(index){
		$scope.colorTmp = angular.copy($scope.colorTmps[index]);
	};
	$scope.deletClicked = function(index){
		$scope.colorTmp = angular.copy($scope.colorTmps[index]);
		$scope.deleteColor($scope.colorTmp.color_id);
		
	};
	
});
