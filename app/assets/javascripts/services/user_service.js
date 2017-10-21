angular.module('realtorScheduler')
.service('User', User)

User.$inject = ['$http', '$q'];

function User ($http, $q) {

  var urlBase = '/users'

  return {

    get: function() { 
      var deferred = $q.defer();
      $http.get(urlBase).then(function(response){
         deferred.resolve(response.data);
      })
      .catch(function(response){
        deferred.reject(response);
      });
      return deferred.promise;
  
    },

    check_availability: function(request_params) {
      var deferred = $q.defer();
      $http.get(urlBase + '/avail', {params: request_params}).then(function(response){
         deferred.resolve(response.data);
      })
      .catch(function(response){
        deferred.reject(response);
      });
      return deferred.promise;
    }

  }

}
