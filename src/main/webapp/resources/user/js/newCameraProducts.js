/**
*  Module
*
* Description
*/
var app = angular.module('ProductApp', []);

app.controller('ProductController', function($scope,$rootScope,$http,$window){
	/*$rootScope.productID = $window.productID;
	$rootScope.colorID = $window.colorID;
	$rootScope.serial = $window.serial;
	
	alert("This Message is for Test Detail Page only!!\nPlease Click on product for Test!\n\n\n" +
			""+"ProductID: "+$rootScope.productID+"\nColorID: "+$rootScope.colorID+"\nSerial: "+$rootScope.serial);*/
	
	// So if you want to use ProductID in your angular function just get one of them. Ex: $rootScope.productID
	
	
	
	$scope.searchFilters = [
							{ id : "name", value : "Product Name"},
							{ id : "category", value : "Category Name"},
							{ id : "brand", value : "Brand Name"},
							{ id : "model", value : "Model Name"}
							];
	$scope.btnFilter = $scope.searchFilters[0];
	$scope.conditionValue = "";
	$scope.numPagination = 0;
	$scope.Pagination = [];
	$scope.bntClickedIndex = 0;
	
	$scope.pageForm = {
						  "columnName": "all",
						  "conditionValue": "",
						  "limit": 12,
						  "page": 0
						};

	$scope.AdvandceSearch = [{id:"all",name:"All",value:""},
							{id:"name",name:"Product Name",value:""},
							{id:"category",name:"Category",value:""},
							{id:"brand",name:"Brand",value:""},
							{id:"model",name:"Model",value:""}
							];

	$scope.getAllProduct = function(){
		$http({
				url : "http://localhost:9999/api/products/product-form/newCameraForm",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.pageForm
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record found"){
		    		swal("Request Data!", response.data.Message, "error");
//		    		$scope.Products = response.data.DATA;
		    	}else{
		    		$scope.Products = response.data.DATA;
		    		$scope.getPageProduct();
		    		/*console.log("check Product here");
		    		console.log($scope.Products);*/
		    		
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.getAllProductFilter = function(colunm,name){
		if(colunm == "color"){
			$("input:radio[name='radio']").each(function(i){
				this.checked=false;
			});
		}
		
		
		$scope.pageForm.columnName = colunm;
		$scope.pageForm.conditionValue = name;
		$scope.pageForm.page = 0;
		$http({
				url : "http://localhost:9999/api/products/product-form/newCameraForm",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.pageForm
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record found"){
		    		swal("Request Data!", response.data.Message, "error");
		    		$scope.Products = response.data.DATA;
		    		$scope.getPageProduct();
		    	}else{
		    		$scope.Products = response.data.DATA;
		    		$scope.getPageProduct();
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	$scope.getAllCategory = function(){
		$http({
				url : "http://localhost:9999/api/products/Category/1",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record Found"){
		    		swal("Request Data!", "Can not request Categorys!!!!", "error");
		    	}else{
		    		$scope.Categorys = response.data.DATA;
		 			console.log($scope.Categorys);
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	$scope.getAllBrand = function(){
		$http({
				url : "http://localhost:9999/api/products/Brand/1",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record Found"){
		    		swal("Request Data!", "Can not request Brands!!!!", "error");
		    	}else{
		    		$scope.Brands = response.data.DATA;
		 			console.log($scope.Brands);
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	$scope.getAllModel = function(){
		$http({
				url : "http://localhost:9999/api/products/Model/1",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record Found"){
		    		swal("Request Data!", "Can not request Models!!!!", "error");
		    	}else{
		    		$scope.Models = response.data.DATA;
		 			console.log($scope.Models);
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	$scope.getAllColor = function(){
		$http({
				url : "http://localhost:9999/api/products/Color",
		        method : "GET",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record Found"){
		    		swal("Request Data!", "Can not request Colors!!!!", "error");
		    	}else{
		    		$scope.Colors = response.data.DATA;
//		 			console.log($scope.Colors);
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	$scope.getPageProduct = function(){
		$http({
				url : "http://localhost:9999/api/products/product-form/newCameraForm/page",
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
//		    	console.log(response.data);
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.addToWishlist = function(index){
		$http({
				url : "http://localhost:9999/api/front_end/wishlist",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:{"wishlist_id": 0, "customer_id": 4, "product": $scope.Products[index]}
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Success Insert Wishlist"){
		    		swal("Request Data!", response.data.Message, "error");
		    	}else{
//		    		swal("Request Data!", response.data.Message, "success");
		    		window.open('http://localhost:8888/wishlist', "_parent");//location.href = "http://localhost:8888/wishlist";
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.addToCart = function(index){
//		console.log();
		$http({
				url : "http://localhost:9999/api/front_end/cart",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:{"cart_id": 0, "customer_id": 4, "product": $scope.Products[index],"product_qty": 1}
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Success Insert Cart"){
		    		swal("Request Data!", response.data.Message, "success");
		    	}else{
//		    		swal("Request Data!", response.data.Message, "success");
		    		window.open('http://localhost:8888/cart', "_parent");
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.set_color = function (color) {
		return { background: color.color_code}
	};
	
	$scope.generatePagination = function (numPage){
		for (var i = 1; i <= numPage; i++) {
			$scope.Pagination[i - 1] = i;
		}
	};

	$scope.getProductsByPage = function(page){
		$scope.bntClickedIndex = page;
		$scope.pageForm.page = page;
		$http({
			url : "http://localhost:9999/api/products/product-form/newCameraForm",
	        method : "POST",
	        headers:{
	        	"accept": "application/json; charset=utf-8"
	        },
	        data:$scope.pageForm
	    }).then(function mySucces(response) {
	    	if(response.data.Message != "Record found"){
	    		swal("Request Data!", response.data.Message, "error");
//	    		$scope.Products = response.data.DATA;
	    	}else{
	    		$scope.Products = response.data.DATA;
//	    		$scope.getPageProduct();
	    	}
	    }, function myError(response) {
	        swal("Error Connection!", "Try to check your network connection", "error");
	    });
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
	
	$scope.searchProduct = function(){
		$scope.pageForm.conditionValue = $scope.conditionValue;
		$scope.pageForm.columnName = $scope.btnFilter.id;
		$scope.pageForm.page = 0;
		$http({
			url : "http://localhost:9999/api/products/product-form/newCameraForm",
	        method : "POST",
	        headers:{
	        	"accept": "application/json; charset=utf-8"
	        },
	        data:$scope.pageForm
	    }).then(function mySucces(response) {
	    	if(response.data.Message != "Record found"){
	    		swal("Request Data!", response.data.Message, "error");
	    		$scope.Products = response.data.DATA;
	    		$scope.getPageProduct();
	    	}else{
	    		$scope.Products = response.data.DATA;
	    		$scope.getPageProduct();
	    	}
	    }, function myError(response) {
	        swal("Error Connection!", "Try to check your network connection", "error");
	    });
	}
	$scope.getAllProduct();
	$scope.getPageProduct();
	$scope.getAllCategory();
	$scope.getAllBrand();
	$scope.getAllModel();
	$scope.getAllColor();
	
});

app.filter('strLimit', ['$filter', function($filter) {
	   return function(input, limit) {
	     if (! input) return;
	     if (input.length <= limit) {
	          return input;
	      }
	    
	      return $filter('limitTo')(input, limit) + '...';
	   };
	}]);