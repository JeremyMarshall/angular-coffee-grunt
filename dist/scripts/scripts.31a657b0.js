(function(){"use strict";angular.module("mytodoApp",["ngAnimate","ngCookies","ngResource","ngRoute","ngSanitize","ngTouch","ui.sortable"]).config(["$routeProvider",function(a){return a.when("/",{templateUrl:"views/main.html",controller:"MainCtrl"}).when("/about",{templateUrl:"views/about.html",controller:"AboutCtrl"}).otherwise({redirectTo:"/"})}])}).call(this),function(){"use strict";angular.module("mytodoApp").controller("MainCtrl",["$scope",function(a){return a.todos=[],a.addTodo=function(){return a.todos.push(a.todo),a.todo=""},a.removeTodo=function(b){return a.todos.splice(b,1)}}])}.call(this),function(){"use strict";angular.module("mytodoApp").controller("AboutCtrl",["$scope",function(a){return a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"]}])}.call(this);