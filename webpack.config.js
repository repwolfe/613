var webpack = require('webpack');

module.exports = {
  entry: "./src/js/index.js",
  output: {
    path: __dirname + "/dist",
    filename: "bundle.js"
  },
  module: {
    rules: [
      { test: /\.js$/, enforce: "pre", exclude: /node_modules/, loader: "eslint-loader" },
      { test: /\.js$/, exclude: /node_modules/, loader: "babel-loader" },
      { test: /\.scss$/, use: ["style-loader", "css-loader", "sass-loader"]}
    ]
  },
  resolve: {
    modules: ['node_modules']
  },
  externals: {
    "jquery": "jQuery"
  }
}