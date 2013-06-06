# configure html5 to get links working on jsfiddle
MainCntl = ($scope, $route, $routeParams, $location) ->
  $scope.$route = $route
  $scope.$location = $location
  $scope.$routeParams = $routeParams
BookCntl = ($scope, $routeParams) ->
  $scope.name = "BookCntl"
  $scope.params = $routeParams
ChapterCntl = ($scope, $routeParams) ->
  $scope.name = "ChapterCntl"
  $scope.params = $routeParams
angular.module "ngView", [], ($routeProvider, $locationProvider) ->
  $routeProvider.when "/Book/:bookId",
    templateUrl: "book.html"
    controller: BookCntl
    resolve:
      delay: ($q, $timeout) ->
        delay = $q.defer()
        $timeout delay.resolve, 1000
        delay.promise

  $routeProvider.when "/Book/:bookId/ch/:chapterId",
    templateUrl: "chapter.html"
    controller: ChapterCntl

  $locationProvider.html5Mode true

