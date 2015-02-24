React = require 'react/addons'

InputBox = require './input-box'
PropTypes = React.PropTypes
PureRenderMixin = React.addons.PureRenderMixin

module.exports = React.createClass
  mixins: [PureRenderMixin]
  propTypes:
    input: PropTypes.object.isRequired

  render: ->
    <header id='header'>
      <h1><i className='fa fa-list-ul'></i>To Do</h1>
      <InputBox id='new-todo' placeholder='What needs to be done?' save={@props.input.save} />
    </header>
