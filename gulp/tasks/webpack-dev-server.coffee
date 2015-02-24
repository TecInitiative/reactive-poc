gulp = require 'gulp'
gutil = require 'gulp-util'
webpack = require 'webpack'
WebpackDevServer = require 'webpack-dev-server'
#creating a copy of the config object to safely modify it.
config = Object.create(require '../config/webpack')

options =
  publicPath: config.output.publicPath
  stats:
    colors: true

config.devtool = 'eval'
config.debug = true
config.plugins = config.plugins.concat [
  new webpack.HotModuleReplacementPlugin
]

gulp.task 'webpack:dev-server', ->
  new WebpackDevServer(webpack(config), options)
  .listen 8080, 'localhost', (err) ->
    throw new gutil.PluginError('webpack:dev-server', err) if err
    url = 'http://localhost:8080/webpack-dev-server/index.html'
    gutil.log '[webpack-dev-server]', url
