package com.badlogic.gdx;
/* loaded from: classes.dex */
public interface ApplicationLogger {
    void debug(String str, String str2);

    void debug(String str, String str2, Throwable th);

    void error(String str, String str2);

    void error(String str, String str2, Throwable th);

    void log(String str, String str2);

    void log(String str, String str2, Throwable th);
}
