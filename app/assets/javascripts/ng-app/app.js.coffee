module = [
  'templates',
  'ngResource'
  'ngRoute',
  'angular-flash.service'
  'angular-flash.flash-alert-directive'
]

angular.module 'learnQuiz', module
  .config ['$routeProvider', 'flashProvider', '$httpProvider', '$locationProvider'
  ($routeProvider, flashProvider, $httpProvider, $locationProvider) ->
    authToken = $("meta[name=\"csrf-token\"]").attr("content")
    $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

    flashProvider.errorClassnames.push("alert-danger")
    flashProvider.errorClassnames.push("alert-warning")
    flashProvider.errorClassnames.push("alert-info")
    flashProvider.errorClassnames.push("alert-success")

    # $locationProvider.html5Mode(true)

    $routeProvider
      .when '/',
        templateUrl: 'home.html'
        controller: 'homeCtrl'
      #
      # route for user
      #
      .when '/users',
        templateUrl: 'users/view.html'
        controller: 'viewUserCtrl'
        resolve:
          UserData: (userService) ->
            userService.all()

      .when '/users/new',
        templateUrl: 'users/new.html'
        controller: 'newUserCtrl'

      .when '/users/:id/edit',
        templateUrl: 'users/new.html'
        controller: 'editUserCtrl'
      #
      # route for Tests lession
      #
      .when '/tests',
        templateUrl: 'tests/view.html'
        controller: 'viewTestCtrl'
        resolve:
          QuizData: (testService) ->
            testService.all()

      .when '/tests/new',
        templateUrl: 'tests/new.html'
        controller: 'newTestCtrl'

      .when '/tests/:id/edit',
        templateUrl: 'tests/new.html'
        controller: 'editTestCtrl'
  ]