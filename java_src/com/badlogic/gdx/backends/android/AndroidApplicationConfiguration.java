package com.badlogic.gdx.backends.android;

import com.badlogic.gdx.backends.android.surfaceview.FillResolutionStrategy;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
/* loaded from: classes.dex */
public class AndroidApplicationConfiguration {

    /* renamed from: r */
    public int f3592r = 8;

    /* renamed from: g */
    public int f3591g = 8;

    /* renamed from: b */
    public int f3590b = 8;

    /* renamed from: a */
    public int f3589a = 0;
    public int depth = 16;
    public int stencil = 0;
    public int numSamples = 0;
    public boolean useAccelerometer = true;
    public boolean useGyroscope = false;
    public boolean useCompass = true;
    public boolean useRotationVectorSensor = false;
    public int sensorDelay = 1;
    public int touchSleepTime = 0;
    public boolean useWakelock = false;
    public boolean disableAudio = false;
    public int maxSimultaneousSounds = 16;
    public ResolutionStrategy resolutionStrategy = new FillResolutionStrategy();
    public boolean getTouchEventsForLiveWallpaper = false;
    public boolean useImmersiveMode = true;
    @Deprecated
    public boolean useGL30 = false;
    public int maxNetThreads = Integer.MAX_VALUE;
}
