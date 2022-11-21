package com.badlogic.gdx;

import com.badlogic.gdx.graphics.Cursor;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GL30;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.glutils.GLVersion;
/* loaded from: classes.dex */
public interface Graphics {

    /* loaded from: classes.dex */
    public enum GraphicsType {
        AndroidGL,
        LWJGL,
        WebGL,
        iOSGL,
        JGLFW,
        Mock,
        LWJGL3
    }

    int getBackBufferHeight();

    float getBackBufferScale();

    int getBackBufferWidth();

    BufferFormat getBufferFormat();

    float getDeltaTime();

    float getDensity();

    DisplayMode getDisplayMode();

    DisplayMode getDisplayMode(Monitor monitor);

    DisplayMode[] getDisplayModes();

    DisplayMode[] getDisplayModes(Monitor monitor);

    long getFrameId();

    int getFramesPerSecond();

    GL20 getGL20();

    GL30 getGL30();

    GLVersion getGLVersion();

    int getHeight();

    Monitor getMonitor();

    Monitor[] getMonitors();

    float getPpcX();

    float getPpcY();

    float getPpiX();

    float getPpiY();

    Monitor getPrimaryMonitor();

    @Deprecated
    float getRawDeltaTime();

    int getSafeInsetBottom();

    int getSafeInsetLeft();

    int getSafeInsetRight();

    int getSafeInsetTop();

    GraphicsType getType();

    int getWidth();

    boolean isContinuousRendering();

    boolean isFullscreen();

    boolean isGL30Available();

    Cursor newCursor(Pixmap pixmap, int i, int i2);

    void requestRendering();

    void setContinuousRendering(boolean z);

    void setCursor(Cursor cursor);

    void setForegroundFPS(int i);

    boolean setFullscreenMode(DisplayMode displayMode);

    void setGL20(GL20 gl20);

    void setGL30(GL30 gl30);

    void setResizable(boolean z);

    void setSystemCursor(Cursor.SystemCursor systemCursor);

    void setTitle(String str);

    void setUndecorated(boolean z);

    void setVSync(boolean z);

    boolean setWindowedMode(int i, int i2);

    boolean supportsDisplayModeChange();

    boolean supportsExtension(String str);

    /* loaded from: classes.dex */
    public static class BufferFormat {

        /* renamed from: a */
        public final int f3120a;

        /* renamed from: b */
        public final int f3121b;
        public final boolean coverageSampling;
        public final int depth;

        /* renamed from: g */
        public final int f3122g;

        /* renamed from: r */
        public final int f3123r;
        public final int samples;
        public final int stencil;

        public String toString() {
            return "r: " + this.f3123r + ", g: " + this.f3122g + ", b: " + this.f3121b + ", a: " + this.f3120a + ", depth: " + this.depth + ", stencil: " + this.stencil + ", num samples: " + this.samples + ", coverage sampling: " + this.coverageSampling;
        }

        public BufferFormat(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            this.f3123r = i;
            this.f3122g = i2;
            this.f3121b = i3;
            this.f3120a = i4;
            this.depth = i5;
            this.stencil = i6;
            this.samples = i7;
            this.coverageSampling = z;
        }
    }

    /* loaded from: classes.dex */
    public static class DisplayMode {
        public final int bitsPerPixel;
        public final int height;
        public final int refreshRate;
        public final int width;

        public String toString() {
            return this.width + "x" + this.height + ", bpp: " + this.bitsPerPixel + ", hz: " + this.refreshRate;
        }

        public DisplayMode(int i, int i2, int i3, int i4) {
            this.width = i;
            this.height = i2;
            this.refreshRate = i3;
            this.bitsPerPixel = i4;
        }
    }

    /* loaded from: classes.dex */
    public static class Monitor {
        public final String name;
        public final int virtualX;
        public final int virtualY;

        public Monitor(int i, int i2, String str) {
            this.virtualX = i;
            this.virtualY = i2;
            this.name = str;
        }
    }
}
