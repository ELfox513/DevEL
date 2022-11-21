package com.badlogic.gdx.utils;

import com.badlogic.gdx.Gdx;
/* loaded from: classes.dex */
public class Logger {
    public static final int DEBUG = 3;
    public static final int ERROR = 1;
    public static final int INFO = 2;
    public static final int NONE = 0;

    /* renamed from: a */
    public final String f6579a;

    /* renamed from: b */
    public int f6580b;

    public Logger(String str) {
        this(str, 1);
    }

    public void debug(String str) {
        if (this.f6580b >= 3) {
            Gdx.app.debug(this.f6579a, str);
        }
    }

    public void error(String str) {
        if (this.f6580b >= 1) {
            Gdx.app.error(this.f6579a, str);
        }
    }

    public int getLevel() {
        return this.f6580b;
    }

    public void info(String str) {
        if (this.f6580b >= 2) {
            Gdx.app.log(this.f6579a, str);
        }
    }

    public void setLevel(int i) {
        this.f6580b = i;
    }

    public Logger(String str, int i) {
        this.f6579a = str;
        this.f6580b = i;
    }

    public void debug(String str, Exception exc) {
        if (this.f6580b >= 3) {
            Gdx.app.debug(this.f6579a, str, exc);
        }
    }

    public void error(String str, Throwable th) {
        if (this.f6580b >= 1) {
            Gdx.app.error(this.f6579a, str, th);
        }
    }

    public void info(String str, Exception exc) {
        if (this.f6580b >= 2) {
            Gdx.app.log(this.f6579a, str, exc);
        }
    }
}
