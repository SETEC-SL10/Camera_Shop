
app.controller('BrandController', function($scope,$http,SharedService) {
	$scope.btnModal = false;

	$scope.brandTmp = {

				      "brand_id": 2,
				      "brand_name": "Cannon",
				      "description": "Cannon Brand",
				      "brand_camera": true,
				      "brand_accessory": false,
				      "brand_status": true
				    
				    };

	$scope.getBrands = function(){
		// var res = transaction($http,{url:SharedService.apiAddress + "api/products/Brand",method:"GET",data:null});
		// $scope.Brands = res.data.DATA;
		$http({
				url : SharedService.apiAddress + "api/products/Brand",
		        method : "GET",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Record Found"){
					swal("Error Request Data", response.data.Message, "error");
				}else{
					//swal("Request Data", response.data.Message, "succes");
					$scope.Brands = response.data.DATA;
				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});	
	};

	$scope.getBrands();

	$scope.insertBrands = function(){
		$http({
				url : SharedService.apiAddress + "api/products/Brand",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.brandTmp
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Success Insert Brand"){
					swal("Insert Data", response.data.Message, "error");
				}else{
					swal("Insert Data", response.data.Message, "success");
					$scope.Brands = response.data.DATA;
		//Refresh Data on page
					$scope.getBrands();

				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		$scope.isInset = 'modal';
	};

	$scope.updateBrands = function(){
		$http({
				url : SharedService.apiAddress + "api/products/Brand",
		        method : "PUT",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.brandTmp
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Success Update Brand"){
					swal("Update Data", response.data.Message, "error");
				}else{
					swal("Update Data", response.data.Message, "success");
					$scope.Brands = response.data.DATA;
		//Refresh Data on page
					$scope.getBrands();

				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		$scope.isInset = 'modal';
	};

	$scope.deleteBrands = function(id){
		$http({
				url : SharedService.apiAddress + "api/products/Brand/"+id,
		        method : "DELETE",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message !== "Success delete Brand"){
					swal("Delete Data", response.data.Message, "error");
				}else{
					swal("Delete Data", response.data.Message,"success");
					$scope.Brands = response.data.DATA;
		//Refresh Data on page
					$scope.getBrands();

				}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
		
	};
	$scope.Clear=function(){
		$scope.btnModal = false;
		$scope.brandTmp.brand_id = 0;
		$scope.brandTmp.brand_name = null;
		$scope.brandTmp.description = null;
		$scope.brandTmp.brand_accessory = false;
		$scope.brandTmp.brand_camera = false;
	};

	$scope.updateClicked = function(index){
		$scope.btnModal = true;
		$scope.brandTmp = angular.copy($scope.Brands[index]);
		//console.log(object);
	};

	$scope.deletClicked = function(index){

		$scope.brandTmp = angular.copy($scope.Brands[index]);
		console.log($scope.brandTmp);
		$scope.deleteBrands($scope.brandTmp.brand_id);
		
	};
	$scope.modalShow = function(){
		//alert("OK");
		$scope.btnModal = false;
	};
		//$scope.insertBrands();
 });
