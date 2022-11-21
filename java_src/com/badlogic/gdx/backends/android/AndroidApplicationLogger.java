package com.badlogic.gdx.backends.android;

import android.util.Log;
import com.badlogic.gdx.ApplicationLogger;
/* loaded from: classes.dex */
public class AndroidApplicationLogger implements ApplicationLogger {
    @Override // com.badlogic.gdx.ApplicationLogger
    public void debug(String str, String str2) {
        Log.d(str, str2);
    }

    @Override // com.badlogic.gdx.ApplicationLogger
    public void error(String str, String str2) {
        Log.e(str, str2);
    }

    @Override // com.badlogic.gdx.ApplicationLogger
    public void log(String str, String str2) {
        Log.i(str, str2);
    }

    @Override // com.badlogic.gdx.ApplicationLogger
    public void debug(String str, String str2, Throwable th) {
        Log.d(str, str2, th);
    }

    @Override // com.badlogic.gdx.ApplicationLogger
    public void error(String str, String str2, Throwable th) {
        Log.e(str, str2, th);
    }

    @Override // com.badlogic.gdx.ApplicationLogger
    public void log(String str, String str2, Throwable th) {
        Log.i(str, str2, th);
    }
}
