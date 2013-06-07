#angular.module('project', ['mongolab']).config($routeProvider) ->
    #$routeProvider.when('/', 
      #controller: ListCtrl
      #templateUrl: 'list.html'
    #).when('/edit/:projectId',
      #controller: EditCtrl
      #templateUrl: 'detail.html'
    #).when('/new', 
      #controller: CreateCtrl
      #templateUrl: 'detail.html'
    #).otherwise redirectTo: '/'

#ListCtrl = ($scope, Project) ->
  #$scope.projects = Project.query()

#CreateCtrl = ($scope, $location, Project) ->
  #$scope.save = ->
    #Project.save $scope.project, (project) ->
      #$location.path '/edit/' + project._id.$oid

#EditCtrl = ($scope, $location, $routeParams, Project) ->
  #self = this
  #Project.get
    #id: $routeParams.projectId
  #, (project) ->
    #seld.original = project
    #$scope.project = new Project(self.original)
ListCtrl = ($scope, Project) ->
  $scope.projects = Project.query()
  
CreateCtrl = ($scope, $location, Project) ->
  $scope.save = ->
    Project.save $scope.project, (project) ->
      $location.path "/edit/" + project._id.$oid

EditCtrl = ($scope, $location, $routeParams, Project) ->
  self = this
  Project.get
    id: $routeParams.projectId
  , (project) ->
    self.original = project
    $scope.project = new Project(self.original)

  $scope.isClean = ->
    angular.equals self.original, $scope.project

  $scope.destroy = ->
    self.original.destroy ->
      $location.path "/list"


  $scope.save = ->
    $scope.project.update ->
      $location.path "/"

angular.module("project", ["mongolab"]).config ($routeProvider) ->
  $routeProvider.when("/",
    controller: ListCtrl
    templateUrl: "list.html"
  ).when("/edit/:projectId",
    controller: EditCtrl
    templateUrl: "detail.html"
  ).when("/new",
    controller: CreateCtrl
    templateUrl: "detail.html"
  ).otherwise redirectTo: "/"
