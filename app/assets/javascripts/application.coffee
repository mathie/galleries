#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
#= require angular/angular
#= require_tree .

gallery = angular.module('gallery', [ 'controllers' ])
controllers = angular.module('controllers', [])
