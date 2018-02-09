var exec = require('cordova/exec');

var PLUGIN_NAME = 'CordovaTestExample';

var CordovaTestExample = {
  echo: function(phrase, cb) {
    exec(cb, null, PLUGIN_NAME, 'echo', [phrase]);
  }
};

module.exports = CordovaTestExample;