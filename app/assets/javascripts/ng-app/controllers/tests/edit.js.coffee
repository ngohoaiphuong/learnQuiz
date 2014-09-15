editTestCtrl = ($scope, $location, flash, authService, testService) ->
  $location.path('/') unless authService.isSignedIn()
  $scope.test = testService.reset()
  $scope.original = angular.copy($scope.test)

  testService.get().success (data) ->
    $scope.test = data
    $scope.original = angular.copy(data)

  $scope.comeBack = ->
    testService.goHomeTest()

  $scope.addQuestion = ->
    $scope.test.questions.push testService.addMoreQuestion()

  $scope.removeQuestion = (index) ->
    if $scope.test.questions.length > 1
      $scope.test.questions.splice(index, 1)
    else
      flash.info = 'Please add more question before delete action'

  $scope.addOption = (item) ->
    if item.length < 5
      item.push testService.addMoreOption()
    else
      flash.info = 'A question have maxinum is 5 options.'

  $scope.saveTest = (test) ->
    if not angular.equals(test, $scope.original)
      if window.confirm 'Are you sure update this Quiz.'
        testService.update(test)
        .success ->
          flash.success = 'Update Quiz successfully.'
        .error (data) ->
          flash.error = data.error

editTestCtrl.$inject = [
  '$scope'
  '$location'
  'flash'
  'authService'
  'testService'
]

angular.module 'learnQuiz'
  .controller 'editTestCtrl', editTestCtrl