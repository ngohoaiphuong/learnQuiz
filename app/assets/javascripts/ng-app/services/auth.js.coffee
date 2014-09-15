authService = ($http) ->
  create: (user) ->
    $http.post '/account/users.json', user

  login: (user) ->
    $http.post '/account/users/sign_in.json', user

  logout: ->
    $http.delete '/account/users/sign_out.json'
  
  saveSignIn: ->
    localStorage.setItem 'isSignedIn', true

  isSignedIn: ->
    localStorage.getItem('isSignedIn')

angular.module 'learnQuiz'
  .factory 'authService', authService