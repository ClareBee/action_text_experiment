
const { environment } = require("@rails/webpacker");
const webpack = require("webpack");

// https://webpack.js.org/plugins/provide-plugin/

environment.plugins.append("Provide", new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))


module.exports = environment
