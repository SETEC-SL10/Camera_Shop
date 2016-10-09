
app.controller('productController', function($scope,$http,SharedService){
	
	$scope.layoutProduct = false;
	$scope.layoutSpec = true;
	$scope.layoutImage = true;
	$scope.btnModal = true;
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
						  limit: 2,
						  page: 0
						};

	// this function use for request Brand
	$scope.getAllBrand = function(){
		//alert(SharedService.apiAddress);
		$http({
				url : SharedService.apiAddress + "api/products/Brand/1", //"http://localhost:9999/api/products/Brand/1
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record Found"){
		    		swal("Request Data!", "Can not request Brand!!!!", "error");
		    	}else{
		    		$scope.Brands = response.data.DATA;
		    		if($scope.Brands != null){
		    			$scope.Brand = $scope.Brands[0];
		    		}
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	// this function use for request Model
	$scope.getAllModel = function(){
		$http({
				url : SharedService.apiAddress + "api/products/Model/1",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record Found"){
		    		swal("Request Data!", "Can not request Model!!!!", "error");
		    	}else{
		    		$scope.Models = response.data.DATA;
		    		if($scope.Models != null){
		    			$scope.Model = $scope.Models[0];
		    		}
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	// this function use for request Category
	$scope.getAllCategory = function(){
		$http({
				url : SharedService.apiAddress + "api/products/Category/1",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "Record Found"){
		    		swal("Request Data!", "Can not request Category!!!!", "error");
		    	}else{
		    		$scope.Categorys = response.data.DATA;
		    		if($scope.Categorys != null){
		    			$scope.Category = $scope.Categorys[0];
		    		}
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	// insert product
	$scope.insertProduct = function(product){
		$http({
				url : SharedService.apiAddress + "api/products/newCamera",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:product
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "SUCCESS"){
		    		swal("Error!", "Error Insert Product!!!!", "error");
		    	}else{
		    		swal("SUCCESS!", "Success Insert Product!!!!", "success");
		    		$scope.clearText();
	    			$scope.pageForm.conditionValue = "";
					$scope.pageForm.columnName = "all";
					$scope.pageForm.page = 0;
					$scope.getAllProducts($scope.pageForm);
					$scope.getPageProduct();
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	// update product
	$scope.updateProduct = function(product){
		$http({
				url : SharedService.apiAddress + "api/products/newCamera",
		        method : "PUT",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:product
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "SUCCESS"){
		    		swal("Error!", "Error Update Product!!!!", "error");
		    	}else{
		    		swal("SUCCESS!", "Success Update Product!!!!", "success");
//		    		$scope.clearText();
	    			$scope.pageForm.conditionValue = "";
					$scope.pageForm.columnName = "all";
					$scope.pageForm.page = 0;
					$scope.getAllProducts($scope.pageForm);
					$scope.getPageProduct();
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};

	$scope.deleteProduct = function(id){
		$http({
				url : SharedService.apiAddress + "api/products/newCamera/"+id,
		        method : "DELETE",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "SUCCESS"){
		    		swal("Error!", "Error Delete Product!!!!", "error");
		    	}else{
		    		swal("SUCCESS!", "Success Delete Product!!!!", "success");
	    			$scope.pageForm.conditionValue = "";
					$scope.pageForm.columnName = "all";
					$scope.pageForm.page = 0;
					$scope.getAllProducts($scope.pageForm);
					$scope.getPageProduct();
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.insertButtonClicked = function(){
		$scope.ProductTmp.CATEGORY = $scope.Category;
		$scope.ProductTmp.BRAND = $scope.Brand;
		$scope.ProductTmp.MODEL = $scope.Model;
		console.log($scope.ProductTmp);
		$scope.insertProduct($scope.ProductTmp);
	};
	
	$scope.updateButtonClicked = function(){
		$scope.ProductTmp.CATEGORY = $scope.Category;
		$scope.ProductTmp.BRAND = $scope.Brand;
		$scope.ProductTmp.MODEL = $scope.Model;
		console.log($scope.ProductTmp);
		$scope.updateProduct($scope.ProductTmp);
	};
	
	$scope.addNewButtonClicked = function(){
		$scope.btnModal = true;
		$scope.clearText();
		callModal('#myModal','show');
	};

	$scope.updateButtonClickedTB = function(ind){
		//alert("Update Clicked!!!!!");
		$scope.btnModal = false;
		$scope.ProductTmp = angular.copy($scope.Products[ind]);
		$scope.Category = $scope.ProductTmp.CATEGORY;
		$scope.Brand = $scope.ProductTmp.BRAND;
		$scope.Model = $scope.ProductTmp.MODEL;
		console.log($scope.Category);
		console.log($scope.Brand);
		console.log($scope.Model);
		callModal('#myModal','show');
	};

	$scope.deleteButtonClicked = function(id){
		swal({   title: "Are you sure?",   text: "You will not be able to recover this Product!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Delete",   cancelButtonText: "Cancel",   closeOnConfirm: false,   closeOnCancel: false }, 
			function(isConfirm){  
			 	if (isConfirm) {  
			 		$scope.deleteProduct(id);
				} else {     
					swal("Cancelled", "Your record is safe :)", "error");   
				} 
			}
		);
	};

	$scope.getAllProducts = function(page){
		//console.log(page);
		$http({
				url : SharedService.apiAddress +  "api/products/newCamera/all",
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
			url : SharedService.apiAddress + "api/products/newCamera/all",
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
				url : SharedService.apiAddress + "api/products/newCamera/page",
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

	$scope.clearText = function(){
//		$scope.btnModal = true;
		$scope.ProductTmp.AVAILABLE_STOCK = 0;
		$scope.ProductTmp.BRAND = null;
		$scope.ProductTmp.CATEGORY = null;
		$scope.ProductTmp.CODE = null;
		$scope.ProductTmp.CREATED_DATE = 0;
		$scope.ProductTmp.DESCRIPTION = null;
		$scope.ProductTmp.DETAIL = null;
		$scope.ProductTmp.ID = null;
		$scope.ProductTmp.IMG_URL = null;
		$scope.ProductTmp.LOCAL_SHIP_PRICE = 0;
		$scope.ProductTmp.MODEL = null;
		$scope.ProductTmp.NAME = null;
		$scope.ProductTmp.PROVINCE_SHIP_PRICE = 0;
		$scope.ProductTmp.QTY_STOCK = 0;
		$scope.ProductTmp.STATUS = true;
		$scope.ProductTmp.TYPE_ID = 1;
	};
	
	$scope.getAllProducts($scope.pageForm);
	$scope.getPageProduct();
	$scope.getAllBrand();
	$scope.getAllModel();
	$scope.getAllCategory();

	$scope.ProductTmp = {
						  "AVAILABLE_STOCK": 0,
						  "BRAND": null,
						  "CATEGORY": null,
						  "CODE": null,
						  "CREATED_DATE":0,
						  "DESCRIPTION": null,
						  "DETAIL": null,
						  "ID": null,
						  "IMG_URL": null,
						  "LOCAL_SHIP_PRICE": 0,
						  "MODEL": null,
						  "NAME": null,
						  "PROVINCE_SHIP_PRICE": 0,
						  "QTY_STOCK": 0,
						  "STATUS": true,
						  "TYPE_ID": 1,
						  "WARRANTY": 0
						};
	$scope.changeOption = function(object){
		console.log(object);
	};
	
	$scope.viewProductDetail = function(ind){
		$scope.productDetial = angular.copy($scope.Products[ind]);
		callModal('#viewProductDetail','show');
	};
	
	$scope.addSpecClicked = function(id){
		$scope.SpecProID = id;
		$scope.getAllSpecs();
		$scope.layoutProduct = true;
		$scope.layoutSpec = false;
	};
	
	$scope.ImageTmp = {
	        "ID": -1,
	        "PRO_TMP": null,
	        "COLOR": null,
	        "IMG_URL": null,
	        "STATUS": true
	      };
	$scope.addImageClicked = function(pro){
		//console.log(pro);
		$scope.ImageTmp.PRO_TMP = pro;
		$scope.getAllImages();
		$scope.layoutProduct = true;
		$scope.layoutImage = false;
	};
	
	$scope.backSpecClicked = function(){
		$scope.layoutProduct = false;
		$scope.layoutSpec = true;
	};
	
	$scope.backImageClicked = function(){
		$scope.layoutProduct = false;
		$scope.layoutImage = true;
	};
	
	/*
	 * Spec implement
	 *  
	 *  */
	
	$scope.SpecTmp = {
						"product_id": null,
						"specification_id": 1,
						"specification_name": null,
						"description": null,
						"status": true
					};
	
	$scope.getAllSpecs = function(){
		$http({
				url : SharedService.apiAddress +  "api/products/pro_d/Specification/"+$scope.SpecProID,
		        method : "GET",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
//		    	if(response.data.Message != "Record Found"){
//		    		swal("Request Data!", "Can not request Spec!!!!", "error");
//		    	}else{
//		    		$scope.Specs = response.data.DATA;
//		    		if($scope.Models != null){
//		    			$scope.Model = $scope.Models[0];
//		    		}
//		    	}
		    	$scope.Specs = response.data.DATA;
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	// insert Spec
	$scope.insertSpec0 = function(spec){
		$http({
				url : SharedService.apiAddress +  "api/products/Specification",
		        method : "POST",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        },
		        data:spec
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "SUCCESS"){
		    		swal("Error!", "Error Insert Spec!!!!", "error");
		    	}else{
		    		swal("SUCCESS!", "Success Insert Spec!!!!", "success");
		    		$scope.clearTextSpec();
		    		$scope.getAllSpecs();
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	// update Spec
	$scope.updateSpec0 = function(spec){
		$http({
			url : SharedService.apiAddress + "api/products/Specification",
	        method : "PUT",
	        headers:{
	        	"accept": "application/json; charset=utf-8"
	        },
	        data:spec
	    }).then(function mySucces(response) {
	    	if(response.data.Message != "SUCCESS"){
	    		swal("Error!", "Error Update Spec!!!!", "error");
	    	}else{
	    		swal("SUCCESS!", "Success Update Spec!!!!", "success");
//	    		$scope.clearTextSpec();
	    		$scope.getAllSpecs();
	    	}
	    }, function myError(response) {
	        swal("Error Connection!", "Try to check your network connection", "error");
	});
	};
	// delet Spec
	$scope.deleteSpec0 = function(id){
		$http({
				url : SharedService.apiAddress + "api/products/Specification/"+id,
		        method : "DELETE",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "SUCCESS"){
		    		swal("Error!", "Error Delete Spec!!!!", "error");
		    	}else{
		    		swal("SUCCESS!", "Success Delete Spec!!!!", "success");
		    		$scope.getAllSpecs();
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.insertSpec1 = function(){
		$scope.SpecTmp.product_id = $scope.SpecProID;
		$scope.insertSpec0($scope.SpecTmp);
	};
	
	$scope.updateSpec1 = function(){
		$scope.updateSpec0($scope.SpecTmp);
	};
	
	$scope.deleteSpec1 = function(id){
		swal({   title: "Are you sure?",   text: "You will not be able to recover this Spec!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Delete",   cancelButtonText: "Cancel",   closeOnConfirm: false,   closeOnCancel: false }, 
			function(isConfirm){  
			 	if (isConfirm) {  
			 		$scope.deleteSpec0(id);
				} else {     
					swal("Cancelled", "Your record is safe :)", "error");   
				} 
			}
		);
	};
	
	$scope.clearTextSpec = function(){
//		$scope.SpecTmp.product_id = -1 ;
		$scope.SpecTmp.specification_id = -1 ;
		$scope.SpecTmp.specification_name = null ;
		$scope.SpecTmp.description = null ;
		
	};
	
	$scope.addNewSpecButtonClicked = function(){
		$scope.btnModal = true;
		$scope.clearTextSpec();
		callModal('#insert-edit-camera-spec','show');
	};
	
	$scope.updateSpecButtonClickedTB = function(ind){
		//alert("Update Clicked!!!!!");
		$scope.btnModal = false;
		$scope.SpecTmp = angular.copy($scope.Specs[ind]);
		callModal('#insert-edit-camera-spec','show');
	};
	
	
	/*
	 * Image implement
	 *  
	 *  */
	
	$scope.ImageTmp = {
				        "ID": -1,
				        "PRO_TMP": null,
				        "COLOR": null,
				        "IMG_URL": null,
				        "STATUS": true
				      };
	
	$scope.getAllImages = function(){
		$http({
				url : SharedService.apiAddress + "api/products/newCamera/newCameraImage/Camera/"+$scope.ImageTmp.PRO_TMP.ID,
		        method : "GET",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	$scope.Images = response.data.DATA;
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	// insert Image
	$scope.insertImage0 = function(image){
		
		//$scope.insertImage0({"ID": -1,"PRO_ID": $scope.ImageTmp.PRO_TMP.ID,"COLOR": $scope.ImageTmp.COLOR,"IMG_URL": null,"STATUS": true});
		var fd = new FormData();
		fd.append('file', $scope.selectedFile);
		fd.append('PRO_ID', image.PRO_ID);
		fd.append('COLOR_ID', image.COLOR.color_id);
		//console.log(angular.toJson(image));
		$http.post(SharedService.apiAddress + 'api/products/newCamera/newCameraImage', fd, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined }
        }).success(function(datas, status, headers, config) {
	    	if(datas.Message != "SUCCESS"){
	    		swal("Error!", "Error Insert Image!!!!", "error");
	    	}else{
	    		swal("SUCCESS!", "Success Insert Image!!!!", "success");
	    		$scope.getAllImages();
	    		$("#fileselected").val("");
	    	}
		}).
		error(function(datas, status, headers, config) {
			swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	// update Image
	$scope.updateImage0 = function(image){
		var fd = new FormData();
		fd.append('file', $scope.selectedFile);
		fd.append('data', angular.toJson(image));
		$http.put(SharedService.apiAddress + 'api/products/newCamera/newCameraImage', fd, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined }
        }).success(function(datas, status, headers, config) {
	    	if(datas.Message != "SUCCESS"){
	    		swal("Error!", "Error Update Image!!!!", "error");
	    	}else{
	    		swal("SUCCESS!", "Success Update Image!!!!", "success");
	    		$scope.getAllImages();
	    	}
		}).
		error(function(datas, status, headers, config) {
			swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	// delet Image
	$scope.deleteImage0 = function(id){
		$http({
				url : SharedService.apiAddress + "api/products/newCamera/newCameraImage/"+id,
		        method : "DELETE",
		        headers:{
		        	"accept": "application/json; charset=utf-8"
		        }
		    }).then(function mySucces(response) {
		    	if(response.data.Message != "SUCCESS"){
		    		swal("Error!", "Error Delete Image!!!!", "error");
		    	}else{
		    		swal("SUCCESS!", "Success Delete Image!!!!", "success");
		    		$scope.getAllSpecs();
		    	}
		    }, function myError(response) {
		        swal("Error Connection!", "Try to check your network connection", "error");
		});
	};
	
	$scope.insertImage1 = function(){
		//console.log($scope.ImageTmp.PRO_TMP.ID);
		$scope.insertImage0({"ID": -1,"PRO_ID": $scope.ImageTmp.PRO_TMP.ID,"COLOR": $scope.ImageTmp.COLOR,"IMG_URL": null,"STATUS": true});
	};
	
	$scope.updateImage1 = function(){
		$scope.updateImage0({"ID": -1,"PRO_ID": $scope.ImageTmp.PRO_TMP.ID,"COLOR": $scope.ImageTmp.PRO_TMP.COLOR,"IMG_URL": null,"STATUS": true});
	};
	
	$scope.deleteImage1 = function(id){
		swal({   title: "Are you sure?",   text: "You will not be able to recover this Image!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Delete",   cancelButtonText: "Cancel",   closeOnConfirm: false,   closeOnCancel: false }, 
			function(isConfirm){  
			 	if (isConfirm) {  
			 		$scope.deleteImage0(id);
				} else {     
					swal("Cancelled", "Your record is safe :)", "error");   
				} 
			}
		);
	};
	
	$scope.clearTextImage = function(){
		$("#fileselected").val("");
	};
	
	$scope.addNewImageButtonClicked = function(){
		$scope.btnModal = true;
		$scope.clearTextImage();
		callModal('#insert-edit-camera-image','show');
	};
	
/*	$scope.ImageTmp = {
	        "ID": -1,
	        "PRO_TMP": null,
	        "COLOR": null,
	        "IMG_URL": null,
	        "STATUS": true
	      };*/
	$scope.updateImageButtonClickedTB = function(ind){
		//alert("Update Clicked!!!!!");
		$scope.btnModal = false;
		$scope.ImageTmp.ID = $scope.Images[ind].ID;
		$scope.ImageTmp.COLOR = $scope.Images[ind].COLOR;
		$scope.SpecTmp = angular.copy($scope.Specs[ind]);
		callModal('#insert-edit-camera-spec','show');
	};
	
	$scope.getAllColor = function(){
		$http({
				url : SharedService.apiAddress + "api/products/Color",
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
});

/*app.directive('ckEditor', function() {
    return {
        restrict: 'A', // only activate on element attribute
        scope: false,
        require: 'ngModel',
        controller: function($scope, $element, $attrs) {}, //open for now
        link: function($scope, element, attr, ngModel, ngModelCtrl) {
            if(!ngModel) return; // do nothing if no ng-model you might want to remove this
            element.bind('click', function(){
                for(var name in CKEDITOR.instances)
                    CKEDITOR.instances[name].destroy();
                var ck = CKEDITOR.replace(element[0]);
                ck.on('instanceReady', function() {
                    ck.setData(ngModel.$viewValue);
                });
                ck.on('pasteState', function() {
                    $scope.$apply(function() {
                        ngModel.$setViewValue(ck.getData());
                    });
                });
                ngModel.$render = function(value) {
                    ck.setData(ngModel.$viewValue);
                };
            });
        }
    }
});*/