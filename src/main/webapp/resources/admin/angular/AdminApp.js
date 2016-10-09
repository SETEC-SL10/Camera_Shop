/**
*  Module
*
* Description
*/

function callModal(id,modal){
	$(id).modal(modal);
}

var app = angular.module('admin-App', []);
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