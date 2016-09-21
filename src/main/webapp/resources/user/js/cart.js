/**
*  Module
*
* Description
*/
var cartApp = angular.module('cartApp', []);
cartApp.controller('cartController', function($scope,$http){

	$scope.getCart = function(){
		$http({
				url : "http://localhost:9999/api/front_end/cart/4",
		        method : "GET",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record found"){
		    		swal("Request Data!", response.data.Message, "error");
		    		$scope.Carts = response.data.DATA;
		    	}else{
		    		$scope.Carts = response.data.DATA;
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};	
	
	$scope.addToCart = function(product){
		$http({
				url : "http://localhost:9999/api/front_end/cart",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:{"cart_id": 0, "customer_id": 4, "product": product,"product_qty": 1}
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Success Insert Cart"){
		    		swal("Request Data!", response.data.Message, "success");
		    	}else{
		    		swal("Request Data!", response.data.Message, "success");
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.set_color = function (color) {
		return { color: color.color_code}
	};
	
	$scope.deleteCart = function(ind){
		swal({   title: "Are you sure?",   text: "You want to delete this product!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Delete",   cancelButtonText: "Cancel",   closeOnConfirm: false,   closeOnCancel: false }, 
			function(isConfirm){  
			 	if (isConfirm) {  
					$http({
						method:'DELETE',
						url:'http://localhost:9999/api/front_end/cart/'+$scope.Carts[ind].cart_id,
						}).then(function successCallback(response){
							if(response.data.Message != "Success Delete Cart"){
								swal("Error delete", "Error delete this record!!!!", "error");
							}else{
								swal("Deleted!", "Your record has been deleted.", "success");
								$scope.getCart();

							}
						},function errorCallback(response){
							swal("Error delete", "Error delete this record!!!!", "error");
						}
					);
					//$('#myModal').modal('toggle');   
				} else {     
					swal("Cancelled", "Your record is safe :)", "error");   
				} 
			}
		);
	};
	
	$scope.checkProductType = function(product){
		var result = product.product_id.substring(1, 2) == "O" ? true:false;
		return result;
	};
	
	$scope.changeValueQty = function (cart){
		alert(cart.product_qty);
	};
	
	
	$scope.getCart();
});