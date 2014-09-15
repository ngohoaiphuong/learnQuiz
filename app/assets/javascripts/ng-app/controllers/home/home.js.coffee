homeCtrl = ($scope, flash, $location, authService) ->
  $location.path('/users') if authService.isSignedIn()

  $scope.user =
    email: ''
    password: ''
    remember: false

  $scope.submit = (user) ->
    authService.login(user)
    .success (data, status) ->
      flash.success = 'Login successfully.'
      authService.saveSignIn()
      $location.path('/users')
    .error (data, status) ->
      flash.error = data.error

homeCtrl.$inject = [
  '$scope'
  'flash'
  '$location'
  'authService'
]

angular.module 'learnQuiz'
  .controller 'homeCtrl',  homeCtrl
