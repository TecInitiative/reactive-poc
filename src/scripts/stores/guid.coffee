one = ->
  value = (1 + Math.random()) * 0x10000
  Math.floor(value).toString(16).substring(1)

two = -> "#{one()}#{one()}"

three = -> "#{two()}#{one()}"

module.exports = -> "#{two()}-#{one()}-#{one()}-#{one()}-#{three()}"
