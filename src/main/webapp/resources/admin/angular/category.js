
//var app = angular.module('categoryApp', []);

app.controller('categoryController', function($scope,$http,SharedService) {
	$scope.btnModal = false;

	$scope.categoryTmp = {

				    "category_accessory": false,
					"category_camera": false,
					"category_id": 0,
					"category_name": "",
					"description": "",
					"status": true,
					"type_id": 1
				    };

	$scope.getCategories = function(){
		$http({
				url : SharedService.apiAddress + "/api/products/Category",
		        method : "GET",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Record Found"){
					swal("Error Request Data", response.data.Message, "error");
				}else{
					//swal("Request Data", response.data.Message, "succes");
					$scope.categories = response.data.DATA;
				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});	
	};

	$scope.getCategories();

	$scope.insertCategories = function(){
		$http({
				url : SharedService.apiAddress + "/api/products/Category",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.categoryTmp
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Success Insert Category"){
					swal("Insert Data", response.data.Message, "error");
				}else{
					swal("Insert Data", response.data.Message, "success");
					$scope.categories = response.data.DATA;
		//Refresh Data on page
					$scope.getCategories();

				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		
	};
	$scope.isInset = 'modal';

	$scope.updateCategories = function(){
		$http({
				url : SharedService.apiAddress + "/api/products/Category",
		        method : "PUT",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.categoryTmp
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Success Update Category"){
					swal("Update Data", response.data.Message, "error");
				}else{
					swal("Update Data", response.data.Message, "success");
					//$scope.Brands = response.data.DATA;
		//Refresh Data on page
					$scope.getCategories();

				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		
	};
	$scope.isInset = 'modal';

	$scope.deleteCategories = function(id){
		$http({
				url : SharedService.apiAddress + "/api/products/Category/"+id,
		        method : "DELETE",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Success delete Category"){
					swal("Delete Data", response.data.Message, "error");
				}else{
					swal("Delete Data", response.data.Message, "success");
					$scope.categories = response.data.DATA;
		//Refresh Data on page
					$scope.getCategories();

				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		
	};
	$scope.Clear=function(){
		$scope.btnModal = false;
//		$scope.categoryTmp.category_id = 0;
		$scope.categoryTmp.category_name = null;
		$scope.categoryTmp.description = null;
		$scope.categoryTmp.category_accessory = false;
		$scope.categoryTmp.category_camera = false;
	};

	$scope.updateClicked = function(index){
		$scope.btnModal = true;
		$scope.categoryTmp = angular.copy($scope.categories[index]);
		console.log(object);
	};

	$scope.deletClicked = function(index){

		$scope.categoryTmp = angular.copy($scope.categories[index]);
		console.log($scope.brandTmp);
		$scope.deleteCategories($scope.categoryTmp.category_id);
		
	};
	$scope.modalShow = function(){
		alert("OK");
		$scope.btnModal = false;
	};
 });
