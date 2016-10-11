
//var app = angular.module('LoginRegisterApp',['ngCookies']);
app.controller('LoginRegisterController',['$scope','$http','$cookies','$cookieStore','SharedService',function($scope,$http,$cookies,$cookieStore,SharedService){
	
	
	$scope.customer = 	{
					      "customer_id": 0,
					      "customer_last_name": null,
					      "customer_first_name": null,
					      "customer_email": null,
					      "customer_phone": null,
					      "customer_address": null,
					      "customer_password": null,
					      "customer_status": true
					    };
	//	COOKIES
	$scope.setCookiesCustomer = function(){
		// TO SET COOKIES  id,firstName,lastName,phone,email,address
		$cookieStore.put('C0504', $scope.customer);
		// TO GET COKKIES
		$scope.customer = $cookieStore.get('C0504');
		console.log($scope.customer);	
	};
	  //SharedService.apiAddress+
	$scope.insertCustomer = function(){	
		$scope.phone="0"+$scope.phone;
		$http({
				url : SharedService.apiAddress + '/api/user/CustomerFrontEnd',
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.customer
		    }).then(function mySucces(response) {
		    	if(response.data.Message == "")
		    	swal("Request Data!", response.data.Message, "success");
		    	$scope.customer = response.data.DATA;
		    	$scope.setCookiesCustomer();
		    	window.open(SharedService.uiAddress, "_parent");
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
}]);


