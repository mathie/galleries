controllers = angular.module('controllers')

image =
  id: 1
  title: 'The Park 001'
  description: 'A picture of the park.'
  image_url: 'https://placekitten.com/g/1400/700'
  gallery: {
    id: 1
    title: 'A walk in the park'
    description: 'Walking through Central Park'
  }

controllers.controller('ImageController', [ '$scope', '$location',
  ($scope, $location) ->
    $scope.image = image

    # FIXME: This should be called from the NavigationController instead of
    # duplicating it here.
    $scope.galleryPath = (gallery) ->
      $location.url("/galleries/#{gallery.id}")
])
