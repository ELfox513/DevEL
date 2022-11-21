package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
/* loaded from: classes.dex */
public class FPSLogger {

    /* renamed from: a */
    public long f3901a;

    /* renamed from: b */
    public int f3902b;

    public FPSLogger() {
        this(Integer.MAX_VALUE);
    }

    public FPSLogger(int i) {
        this.f3902b = i;
        this.f3901a = TimeUtils.nanoTime();
    }

    public void log() {
        int framesPerSecond;
        long nanoTime = TimeUtils.nanoTime();
        if (nanoTime - this.f3901a > 1000000000 && (framesPerSecond = Gdx.graphics.getFramesPerSecond()) < this.f3902b) {
            Application application = Gdx.app;
            application.log("FPSLogger", "fps: " + framesPerSecond);
            this.f3901a = nanoTime;
        }
    }
}
