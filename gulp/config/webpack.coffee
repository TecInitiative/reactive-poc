path = require 'path'
webpack = require 'webpack'

module.exports =
  cache: true
  entry:
    app: [
      'webpack/hot/dev-server'
      'bootstrap-webpack'
      'font-awesome/less/font-awesome.less'
      './src/styles/todo-app.css'
      './src/scripts/main.coffee'
    ]
  output:
    path: path.join __dirname, 'assets'
    publicPath: '/assets/'
    filename: '[name].js'
    chunkFilename: '[name].[id].[chunkhash].js'
  resolve:
    extensions: [
      ''
      '.web.coffee', '.web.js', '.web.cjsx', '.web.less', '.web.css'
      '.coffee', '.js', '.cjsx', 'less', 'css']
  module:
    loaders: [
      {test: /\.cjsx$/, loader: 'coffee!cjsx'}
      {test: /\.coffee$/, loader: 'coffee'}
      {test: /\.css$/, loader: 'style!css'}
      {test: /\.less$/, loader: 'style!css!less'}
      # bootstrap loaders
      {test: /\.(woff|woff2)$/, loader: 'url?limit=10000&mimetype=application/font-woff'}
      {test: /\.jpg$/, loader: 'url?limit=10000&mimetype=image/jpg'}
      {test: /\.png$/, loader: 'url?limit=10000&mimetype=image/png'}
      {test: /\.ttf$/, loader: 'file?mimetype=application/vnd.ms-fontobject'}
      {test: /\.eot$/, loader: 'file?mimetype=application/x-font-ttf'}
      {test: /\.svg$/, loader: 'file?mimetype=image/svg+xml'}
      # font awesome loaders
      {test: /\.(woff|woff2)(\?v=[0-9]\.[0-9]\.[0-9])?$/, loader: 'url?limit=10000&minetype=application/font-woff'}
      {test: /\.(ttf|eot|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/, loader: 'file'}
    ]
  plugins: [
    new webpack.optimize.CommonsChunkPlugin 'commons.js'
    new webpack.ProvidePlugin
      $: 'jquery'
      jQuery: 'jquery'
  ]
