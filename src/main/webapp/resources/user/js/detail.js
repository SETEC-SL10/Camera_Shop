/**
* DetailApp Module
*
* Description
*/
var app = angular.module('DetailApp', ['ngCookies']);
app.controller('DetailController', function($scope,$http,$window,$cookies,$cookieStore){
	$scope.productTmp = {
						  "product_id": $window.productID,
						  "product_name": null,
						  "color": {
						    "color_id": $window.colorID,
						    "color_name": null,
						    "description": null,
						    "color_status": false,
						    "color_code": null
						  },
						  "serial": $window.serial,
						  "qty": 0,
						  "sell_price": 0,
						  "category": null,
						  // {
						  //   "category_id": 1,
						  //   "category_name": "Digital",
						  //   "description": "Camera digital",
						  //   "type_id": 0,
						  //   "category_camera": false,
						  //   "category_accessory": false,
						  //   "status": true
						  // },
						  "brand": null,
						  // {
						  //   "brand_id": 1,
						  //   "brand_name": "Cannon",
						  //   "description": "Cannon Brand",
						  //   "brand_camera": true,
						  //   "brand_accessory": true,
						  //   "brand_status": true
						  // },
						  "model": null,
						  // {
						  //   "model_id": 1,
						  //   "model_name": "Bag",
						  //   "description": "camera bag",
						  //   "model_camera": true,
						  //   "model_accessory": true,
						  //   "model_status": true,
						  //   "brand_id": 1
						  // },
						  "description": null,
						  "detail": null,
						  "status": true,
						  "images": null,
						  // [
						  //   {
						  //     "image_id": 3,
						  //     "product_id": "AO4",
						  //     "color_id": 1,
						  //     "serial": "fslfjeijs ljsfiejwfa",
						  //     "image_url": "product_image/new_accessory/Products10994-223x190-661548277.jpg",
						  //     "status": true
						  //   }
						  // ]
						};


	$scope.getProductDetail = function(){
		$http({
				url : "http://localhost:9999/api/products/product-form/ProductFormDetail",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.productTmp
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record found"){
		    		swal("Request Data!", "Can not request Products!!!!", "error");
		    	}else{
		    		$scope.ProductDetails = response.data.DATA;
		    		$scope.ProductDetailsTmp = $scope.ProductDetails[0];
		    		console.log("detail");
		    		console.log($scope.ProductDetails);
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.getProductRelated = function(){
		$http({
				url : "http://localhost:9999/api/products/product-form/ProductFormRelated",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:$scope.productTmp
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record found"){
//		    		swal("Request Data!", "Can not request ProductRelated!!!!", "error");
		    		$scope.ProductRelateds = response.data.DATA;
//		    		alert($scope.ProductRelateds);
//		    		console.log($scope.ProductRelateds);
		    	}else{
		    		$scope.ProductRelateds = response.data.DATA;
		    		console.log($scope.ProductRelateds);
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.setBackground = function (color) {
		return { background: color.color_code}
	};
	
	$scope.setColor = function (color) {
		return { color: color.color_code}
	};
	
	$scope.ChangeColor = function (index) {
		$scope.ProductDetailsTmp = $scope.ProductDetails[index];
	};
	
	$scope.$on('ngRepeatFinished', function(ngRepeatFinishedEvent) {
		myjQuery('#etalage').etalage({
			thumb_image_width: 300,
			thumb_image_height: 300,
			source_image_width: 900,
			source_image_height: 1200,
			show_hint: true,
			click_callback: function(image_anchor, instance_id){
					alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
				}
		});
	});
	
	$scope.addToWishlist = function(){
		$scope.getCustomer();
		$http({
				url : "http://localhost:9999/api/front_end/wishlist",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:{"wishlist_id": 0, "customer_id": $scope.customer.customer_id, "product": $scope.ProductDetailsTmp.product}
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
	
	$scope.addToCart = function(){
//		console.log();
		$scope.getCustomer();
		$http({
				url : "http://localhost:9999/api/front_end/cart",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:{"cart_id": 0, "customer_id": $scope.customer.customer_id, "product": $scope.ProductDetailsTmp.product,"product_qty": 1}
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
	
	$scope.addProductRelatedToWishlist = function(index){
		$scope.getCustomer();
		$http({
				url : "http://localhost:9999/api/front_end/wishlist",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:{"wishlist_id": 0, "customer_id": $scope.customer.customer_id, "product": $scope.ProductRelateds[index]}
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
	
	$scope.addProductRelatedToToCart = function(index){
//		console.log();
		$scope.getCustomer();
		$http({
				url : "http://localhost:9999/api/front_end/cart",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:{"cart_id": 0, "customer_id": $scope.customer.customer_id, "product": $scope.ProductRelateds[index],"product_qty": 1}
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
	
	$scope.getCustomer = function(){
		$scope.customer = $cookieStore.get('C0504');
		if( $scope.customer == null){
			window.open('http://localhost:8888/login', "_parent");
		}
	};

	$scope.getProductDetail();
	$scope.getProductRelated();
	
});

app.directive('onFinishRender', function ($timeout) {
    return {
        restrict: 'A',
        link: function (scope, element, attr) {
            if (scope.$last === true) {
                $timeout(function () {
                    scope.$emit(attr.onFinishRender);
                });
            }
        }
    }
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