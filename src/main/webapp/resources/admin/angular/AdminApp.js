/**
*  Module
*
* Description
*/

function callModal(id,modal){
	$(id).modal(modal);
}

var app = angular.module('productApp', []);
app.controller('appController', function($scope,$rootScope){
	$rootScope.apiAddress = 'http://localhost:9999/';
});
app.factory('SharedService', function() {
	  return {
		  apiAddress : 'http://localhost:9999/'
	  };
});
app.directive('fileModel', ['$parse', function ($parse) {
    return {
       restrict: 'A',
       link: function(scope, element, attrs) {
          var model = $parse(attrs.fileModel);
          var modelSetter = model.assign;
          
          element.bind('change', function(){
             scope.$apply(function(){
                modelSetter(scope, element[0].files[0]);
             });
          });
       }
    };
 }]);