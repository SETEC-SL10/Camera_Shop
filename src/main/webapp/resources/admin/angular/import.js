

app.controller('importController', function($scope,$http,SharedService) {

	$scope.showImportList = true;
	$scope.showImportNewProduct = false;
	$scope.showSelectProduct = false;
	
	$scope.showImportPro = function(){
		$scope.showImportList = false;
		$scope.showImportNewProduct = true;
		$scope.showSelectProduct = false;
	};
	
	$scope.showImportTempList = function(){
		$scope.showImportList = true;
		$scope.showImportNewProduct = false;
		$scope.showSelectProduct = false;
	};
	
	$scope.showGetPro = function(){
		$scope.showImportList = false;
		$scope.showImportNewProduct = false;
		$scope.showSelectProduct = true;
	};
	
	$scope.getAllColor = function(){
		$http({
				url : SharedService.apiAddress + "/api/products/Color",
		        method : "GET",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record Found"){
		    		swal("Request Data!", "Can not request Colors!!!!", "error");
		    	}else{
		    		$scope.Colors = response.data.DATA;
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.getAllColor();
	
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
						  limit: 20,
						  page: 0
						};

	$scope.getAllProducts = function(page){
		//console.log(page);
		$http({
				url : SharedService.apiAddress +  "/api/products/oldCamera/all",
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
			url : SharedService.apiAddress + "/api/products/oldCamera/all",
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
				url : SharedService.apiAddress + "/api/products/oldCamera/page",
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
	
	$scope.getAllProducts($scope.pageForm);
	$scope.getPageProduct();
});
