Bacon = require 'baconjs'

module.exports =
  todo:
    add: new Bacon.Bus
    remove: new Bacon.Bus
    toggle: new Bacon.Bus
