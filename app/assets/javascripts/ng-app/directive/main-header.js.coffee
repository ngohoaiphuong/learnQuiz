angular.module 'learnQuiz'
  .directive 'mainHeader', ->
    restrict: 'A'
    replace: true
    templateUrl: 'main-header.html'
    scope:
      data: "=item"
    controller: ['$scope', 'authService', 'flash', '$location', ($scope, authService, flash, $$location) ->
      $scope.linkUser = '#/users'
      $scope.linkTests = '#/tests'
      $scope.linkLogout = '#/logout'

      $scope.appliedClass = (item) ->
        classSelect = ''
        if item is 1 and $scope.data is 1
          $scope.linkUser = '#'
          $scope.linkTests = '#/tests'
          classSelect = 'li-select'

        if item is 2 and $scope.data is 2
          $scope.linkUser = '#/users'
          $scope.linkTests = '#'
          classSelect = 'li-select'

        classSelect

      $scope.logOut = ->
        authService.logout()
        .success ->
          localStorage.removeItem 'isSignedIn'
          $$location.path ('/')
        .error ->
          flash.error = 'Logout failure.'

    ]
