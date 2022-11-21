package com.badlogic.gdx.graphics.profiling;

import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.math.FloatCounter;
/* loaded from: classes.dex */
public abstract class GLInterceptor implements GL20 {

    /* renamed from: a */
    public int f5161a;

    /* renamed from: b */
    public int f5162b;

    /* renamed from: c */
    public int f5163c;

    /* renamed from: d */
    public int f5164d;

    /* renamed from: e */
    public final FloatCounter f5165e = new FloatCounter(0);

    /* renamed from: f */
    public GLProfiler f5166f;

    public static String resolveErrorNumber(int i) {
        switch (i) {
            case 1280:
                return "GL_INVALID_ENUM";
            case GL20.GL_INVALID_VALUE /* 1281 */:
                return "GL_INVALID_VALUE";
            case GL20.GL_INVALID_OPERATION /* 1282 */:
                return "GL_INVALID_OPERATION";
            case 1283:
            case 1284:
            default:
                return "number " + i;
            case GL20.GL_OUT_OF_MEMORY /* 1285 */:
                return "GL_OUT_OF_MEMORY";
            case GL20.GL_INVALID_FRAMEBUFFER_OPERATION /* 1286 */:
                return "GL_INVALID_FRAMEBUFFER_OPERATION";
        }
    }

    public int getCalls() {
        return this.f5161a;
    }

    public int getDrawCalls() {
        return this.f5163c;
    }

    public int getShaderSwitches() {
        return this.f5164d;
    }

    public int getTextureBindings() {
        return this.f5162b;
    }

    public FloatCounter getVertexCount() {
        return this.f5165e;
    }

    public void reset() {
        this.f5161a = 0;
        this.f5162b = 0;
        this.f5163c = 0;
        this.f5164d = 0;
        this.f5165e.reset();
    }

    public GLInterceptor(GLProfiler gLProfiler) {
        this.f5166f = gLProfiler;
    }
}
