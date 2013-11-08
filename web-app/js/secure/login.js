(function() {
    'use strict';
    angular.module('login',['http-auth-interceptor'])

        .controller('LoginController', function ($scope, $http, authService) {
            $scope.submit = function() {
                var transform = function(data){ return $.param(data); }
                $http.post('http://localhost:8080/grangular/j_spring_security_check', {j_username : $scope.username, j_password : $scope.password, ajax : true},
                    {headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}, transformRequest: transform}).success(function() {
                    authService.loginConfirmed();
                });
            }
        });
})();