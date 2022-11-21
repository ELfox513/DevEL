package com.badlogic.gdx.p032ai;

import com.badlogic.gdx.Gdx;
/* renamed from: com.badlogic.gdx.ai.GdxLogger */
/* loaded from: classes.dex */
public class GdxLogger implements Logger {
    @Override // com.badlogic.gdx.p032ai.Logger
    public void debug(String str, String str2) {
        Gdx.app.debug(str, str2);
    }

    @Override // com.badlogic.gdx.p032ai.Logger
    public void error(String str, String str2) {
        Gdx.app.error(str, str2);
    }

    @Override // com.badlogic.gdx.p032ai.Logger
    public void info(String str, String str2) {
        Gdx.app.log(str, str2);
    }

    @Override // com.badlogic.gdx.p032ai.Logger
    public void debug(String str, String str2, Throwable th) {
        Gdx.app.debug(str, str2, th);
    }

    @Override // com.badlogic.gdx.p032ai.Logger
    public void error(String str, String str2, Throwable th) {
        Gdx.app.error(str, str2, th);
    }

    @Override // com.badlogic.gdx.p032ai.Logger
    public void info(String str, String str2, Throwable th) {
        Gdx.app.log(str, str2, th);
    }
}
