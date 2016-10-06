/**
*  Module
*
* Description
*/

function callModal(id,modal){
	$(id).modal(modal);
}

var app = angular.module('productApp', []);

app.controller('productController', function($scope,$http){

	$scope.btnModal = true;
	$scope.numPagination = 0;
	$scope.Pagination = [];
	$scope.bntClickedIndex = 0;

	$scope.searchFilters = [
							/*{ id : "all", value : "All Camera"},*/
							{ id : "name", value : "Camera Name"},
							{ id : "code", value : "Camera Code"},
							{ id : "category", value : "Category Name"},
							{ id : "brand", value : "Brand Name"},
							{ id : "model", value : "Model Name"}
						   ];

	$scope.btnFilter = $scope.searchFilters[0];
	$scope.conditionValue = "";
	$scope.pageForm = {
						  columnName: "all",
						  conditionValue: "",
						  limit: 2,
						  page: 0
						};

	// this function use for request Brand
	$scope.getAllBrand = function(){
		$http({
				url : "http://localhost:9999/api/products/Brand/1",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record Found"){
		    		swal("Request Data!", "Can not request Brand!!!!", "error");
		    	}else{
		    		$scope.Brands = response.data.DATA;
		    		if($scope.Brands != null){
		    			$scope.Brand = $scope.Brands[0];
		    		}
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	// this function use for request Model
	$scope.getAllModel = function(){
		$http({
				url : "http://localhost:9999/api/products/Model/1",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record Found"){
		    		swal("Request Data!", "Can not request Model!!!!", "error");
		    	}else{
		    		$scope.Models = response.data.DATA;
		    		if($scope.Models != null){
		    			$scope.Model = $scope.Models[0];
		    		}
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	// this function use for request Category
	$scope.getAllCategory = function(){
		$http({
				url : "http://localhost:9999/api/products/Category/1",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record Found"){
		    		swal("Request Data!", "Can not request Category!!!!", "error");
		    	}else{
		    		$scope.Categorys = response.data.DATA;
		    		if($scope.Categorys != null){
		    			$scope.Category = $scope.Categorys[0];
		    		}
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	// insert product
	$scope.insertProduct = function(product){
		$http({
				url : "http://localhost:9999/api/products/newCamera",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:product
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "SUCCESS"){
		    		swal("Error!", "Error Insert Product!!!!", "error");
		    	}else{
		    		swal("SUCCESS!", "Success Insert Product!!!!", "success");
		    			$scope.pageForm.conditionValue = "";
						$scope.pageForm.columnName = "all";
						$scope.pageForm.page = 0;
						$scope.getAllCamera($scope.pageForm);
						$scope.getPageProduct();
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	// update product
	$scope.updateProduct = function(product){
		$http({
				url : "http://localhost:9999/api/products/newCamera",
		        method : "PUT",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:product
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "SUCCESS"){
		    		swal("Error!", "Error Update Product!!!!", "error");
		    	}else{
		    		swal("SUCCESS!", "Success Update Product!!!!", "success");
		    			$scope.pageForm.conditionValue = "";
						$scope.pageForm.columnName = "all";
						$scope.pageForm.page = 0;
						$scope.getAllCamera($scope.pageForm);
						$scope.getPageProduct();
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	$scope.deleteProduct = function(id){
		$http({
				url : "http://localhost:9999/api/products/newCamera/"+id,
		        method : "DELETE",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "SUCCESS"){
		    		swal("Error!", "Error Delete Product!!!!", "error");
		    	}else{
		    		swal("SUCCESS!", "Success Delete Product!!!!", "success");
		    			$scope.pageForm.conditionValue = "";
						$scope.pageForm.columnName = "all";
						$scope.pageForm.page = 0;
						$scope.getAllCamera($scope.pageForm);
						$scope.getPageProduct();
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.insertButtonClicked = function(){
		$scope.ProductTmp.CATEGORY = $scope.Category;
		$scope.ProductTmp.BRAND = $scope.Brand;
		$scope.ProductTmp.MODEL = $scope.Model;
		console.log($scope.ProductTmp);
		$scope.insertProduct($scope.ProductTmp);
	};
	
	$scope.updateButtonClicked = function(){
		$scope.ProductTmp.CATEGORY = $scope.Category;
		$scope.ProductTmp.BRAND = $scope.Brand;
		$scope.ProductTmp.MODEL = $scope.Model;
		console.log($scope.ProductTmp);
		$scope.updateProduct($scope.ProductTmp);
	};
	
	$scope.addNewButtonClicked = function(){
		$scope.btnModal = true;
		$scope.clearText();
		callModal('#myModal','show');
	};

	$scope.updateButtonClickedTB = function(ind){
		alert("Update Clicked!!!!!");
		$scope.btnModal = false;
		$scope.ProductTmp = angular.copy($scope.Products[ind]);
		$scope.Category = $scope.ProductTmp.CATEGORY;
		$scope.Brand = $scope.ProductTmp.BRAND;
		$scope.Model = $scope.ProductTmp.MODEL;
		console.log($scope.Category);
		console.log($scope.Brand);
		console.log($scope.Model);
		callModal('#myModal','show');
	};

	$scope.deleteButtonClicked = function(id){
		swal({   title: "Are you sure?",   text: "You will not be able to recover this Product!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Delete",   cancelButtonText: "Cancel",   closeOnConfirm: false,   closeOnCancel: false }, 
			function(isConfirm){  
			 	if (isConfirm) {  
			 		$scope.deleteProduct(id);
				} else {     
					swal("Cancelled", "Your record is safe :)", "error");   
				} 
			}
		);
	};

	$scope.getAllProducts = function(page){
		//console.log(page);
		$http({
				url : "http://localhost:9999/api/products/newCamera/all",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:page
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record found"){
		    		swal("Request Data!", response.data.Message, "error");
		    	}else{
		    		$scope.Products = response.data.DATA;
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	$scope.getProductsByPage = function(page){
		$scope.bntClickedIndex = page;
		$scope.pageForm.page = page;
		$http({
			url : "http://localhost:9999/api/products/newCamera/all",
	        method : "POST",
	        headers:{
	        	"accept": "application/json; charset=utf-8"
	        },
	        data:$scope.pageForm
	    }).then(function mySucces(response) {
	    	if(response.data.Message != "Record found"){
	    		swal("Request Data!", response.data.Message, "error");
	    	}else{
	    		$scope.Products = response.data.DATA;
	    	}
	    }, function myError(response) {
	        swal("Error Connection!", "Try to check your network connection", "error");
	    });
	};

	$scope.getPageProduct = function(){
		$http({
				url : "http://localhost:9999/api/products/newCamera/page",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.pageForm
		    }).then(function mySucces(response) {
	    		$scope.numPagination = 0;
	    		$scope.Pagination = [];
	    		$scope.bntClickedIndex = 0;
		    	$scope.generatePagination(response.data);
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	$scope.generatePagination = function (numPage){
		for (var i = 1; i <= numPage; i++) {
			$scope.Pagination[i - 1] = i;
		}
	};
	
	$scope.getProductsByPagePrev = function(){
		if($scope.bntClickedIndex > 0){
			$scope.getProductsByPage($scope.bntClickedIndex - 1);
		}
	};
	
	$scope.getProductsByPageNext = function(){
		if($scope.bntClickedIndex < $scope.Pagination.length - 1){
			$scope.getProductsByPage($scope.bntClickedIndex + 1);
		}
	};

	$scope.searchFilterClicked = function(index){
		$scope.btnFilter = $scope.searchFilters[index];
	};

	$scope.searchCamera = function(){
		$scope.pageForm.conditionValue = $scope.conditionValue;
		$scope.pageForm.columnName = $scope.btnFilter.id;
		$scope.pageForm.page = 0;
		$scope.numPagination = 0;
		$scope.Pagination = [];
		$scope.bntClickedIndex = 0;
		$scope.getAllProducts($scope.pageForm);
		$scope.getPageProduct();
	};

	$scope.clearText = function(){
		$scope.btnModal = true;
		$scope.ProductTmp.AVAILABLE_STOCK = 0;
		$scope.ProductTmp.BRAND = null;
		$scope.ProductTmp.CATEGORY = null;
		$scope.ProductTmp.CODE = null;
		$scope.ProductTmp.CREATED_DATE = 0;
		$scope.ProductTmp.DESCRIPTION = null;
		$scope.ProductTmp.DETAIL = null;
		$scope.ProductTmp.ID = null;
		$scope.ProductTmp.IMG_URL = null;
		$scope.ProductTmp.LOCAL_SHIP_PRICE = 0;
		$scope.ProductTmp.MODEL = null;
		$scope.ProductTmp.NAME = null;
		$scope.ProductTmp.PROVINCE_SHIP_PRICE = 0;
		$scope.ProductTmp.QTY_STOCK = 0;
		$scope.ProductTmp.STATUS = true;
		$scope.ProductTmp.TYPE_ID = 1;
	};
	
	$scope.getAllProducts($scope.pageForm);
	$scope.getPageProduct();
	$scope.getAllBrand();
	$scope.getAllModel();
	$scope.getAllCategory();

	$scope.ProductTmp = {
						  "AVAILABLE_STOCK": 0,
						  "BRAND": null,
						  "CATEGORY": null,
						  "CODE": null,
						  "CREATED_DATE":0,
						  "DESCRIPTION": null,
						  "DETAIL": null,
						  "ID": null,
						  "IMG_URL": null,
						  "LOCAL_SHIP_PRICE": 0,
						  "MODEL": null,
						  "NAME": null,
						  "PROVINCE_SHIP_PRICE": 0,
						  "QTY_STOCK": 0,
						  "STATUS": true,
						  "TYPE_ID": 1,
						  "WARRANTY": 0
						};
	$scope.changeOption = function(object){
		console.log(object);
	};
	
	$scope.viewProductDetail = function(ind){
		$scope.productDetial = angular.copy($scope.Products[ind]);
		callModal('#viewProductDetail','show');
	};
});