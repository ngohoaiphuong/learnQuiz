newUserCtrl = ($scope, $location, flash, userService, authService) ->
  $location.path('/') unless authService.isSignedIn()

  $scope.roles = userService.initRoles()
  $scope.user = userService.initUser()

  $('input#username').focus()

  $scope.validScope =
    role: true
    password: true

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
    if $scope.newUserForm.$valid and userService.validUser(user)
      authService.create(user)
      .success (data, status) ->
        $scope.user = userService.initUser()
        $('input#username').focus()
        flash.success = 'Create new user successfully.'
      .error (data, status) ->
        if status is 401
          flash.error = data.code
        if status is 400
          if data.errors?
            flash.error = data.errors[0]
          else
            flash.error = data.code

newUserCtrl.$inject = [
  '$scope'
  '$location'
  'flash'
  'userService'
  'authService'
]

angular.module 'learnQuiz'
  .controller 'newUserCtrl', newUserCtrl
