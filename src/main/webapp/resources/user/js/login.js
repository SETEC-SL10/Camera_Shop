
var app = angular.module('LoginRegisterApp',['ngCookies']);
app.controller('LoginRegisterController',['$scope','$http','$cookies','$cookieStore',function($scope,$http,$cookies,$cookieStore){
	
	
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
		
		/*$cookieStore.put('cID', id);
		$cookieStore.put('cFirstName', firstName);
		$cookieStore.put('cLastName', lastName);
		$cookieStore.put('cPhone', phone);
		$cookieStore.put('cEmail', email);
		$cookieStore.put('cAddress', address);*/
		
		// TO GET COKKIES
		$scope.customer = $cookieStore.get('C0504');
		//console.log($scope.customer);
		/*$scope.cID = $cookieStore.get('cID');
		$scope.cFirstName = $cookieStore.get('cFirstName');
		$scope.cLastName = $cookieStore.get('cLastName');
		$scope.cPhone = $cookieStore.get('cPhone');
		$scope.cEmail = $cookieStore.get('cEmail');
		$scope.cAddress = $cookieStore.get('cAddress');*/
		
		// TO REMOVE COOKIES
		//$cookieStore.remove('cPassword');	// For example
		/*
		swal("Set Cookie for Customer successful!",
				"ID: "+$scope.cID+"\n" +
				"FirstName: "+$scope.cFirstName+"\n" +
				"LastName: "+$scope.cLastName+"\n" +
				"Phone: "+$scope.cPhone+"\n" +
				"Email: "+$scope.cEmail+"\n" +
				"Address: "+$scope.cAddress+"\n",
				"success"
		);*/		
	};
	  
	$scope.loginCustomer = function(){
		$http({
				url : "http://localhost:9999/api/user/CustomerFrontEnd/login",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.customer
		    }).then(function mySucces(response) {
		    	if(response.data.Message == "Success Login"){
			    	$scope.customer = response.data.DATA;
			    	$scope.setCookiesCustomer();
//			    	alert($scope.customer.customer_last_name);
			    	window.open('http://localhost:8888', "_parent");
		    	}else{
		    		swal("Login fail!", "Invalid Email or Password!!!", "error");
		    	}
		    	
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
}]);


