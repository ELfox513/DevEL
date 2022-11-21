package com.badlogic.gdx.p032ai;

import java.io.PrintStream;
/* renamed from: com.badlogic.gdx.ai.StdoutLogger */
/* loaded from: classes.dex */
public class StdoutLogger implements Logger {
    /* renamed from: a */
    public final void m24474a(String str, String str2, String str3) {
        PrintStream printStream = System.out;
        printStream.println(str + " " + str2 + ": " + str3);
    }

    @Override // com.badlogic.gdx.p032ai.Logger
    public void debug(String str, String str2) {
        m24474a("DEBUG", str, str2);
    }

    @Override // com.badlogic.gdx.p032ai.Logger
    public void error(String str, String str2) {
        m24474a("ERROR", str, str2);
    }

    @Override // com.badlogic.gdx.p032ai.Logger
    public void info(String str, String str2) {
        m24474a("INFO", str, str2);
    }

    @Override // com.badlogic.gdx.p032ai.Logger
    public void debug(String str, String str2, Throwable th) {
        m24473b("DEBUG", str, str2, th);
    }

    @Override // com.badlogic.gdx.p032ai.Logger
    public void error(String str, String str2, Throwable th) {
        m24473b("ERROR", str, str2, th);
    }

    @Override // com.badlogic.gdx.p032ai.Logger
    public void info(String str, String str2, Throwable th) {
        m24473b("INFO", str, str2, th);
    }

    /* renamed from: b */
    public final void m24473b(String str, String str2, String str3, Throwable th) {
        m24474a(str, str2, str3);
        th.printStackTrace();
    }
}
