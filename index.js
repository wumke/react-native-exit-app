import { NativeModules } from "react-native";

export default {
  exitApp: () => {
    NativeModules.RNExitApp.exitApp();
  },
};
