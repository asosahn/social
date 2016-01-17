'use strict';

angular.module('ngSocial.view2', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/view2', {
    templateUrl: 'view2/view2.cfm',
    controller: 'View2Ctrl'
  });
}])

.controller('View2Ctrl', [function() {

}]);