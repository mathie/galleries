controllers = angular.module('controllers')

gallery =
  id: 1
  title: 'A walk in the park'
  description: 'Walking through Central Park'
  key_image_url: 'https://placekitten.com/g/600/300'
  images: [
    {
      id: 1
      title: 'The Park 001'
      description: 'A picture of the park.'
      image_url: 'https://placekitten.com/g/600/300'
    },
    {
      id: 2
      title: 'The Park 002'
      description: 'A picture of the park.'
      image_url: 'https://placekitten.com/g/600/300'
    },
    {
      id: 3
      title: 'The Park 003'
      description: 'A picture of the park.'
      image_url: 'https://placekitten.com/g/600/300'
    },
    {
      id: 4
      title: 'The Park 004'
      description: 'A picture of the park.'
      image_url: 'https://placekitten.com/g/600/300'
    },
    {
      id: 5
      title: 'The Park 005'
      description: 'A picture of the park.'
      image_url: 'https://placekitten.com/g/600/300'
    },
    {
      id: 6
      title: 'The Park 006'
      description: 'A picture of the park.'
      image_url: 'https://placekitten.com/g/600/300'
    },
    {
      id: 7
      title: 'The Park 007'
      description: 'A picture of the park.'
      image_url: 'https://placekitten.com/g/600/300'
    },
    {
      id: 8
      title: 'The Park 008'
      description: 'A picture of the park.'
      image_url: 'https://placekitten.com/g/600/300'
    },
  ]

controllers.controller('GalleryController', [ '$scope', '$location',
  ($scope, $location) ->
    $scope.gallery = gallery

    # FIXME: This should be called from the NavigationController instead of
    # duplicating it here.
    $scope.galleriesPath = ->
      $location.url("/galleries")

    $scope.imagePath = (image) ->
      $location.url("/images/#{image.id}")
])
