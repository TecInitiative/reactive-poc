Bacon = require 'baconjs'
React = require 'react/addons'

Header = require './header'
List = require './list'
PropTypes = React.PropTypes
PureRenderMixin = React.addons.PureRenderMixin

module.exports = React.createClass
  mixins: [PureRenderMixin]
  propTypes:
    header: PropTypes.shape
      input: PropTypes.object.isRequired
    todos: PropTypes.instanceOf(Bacon.Property).isRequired
    toggle: PropTypes.instanceOf(Bacon.Bus).isRequired
    remove: PropTypes.instanceOf(Bacon.Bus).isRequired

  render: ->
    <div id='todo-app' className='well'>
      <Header input={@props.header.input} />
      <List todos={@props.todos} remove={@props.remove} toggle={@props.toggle} />
    </div>
