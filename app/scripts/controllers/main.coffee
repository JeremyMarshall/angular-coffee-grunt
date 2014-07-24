'use strict'

###*
 # @ngdoc function
 # @name mytodoApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the mytodoApp
###
angular.module('mytodoApp')
  .controller 'MainCtrl', ($scope, localStorageService) ->

    todosInStore = localStorageService.get 'todos'

    $scope.todos = todosInStore && todosInStore.split('\n') || []

    $scope.$watch('todos', ->
      localStorageService.add('todos', $scope.todos.join('\n'))
    , true)

    #$scope.todos = []

    $scope.addTodo = ->
      $scope.todos.push($scope.todo)
      $scope.todo = ""

    $scope.removeTodo = (index) ->
      $scope.todos.splice(index, 1)


