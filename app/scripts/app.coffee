'use strict'

###*
 # @ngdoc overview
 # @name mytodoApp
 # @description
 # # mytodoApp
 #
 # Main module of the application.
###
angular
  .module('mytodoApp', [
    'ngAnimate'
    'ngCookies'
    'ngResource'
    'ngRoute'
    'ngSanitize'
    'ngTouch'
    'ui.sortable'
    'LocalStorageModule'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'

  .config([
      'localStorageServiceProvider'
      (localStorageServiceProvider) ->
        localStorageServiceProvider.setPrefix 'ls'
  ])

