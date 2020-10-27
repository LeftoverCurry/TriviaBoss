const { environment } = require("@rails/webpacker");

// Global variables needed for Bootstrap dependencies
const webpack = require("webpack");

environment.plugins.prepend(
  "Provide",
  new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    jquery: "jquery",
    "window.jQuery": "jquery",
    Popper: ["popper.js", "default"],
  })
);

module.exports = environment;
