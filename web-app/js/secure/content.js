(function() {
    'use strict';
    angular.module('content', [])

        .controller('ContentController', function ($scope, $http) {

            $scope.publicContent = [];
            $scope.restrictedContent = [];

            $scope.publicAction = function() {
                $http.post('http://localhost:8080/grangular/data/publicData', { data : $scope.publicData}).success(function(response) {
                    $scope.publicContent.push(response);
                });
            }

            $scope.restrictedAction = function() {
                $http.post('http://localhost:8080/grangular/data/protectedData', {data : $scope.restrictedData }).success(function(response) {
                    // this piece of code will not be executed until user is authenticated
                    $scope.restrictedContent.push(response);
                });
            }

            $scope.logout = function() {
                $http.post('http://localhost:8080/grangular/j_spring_security_logout').success(function() {
                    $scope.restrictedContent = [];
                });
            }
        });
})();