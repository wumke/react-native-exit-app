import {NativeModules} from 'react-native';

var RNExitApp = {
  exitApp: function() {
        NativeModules.RNExitApp.exitApp();
  }
};

export default RNExitApp;
