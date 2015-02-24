Bacon = require 'baconjs'
React = require 'react/addons'
cx = require 'react/lib/cx'

PropTypes = React.PropTypes
PureRenderMixin = React.addons.PureRenderMixin



module.exports = React.createClass
  mixins: [PureRenderMixin]
  propTypes:
    item: PropTypes.object.isRequired
    toggle: PropTypes.instanceOf(Bacon.Bus).isRequired
    remove: PropTypes.instanceOf(Bacon.Bus).isRequired
  render: ->
    item = @props.item
    <li className={cx 'done': item.done, 'list-group-item': true}>
      <span><input type='checkbox' checked={item.done} onChange={@toggle} /></span>
      <label>{item.text}</label>
      <span className='pull-right'>
        <button type='button' className='btn btn-xs btn-default' onClick={@remove}>
          <i className='fa fa-remove'></i>
        </button>
      </span>
    </li>

  remove: -> @props.remove.push @props.item

  toggle: -> @props.toggle.push @props.item
