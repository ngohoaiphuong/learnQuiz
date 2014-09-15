viewUserCtrl = ($scope, flash, userService, UserData, authService) ->
  $location.path('/') unless authService.isSignedIn()
  $scope.users = UserData

  $scope.createUser = ->
    userService.newUser()

  $scope.deleteUser = (index, id) ->
    if window.confirm 'Are you sure delete this user.'
      userService.delete(id)
      .success ->
        $scope.users.splice(index, 1)
        flash.success = 'Remove user successfully.'
      .error ->
        flash.error = 'Remove user failure.'

viewUserCtrl.$inject = [
  '$scope'
  'flash'
  'userService'
  'UserData'
  'authService'
]

angular.module 'learnQuiz'
  .controller 'viewUserCtrl',  viewUserCtrl
