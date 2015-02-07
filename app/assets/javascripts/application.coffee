#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
#= require angular/angular
#= require angular-rails-templates
#= require_tree .

gallery = angular.module('gallery', [
  'templates',
  'controllers',
])

controllers = angular.module('controllers', [])
