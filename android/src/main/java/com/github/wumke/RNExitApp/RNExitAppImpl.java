package  com.github.wumke.RNExitApp;

import android.app.AlarmManager;
import android.content.Context;

import com.facebook.react.bridge.ReactApplicationContext;

class RNExitAppImpl {

    public static final String NAME = "RNExitApp";

    ReactApplicationContext RCTContext;

    AlarmManager alarmManager;

    public RNExitAppImpl(ReactApplicationContext reactContext) {
        RCTContext = reactContext;
        alarmManager = (AlarmManager) reactContext.getSystemService(Context.ALARM_SERVICE);
    }

    public void exitApp() {
        android.os.Process.killProcess(android.os.Process.myPid());
    }
}
