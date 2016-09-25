
var app = angular.module('LoginRegisterApp', []);
app.controller('LoginRegisterController', function($scope,$http,$window){
	/*$scope.customerTmp = {
			"customer_id": 0,
		    "customer_first_name": null,
			"customer_last_name": null,
			"customer_phone": null,
			"customer_email": null,
			"customer_address": null,
			"customer_password": null,
			"customer_status": true
			};*/


	
	
	
	$scope.insertCustomer = function(){
		$http({
				url : "http://localhost:9999/api/user/CustomerFrontEnd",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:{
						"customer_id": 0,
					    "customer_first_name": $scope.firstName,
						"customer_last_name": $scope.lastName,
						"customer_phone": $scope.phone,
						"customer_email": $scope.email,
						"customer_address": $scope.address,
						"customer_password": $scope.password,
						"customer_status": true
					}
		    }).then(function mySucces(response) {
		    	swal("Request Data!", response.data.Message, "success");
		    	$scope.firstName="";
		    	$scope.lastName="";
		    	$scope.phone="";
		    	$scope.email="";
		    	$scope.address="";
		    	$scope.password="";
		    	$scope.Confirmpassword="";
		    	
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};


	
});


