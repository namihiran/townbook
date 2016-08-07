<script>
var app = angular.module('townbookApp')

app.controller('eventMgmtController', ['$scope', 'eventService', function ($scope, eventService) {
    
  $scope.events = [];

  $scope.init = function () {
    eventService.getEvents();
  }

  $scope.$on('getEventsCompleted', function (event, params) {
    $scope.$apply(function () {
      angular.copy(params, $scope.events);
    });
  });

}]);
</script>