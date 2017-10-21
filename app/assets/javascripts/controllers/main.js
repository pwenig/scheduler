angular.module('realtorScheduler')
.controller('MainCtrl', MainCtrl);

MainCtrl.$inject = ['$scope', 'User'];

function MainCtrl ($scope, User) {

  console.log('HERE!!!!')

  User.get().then(function(data) {
    
    $scope.users = data;

  });

  $scope.send = function() {
    request_params = {
      customer: $scope.customer,
      customer_email: $scope.customer_email,
      agent: $scope.selected_agent.name,
      date: $scope.req_date
    }
    User.check_availability(request_params).then(function(result) {

      $scope.result = result;
      console.log('MADEIT', result)
      $scope.customer = null;
      $scope.customer_email = null;
      $scope.selected_agent = null;
      $scope.req_date = null;
    })
  }

}