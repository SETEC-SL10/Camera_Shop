

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
	
	

	/*$scope.modelTmp = {

				     "model_id": 0,
				     "model_name": "Nikon",
				     "description": "Nikon Models",
				     "model_camera": false,
				     "model_accessory": true,
				     "model_status": true,
				     "brand_id": 4
				    
				    };

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
	};*/

	
	

});
