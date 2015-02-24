module.exports = (obj, properties...) ->
  for property in properties when not obj[property]
    throw new Error "#{property} is a required dependency and was not provided."
