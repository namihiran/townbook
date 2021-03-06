<script>
var app = angular.module('townbookApp')

app.controller('eventManagementController', ['$scope', 'eventService', function ($scope, eventService) {
  $scope.events = [];

  $scope.init = function () {
    waitingDialog.show();
    _getEvent();
  }

  $scope.deleteEvent = function(event){
    waitingDialog.show();
    eventService.deleteEvent(event.id);
  }

  $scope.$on('getEventsCompleted', function (event, params) {
    $scope.$apply(function () {
      angular.copy(params, $scope.events);
    });
    waitingDialog.hide();
  });
  
  $scope.$on('deleteEventCompleted', function() {
    $scope.init();
  });

  _getEvent = function() {
	  eventService.getEvents();
  }
  
}]);
</script>