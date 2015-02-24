Bacon = require 'baconjs'
React = require 'react/addons'
PropTypes = React.PropTypes
PureRenderMixin = React.addons.PureRenderMixin
ENTER = 13

module.exports = React.createClass
  mixins: [PureRenderMixin]
  propTypes:
    save: PropTypes.instanceOf(Bacon.Bus).isRequired
    id: PropTypes.string
    value: PropTypes.string
    placeholder: PropTypes.string

  render: ->
    <div className='input-group input-box'>
      <input id={@props.id} type='text' className='form-control'
        value={@state.value} placeholder={@props.placeholder} autoFocus={true}
        onChange={@onChange} onKeyDown={@onKeyDown} />
      <span className='input-group-btn'>
        <button className='btn btn-default' type='button' onClick={@save}>
          <i className='fa fa-plus'></i>
        </button>
      </span>
    </div>

  getInitialState: -> value: @props.value

  getDefaultProps: -> value: ''

  save: ->
    @props.save.push @state.value
    @setState value: ''

  onChange: (e) -> @setState value: e.target.value

  onKeyDown: (e) -> @save() if e.keyCode is ENTER
