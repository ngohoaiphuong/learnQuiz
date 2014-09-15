viewTestCtrl = ($scope, $location, flash, testService, authService, QuizData) ->
  $location.path('/') unless authService.isSignedIn()
  $scope.tests = QuizData

  $scope.createTest = ->
    $location.path '/tests/new'

  $scope.deleteTest = (index, id) ->
    if window.confirm 'Are you sure delete this Quiz.'
      testService.delete(id)
      .success ->
        $scope.tests.splice(index, 1)
        flash.success = 'Remove Quiz successfully.'
      .error ->
        flash.error = 'Remove Quiz failure.'

viewTestCtrl.$inject = [
  '$scope'
  '$location'
  'flash'
  'testService'
  'authService'
  'QuizData'
]

angular.module 'learnQuiz'
  .controller 'viewTestCtrl', viewTestCtrl