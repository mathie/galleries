controllers = angular.module('controllers')

controllers.controller('NavigationController', [ '$scope', '$location',
  ($scope, $location) ->
    $scope.isActiveExact = (path) ->
      $scope.currentPath() == path

    $scope.isActive = (path) ->
      $scope.currentPath().indexOf(path) == 0

    $scope.currentPath = ->
      $location.path()

    $scope.rootPath = ->
      $location.url('/')

    $scope.galleriesPath = ->
      $location.url('/galleries')

    $scope.galleryPath = (gallery) ->
      $location.url("/galleries/#{gallery.id}")

    $scope.imagePath = (image) ->
      $location.url("/images/#{image.id}")
])
