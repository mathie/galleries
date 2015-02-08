#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
#= require angular/angular
#= require angular-route/angular-route
#= require angular-resource/angular-resource
#= require angular-rails-templates
#= require_self
#= require_tree .

galleries = angular.module('galleries', [
  'templates',
  'ngRoute',
  'ngResource',
  'controllers',
])

galleries.config([ '$routeProvider',
  ($routeProvider) ->
    $routeProvider
      .when('/',
        templateUrl: 'pages/index.html'
        controller: 'PagesController'
      ).when('/galleries',
        templateUrl: 'galleries/index.html'
        controller: 'GalleriesController'
      ).when('/galleries/:galleryId',
        templateUrl: 'galleries/show.html'
        controller: 'GalleryController'
      ).when('/images/:galleryId',
        templateUrl: 'images/show.html'
        controller: 'ImageController'
      ).otherwise(
        redirectTo: '/'
      )
])

controllers = angular.module('controllers', [])
