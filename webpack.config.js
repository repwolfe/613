const webpack = require('webpack');
const autoprefixer = require('autoprefixer');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');

module.exports = {
  entry: "./src/js/index.js",
  devtool: 'source-map',
  plugins: [
    new CleanWebpackPlugin(),
    new HtmlWebpackPlugin({
      template: "!!pug-loader!src/templates/index.pug",
      filename: "../index.php"
    })
  ],
  output: {
    path: __dirname + "/dist",
    sourceMapFilename: "./bundle.js.map",
    filename: "bundle.[chunkhash].js"   // [contenthash] only works in webpack 4, not 3
  },
  module: {
    rules: [
      { test: /\.js$/, enforce: "pre", exclude: /node_modules/, loader: "eslint-loader" },
      { test: /\.js$/, exclude: /node_modules/, loader: "babel-loader" },
      { test: /\.scss$/, use: ["style-loader", "css-loader", { loader: "postcss-loader", options: { plugins: [autoprefixer()] } }, "sass-loader"]}
    ]
  },
  resolve: {
    modules: ['node_modules']
  },
  externals: {
    "jquery": "jQuery"
  }
}