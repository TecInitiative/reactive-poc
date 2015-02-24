Bacon = require 'baconjs'
Immutable = require 'immutable'
guid = require './guid'

create = (text) -> Immutable.Map {id: guid(), text, done: false}

add = (todos, todo) -> todos.set todo.get('id'), todo
remove = (todos, todo) -> todos.delete todo.id
toggle = (todos, todo) -> todos.setIn [todo.id, 'done'], not todo.done

valid = (text) -> text.trim().length > 0
isDone = (todo) -> todo.get 'done'

module.exports = (actions) ->
  todos = Bacon.update Immutable.OrderedMap(),
    actions.add.filter(valid).map(create), add,
    actions.remove, remove,
    actions.toggle, toggle

  all: -> todos
