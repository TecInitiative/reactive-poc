Bacon = require 'baconjs'
React = require 'react/addons'
Immutable = require 'immutable'

Item = require './item'
PropTypes = React.PropTypes
PureRenderMixin = React.addons.PureRenderMixin


module.exports = React.createClass
  mixins: [PureRenderMixin]
  propTypes:
    todos: PropTypes.instanceOf(Bacon.Property).isRequired
    toggle: PropTypes.instanceOf(Bacon.Bus).isRequired
    remove: PropTypes.instanceOf(Bacon.Bus).isRequired

  render: ->
    items = @state.todos.map(@element).toArray()
    <section id='main'>
      {if items.length > 0 then <ul id='todo-list' className='list-group'>{items}</ul> else null}
    </section>

  getInitialState: -> todos: new Immutable.List()

  componentDidMount: ->
    @props.todos.onValue((list) => @setState(todos: list.toList()))

  element: (item) ->
    id = item.get 'id'
    <Item key={id} item={item.toJS()} remove={@props.remove} toggle={@props.toggle} />
