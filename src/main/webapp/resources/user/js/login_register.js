
var app = angular.module('LoginRegisterApp',['ngCookies']);
app.controller('LoginRegisterController',['$scope','$http','$cookies','$cookieStore',function($scope,$http,$cookies,$cookieStore){		
	
	//	COOKIES
	$scope.setCookiesCustomer = function(id,firstName,lastName,phone,email,address){
		// TO SET COOKIES
		$cookieStore.put('cID', id);
		$cookieStore.put('cFirstName', firstName);
		$cookieStore.put('cLastName', lastName);
		$cookieStore.put('cPhone', phone);
		$cookieStore.put('cEmail', email);
		$cookieStore.put('cAddress', address);
		
		// TO GET COKKIES
		$scope.cID = $cookieStore.get('cID');
		$scope.cFirstName = $cookieStore.get('cFirstName');
		$scope.cLastName = $cookieStore.get('cLastName');
		$scope.cPhone = $cookieStore.get('cPhone');
		$scope.cEmail = $cookieStore.get('cEmail');
		$scope.cAddress = $cookieStore.get('cAddress');
		
		// TO REMOVE COOKIES
		//$cookieStore.remove('cPassword');	// For example
		
		swal("Set Cookie for Customer successful!",
				"ID: "+$scope.cID+"\n" +
				"FirstName: "+$scope.cFirstName+"\n" +
				"LastName: "+$scope.cLastName+"\n" +
				"Phone: "+$scope.cPhone+"\n" +
				"Email: "+$scope.cEmail+"\n" +
				"Address: "+$scope.cAddress+"\n",
				"success"
		);		
	};
	  
	$scope.insertCustomer = function(){	
		$scope.phone="0"+$scope.phone;
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
		    	
		    	$scope.setCookiesCustomer(response.data.DATA.customer_id,$scope.firstName,$scope.lastName,$scope.phone,$scope.email,$scope.address);
		    	
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
}]);


