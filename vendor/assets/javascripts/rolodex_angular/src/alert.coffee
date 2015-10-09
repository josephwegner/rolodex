angular.module('rolodex.alert', [])

.controller('AlertController', ['$scope', '$attrs', ($scope, $attrs) ->
  $scope.closeable = 'close' of $attrs
])

.directive 'alert', ->
  restrict: 'EA'
  controller: 'AlertController'
  templateUrl: 'rolodex_angular/template/alert/alert.html'
  transclude: true
  replace: true
  scope:
    type: '@'
    close: '&'
