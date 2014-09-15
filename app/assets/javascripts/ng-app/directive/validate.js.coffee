angular.module 'learnQuiz'
  .directive 'eventValueUpdate', ->
    require: "ngModel"
    restrict: "A"
    priority: 1
    link: (scope, element, attrs, ctrl) ->
      update = ->
        scope.$apply ->
          if ctrl.$pristine && !element.val() && !ctrl.$viewValue
            return
          ctrl.$setViewValue element.val().trim()
          ctrl.$render()

      #Turn of ngModel default events then add the events from input
      element.off("input").off("keydown").off("change").on attrs.eventValueUpdate, update
  .directive 'eventValidEmpty', ->
    require: "ngModel"
    restrict: "A"
    priority: 1
    link: (scope, element, attrs, ctrl) ->
      update = ->
        scope.$apply ->
          ctrl.$setViewValue element.val().trim()
          ctrl.$render()

      #Turn of ngModel default events then add the events from input
      element.off("input").off("keydown").off("change").on attrs.eventValidEmpty, update
  .directive 'eventUpdateStatus', ->
    require: "ngModel"
    restrict: "A"
    priority: 1
    link: (scope, element, attrs, ctrl) ->
      update = ->
        scope.$apply ->
          ctrl.$setViewValue element.val().trim()
          ctrl.$render()

      #Turn of ngModel default events then add the events from input
      element.on attrs.eventUpdateStatus, update
  .directive 'eventValidEmail', ->
    require: "ngModel"
    restrict: "A"
    priority: 1
    link: (scope, element, attrs, ctrl) ->
      update = ->
        scope.$apply ->
          value = element.val().trim()
          if ctrl.$valid and (not value or /^\s*$/.test(value))
            ctrl.$setViewValue ' '
            ctrl.$render()

      #Turn of ngModel default events then add the events from input
      element.on attrs.eventValidEmail, update