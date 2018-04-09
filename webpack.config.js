const path = require("path");
const HtmlWebPackPlugin = require("html-webpack-plugin");

module.exports = {
  entry: {
    'main': [
      './static/index.js',
      './src/styles/style.styl',
    ],
    'vendor-style': [
      './static/js/material.min.js',
      './static/css/material-teal-blue.css',
    ],
    'vendor-font': [
      './static/css/fontface.css',
      './static/fonts/material-icon.woff2',
    ]
  },
  output: {
    path: path.resolve(__dirname + '/build/dist'),
  },
  module: {
    rules: [
      {
        test: /\.(css|styl)$/,
        use: [
          { loader: "style-loader" },
          { loader: "css-loader" }
        ]
      }, {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: {
          loader: "elm-webpack-loader?verbose=true&warn=true"
        }
      },
      {
        test: /\.html$/,
        use: [
          {
            loader: "html-loader",
            options: { minimize: true }
          }
        ]
      }, {
        test: /\.(ttf|eot|svg|woff2)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        use: [
          {
            loader: "file-loader"
          }
        ]
      }
    ]
  },
  resolve: {
    extensions: ['.js', '.elm']
  },
  plugins: [
    new HtmlWebPackPlugin({
      template: "./static/index.html",
    })
  ]
};
