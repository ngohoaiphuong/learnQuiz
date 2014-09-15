userService = ($http, $q, $location, $routeParams) ->
  initUser: ->
    user =
      username: ''
      email: ''
      password: ''
      password_confirmation: ''
      role: 'Select role'
    user

  initRoles: ->
    roles = [
      'Select role'
      'Teacher'
      'Student'
    ]

  goHomeUser: ->
    $location.path '/users'

  newUser: ->
    $location.path '/users/new'

  validUser: (user) ->
    return true

  all: ->
    delay = $q.defer()
    $http.get('/teacher/users.json')
    .success (data, status) ->
      delay.resolve data
    .error (data, status) ->
      if status is 401
        localStorage.removeItem 'isSignedIn'
        $location.path('/')
      delay.reject null
    delay.promise

  get: ->
    $http.get '/teacher/users/' + $routeParams.id + '.json'

  delete: (id) ->
    $http.delete '/teacher/users/' + id + '.json'

  update: (user) ->
    $http.put '/teacher/users/' + $routeParams.id + '.json', user

angular.module 'learnQuiz'
  .factory 'userService', userService