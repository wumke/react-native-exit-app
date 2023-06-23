package  com.github.wumke.RNExitApp;

import com.facebook.react.bridge.ReactApplicationContext;

class RNExitAppImpl {

    public static final String NAME = "RNExitApp";

    ReactApplicationContext RCTContext;

    public RNExitAppImpl(ReactApplicationContext reactContext) {
        RCTContext = reactContext;
    }

    public void exitApp() {
        android.os.Process.killProcess(android.os.Process.myPid());
    }
}
