'use strict';

angular.module('ngSocial.view1', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/view1', {
    templateUrl: 'view1/view1.cfm',
    controller: 'View1Ctrl'
  });
}])

.controller('View1Ctrl', [function() {

}]);