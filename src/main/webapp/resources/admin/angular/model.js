
//var app = angular.module('modelApp', []);

app.controller('modelController', function($scope,$http,SharedService) {
	$scope.btnModal = false;
				     //"model_camera": true,

	$scope.modelTmp = {

				     "model_id": 0,
				     "model_name": "Nikon",
				     "description": "Nikon Models",
				     "model_camera": false,
				     "model_accessory": true,
				     "model_status": true,
				     "brand_id": 4
				    
				    };

	// function for call brand and repeate in selection
	$scope.getBrands = function(){
		// var res = transaction($http,{url:"http://localhost:9999//api/products/Brand",method:"GET",data:null});
		// $scope.Brands = res.data.DATA;
		$http({
				url : SharedService.apiAddress + "/api/products/Brand",
		        method : "GET",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Record Found"){
					swal("Error Request Data", response.data.Message, "error");
				}else{
					$scope.Brands = response.data.DATA;
					if($scope.Brands != null){
						$scope.modelTmp.brand_id = $scope.Brands[0].brand_id;
						//alert($scope.modelTmp.brand_id);
					}
				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});	
	};

	//call brand
	$scope.getBrands();

	$scope.getproModel = function(){
		// var res = transaction($http,{url:"http://localhost:9999//api/products/Brand",method:"GET",data:null});
		// $scope.Brands = res.data.DATA;
		$http({
				url : SharedService.apiAddress + "/api/products/Model",
		        method : "GET",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Record Found"){
					swal("Error Request Data", response.data.Message, "error");
				}else{
					//swal("Request Data", response.data.Message, "succes");
					$scope.Models = response.data.DATA;
				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		
	};

	$scope.getproModel();

	$scope.insertproModel = function(){
		$http({
				url : SharedService.apiAddress + "/api/products/Model",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.modelTmp
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Success Insert Model"){
					swal("Insert Data", response.data.Message, "error");
				}else{
					swal("Insert Data", response.data.Message, "success");
					$scope.Models = response.data.DATA;
		//Refresh Data on page
					$scope.getproModel();

				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		$scope.isInset = 'modal';
	};

	$scope.updateproModel = function(){
		$http({
				url : SharedService.apiAddress + "/api/products/Model",
		        method : "PUT",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.modelTmp
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Success Update Model"){
					swal("Update Model", response.data.Message, "error");
				}else{
					swal("Update Model", response.data.Message, "success");
					//$scope.Models = response.data.DATA;
					//Refresh Data on page
					$scope.getproModel();

				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		$scope.isInset = 'modal';
	};

	$scope.deleteproModel = function(id){
		$http({
				url : SharedService.apiAddress + "/api/products/Model/"+id,
		        method : "DELETE",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Success delete Model"){
					swal("Delete Data", response.data.Message, "error");
				}else{
					swal("Delete Data", response.data.Message, "success");
					$scope.Models = response.data.DATA;
		//Refresh Data on page
					$scope.getproModel();

				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		
	};
	$scope.Clear=function(){
		$scope.modelTmp.model_id = 0;
		$scope.modelTmp.model_name = null;
		$scope.modelTmp.description = null;
		$scope.modelTmp.model_camera = false;
		$scope.modelTmp.model_accessory = false;
	};

	$scope.updateClicked = function(index){
		$scope.btnModal = true;
		$scope.modelTmp = angular.copy($scope.Models[index]);
		console.log($scope.modelTmp);
	};

	$scope.deletClicked = function(index){

		$scope.modelTmp = angular.copy($scope.Models[index]);
		console.log($scope.modelTmp);
		$scope.deleteproModel($scope.modelTmp.model_id);
		
	};
	$scope.modalShow = function(){
		$scope.btnModal = false;
	};
		//$scope.insertBrands();
	});
