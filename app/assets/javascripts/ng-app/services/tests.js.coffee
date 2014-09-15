testService = ($http, $q, $location, $routeParams) ->
  reset: ->
    test =
      name: ''
      description: ''
      questions: [
        question: ''
        description: ''
        options: [
        ]
      ]
    test

  goHomeTest: ->
    $location.path '/tests'

  addMoreQuestion: ->
    question =
      question: ''
      description: ''
      options: [
      ]
    question
    
  addMoreOption: ->
    option =
      option: ''
      answer: false
    option

  create: (test) ->
    $http.post '/teacher/tests.json', test

  all: ->
    delay = $q.defer()
    $http.get '/teacher/tests.json'
    .success (data, status) ->
      delay.resolve data
    .error (data, status) ->
      if status is 401
        localStorage.removeItem 'isSignedIn'
        $location.path('/')
      delay.reject null
    delay.promise

  get: ->
    $http.get '/teacher/tests/' + $routeParams.id + '.json'

  delete: (id) ->
    $http.delete '/teacher/tests/' + id + '.json'

  update: (test) ->
    $http.put '/teacher/tests/' + $routeParams.id + '.json', test

angular.module 'learnQuiz'
  .factory 'testService', testService