'use strict';

/* Controllers */

angular.module('myApp.controllers', ['grails-angular-template']).
  controller('MyCtrl1', [function($scope, templateService){
//        templateService.load('/user/template1').into('section.someSection').withData({txt: "some reasonable data here"}).start();
//        templateService.load('/user/template2').into('nav.someNav').start();
    }])
  .controller('MyCtrl2', [function() {

  }])
    .controller('ContentController', function ($scope, $http) {

        $scope.publicContent = [];
        $scope.restrictedContent = [];

        $scope.publicAction = function() {
            $http.post('data/public', $scope.publicData).success(function(response) {
                $scope.publicContent.push(response);
            });
        }

        $scope.restrictedAction = function() {
            $http.post('data/protected', $scope.restrictedData).success(function(response) {
                // this piece of code will not be executed until user is authenticated
                $scope.restrictedContent.push(response);
            });
        }

        $scope.logout = function() {
            $http.post('auth/logout').success(function() {
                $scope.restrictedContent = [];
            });
        }
    });