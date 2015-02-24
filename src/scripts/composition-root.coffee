Application = require './application'
actions = require './actions'
TodoStore = require './stores/todo-store'

module.exports = ->
  stores = todo: TodoStore(actions.todo)
  Application(actions, stores)
