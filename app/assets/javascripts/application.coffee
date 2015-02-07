#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
#= require angular/angular
#= require angular-route/angular-route
#= require angular-rails-templates
#= require_self
#= require_tree .

gallery = angular.module('gallery', [
  'templates',
  'ngRoute',
  'controllers',
])

gallery.config([ '$routeProvider',
  ($routeProvider) ->
    $routeProvider
      .when('/',
        templateUrl: 'pages/index.html'
        controller: 'PagesController'
      ).otherwise(
        redirectTo: '/'
      )
])

controllers = angular.module('controllers', [])