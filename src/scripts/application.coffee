React = require 'react'

Todo = require './ui'

module.exports = (actions, stores) ->
  render: (id) ->
    dom = document.getElementById(id)
    options =
      todos: stores.todo.all()
      remove: actions.todo.remove
      toggle: actions.todo.toggle
      header:
        input:
          save: actions.todo.add

    element = React.createElement Todo, options
    React.render(element, dom)
