import {NativeModules} from 'react-native';

var RNExitApp = {
  exitApp: function() {
        NativeModules.RNExitApp.exitApp();
  },
  goToBackGround: function() {
    NativeModules.RNExitApp.goToBackGround();
  }
};

export default RNExitApp;
