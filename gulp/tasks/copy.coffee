gulp = require 'gulp'

gulp.task 'copy', ->
  src = [
    './src/**'
    './src/**/*.html'
    '!./src/{images,scripts,styles,fonts}'
    '!./src/{images,scripts,styles,fonts}/**'
  ]
  gulp.src(src, dot: true)
  .pipe(gulp.dest('./dist'))
