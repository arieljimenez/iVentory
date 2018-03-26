const HtmlWebPackPlugin = require("html-webpack-plugin");

module.exports = {
  entry: './src/static/index.js',
  module: {
    rules: [
      {
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
      },{
        test: /\.(css|styl)$/,
        use: [
          {
            loader: "css-loader','style-loader"
          }
        ]
      },{
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
      template: "./src/static/index.html",
      filename: "./index.html"
    })
  ]
};
