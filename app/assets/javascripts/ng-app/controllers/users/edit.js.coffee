editUserCtrl = ($scope, $location, flash, userService) ->
  $scope.editMode = true
  $scope.roles = userService.initRoles()
  $scope.user = userService.initUser()
  $scope.original = angular.copy($scope.user)

  $('input#username').focus()

  $scope.validScope =
    role: true
    password: true

  userService.get().success (data) ->
    $scope.user = data
    $scope.original = angular.copy(data)

  $scope.selectAction = ->
    $scope.validScope.role = true
    if $scope.user.role is $scope.roles[0]
      $scope.validScope.role = false

  $scope.onUpdatePassword = ->
    $scope.validScope.password = true
    if $scope.user.password isnt $scope.user.password_confirmation
      $scope.validScope.password = false

  $scope.comeBack = ->
    userService.goHomeUser()

  $scope.saveUser = (user) ->
    if not angular.equals(user, $scope.original)
      if window.confirm 'Are you sure update this user.'
        userService.update(user)
        .success ->
          flash.success = 'Update user successfully.'
        .error (data) ->
          flash.error = data.error

editUserCtrl.$inject = [
  '$scope'
  '$location'
  'flash'
  'userService'
]

angular.module 'learnQuiz'
  .controller 'editUserCtrl', editUserCtrl
