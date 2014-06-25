var exec = require('cordova/exec');

var iOSUUID = function(callback) {
  exec(callback, callback, 'iOSUUID', 'iOSUUID', []);
};

module.exports = iOSUUID;
