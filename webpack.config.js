const path = require("path");
const HtmlWebPackPlugin = require("html-webpack-plugin");

module.exports = {
  entry: {
    'main': [
      './static/index.js',
      './src/styles/style.styl',
    ],
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
        test: /\.(ttf|eot|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
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
