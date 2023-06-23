package com.github.wumke.RNExitApp;

import androidx.annotation.NonNull;

import com.facebook.react.bridge.ReactApplicationContext;

import com.github.wumke.RNExitApp.NativeRNExitAppSpec;

public class RNExitApp extends NativeRNExitAppSpec {

    private final RNExitAppImpl delegate;

    public RNExitApp(ReactApplicationContext reactContext) {
        super(reactContext);
        delegate = new RNExitAppImpl(reactContext);
    }

    @NonNull
    @Override
    public String getName() {
        return RNExitAppImpl.NAME;
    }
    
    @Override
    public void exitApp() {
        delegate.exitApp();
    }
}
