package com.github.wumke.RNExitApp;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import android.util.Log;

public class RNExitApp extends ReactContextBaseJavaModule {

    private final RNExitAppImpl delegate;

    public RNExitApp(ReactApplicationContext reactContext) {
        super(reactContext);
        delegate = new RNExitAppImpl(reactContext);
    }

    @Override
    public String getName() {
        return RNExitAppImpl.NAME;
    }

    @ReactMethod
    public void exitApp() {
        delegate.exitApp();
    }
}
