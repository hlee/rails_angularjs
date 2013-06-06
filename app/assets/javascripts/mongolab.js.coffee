# This is a module for cloud persistance in mongolab - https://mongolab.com
angular.module("mongolab", ["ngResource"]).factory "Project", ($resource) ->
  Project = $resource("https://api.mongolab.com/api/1/databases" + "/angularjs/collections/projects/:id",
    apiKey: "4f847ad3e4b08a2eed5f3b54"
  ,
    update:
      method: "PUT"
  )
  Project::update = (cb) ->
    Project.update
      id: @_id.$oid
    , angular.extend({}, this,
      _id: `undefined`
    ), cb

  Project::destroy = (cb) ->
    Project.remove
      id: @_id.$oid
    , cb

  Project
