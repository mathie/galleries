controllers = angular.module('controllers')

galleries = [
  {
    id: 1
    title: 'A walk in the park'
    description: 'Walking through Central Park'
    key_image_url: 'https://placekitten.com/g/600/300'
  },
  {
    id: 2
    title: 'A day at the beach'
    description: 'A day out at Perrenporth Beach with the surf boards'
    key_image_url: 'https://placekitten.com/g/600/300'
  },
  {
    id: 3
    title: 'Cute cats'
    description: 'What good is a gallery on the Internet without cute pictures of cats?'
    key_image_url: 'https://placekitten.com/g/600/300'
  },
  {
    id: 4
    title: 'Gallery 4'
    description: 'I have run out of inspirational examples!'
    key_image_url: 'https://placekitten.com/g/600/300'
  }
]

controllers.controller('GalleriesController', [ '$scope', '$location',
  ($scope, $location) ->
    $scope.galleries = galleries

    # FIXME: This should be called from the NavigationController instead of
    # duplicating it here.
    $scope.galleryPath = (gallery) ->
      $location.url("/galleries/#{gallery.id}")
])
