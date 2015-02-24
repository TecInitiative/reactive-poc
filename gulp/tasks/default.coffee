gulp = require 'gulp'

gulp.task 'default', ->
  help = """
    Usage: gulp [command]

    Comands:
      dev     # build and run dev server
      dist    # distribution build
      clean   # remove dist directory
  """
  console.log help
