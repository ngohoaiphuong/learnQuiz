newTestCtrl = ($scope, $location, flash, testService, authService) ->
  $location.path('/') unless authService.isSignedIn()
  $scope.test = testService.reset()

  $('input#name').focus()

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

  $scope.removeOption = (question, index) ->
    question.options.splice(index, 1)

  $scope.saveTest = (test) ->
    testService.create(test)
    .success (data, status) ->
      flash.success = 'Save successfully.'
      $scope.test = testService.reset()
      $('input#name').focus()
    .error (data, status) ->
      flash.error = data.error

newTestCtrl.$inject = [
  '$scope'
  '$location'
  'flash'
  'testService'
  'authService'
]

angular.module 'learnQuiz'
  .controller 'newTestCtrl', newTestCtrl