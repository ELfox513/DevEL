package com.badlogic.gdx.backends.android.surfaceview;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
/* loaded from: classes.dex */
public class GdxEglConfigChooser implements GLSurfaceView.EGLConfigChooser {
    public static final int EGL_COVERAGE_BUFFERS_NV = 12512;
    public static final int EGL_COVERAGE_SAMPLES_NV = 12513;

    /* renamed from: a */
    public int f3873a;

    /* renamed from: b */
    public int f3874b;

    /* renamed from: c */
    public int f3875c;

    /* renamed from: d */
    public int f3876d;

    /* renamed from: e */
    public int f3877e;

    /* renamed from: f */
    public int f3878f;

    /* renamed from: g */
    public int f3879g;

    /* renamed from: i */
    public int[] f3881i = new int[1];

    /* renamed from: h */
    public final int[] f3880h = {12324, 4, 12323, 4, 12322, 4, 12352, 4, 12344};

    @Override // android.opengl.GLSurfaceView.EGLConfigChooser
    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] iArr = new int[1];
        egl10.eglChooseConfig(eGLDisplay, this.f3880h, null, 0, iArr);
        int i = iArr[0];
        if (i > 0) {
            EGLConfig[] eGLConfigArr = new EGLConfig[i];
            egl10.eglChooseConfig(eGLDisplay, this.f3880h, eGLConfigArr, i, iArr);
            return chooseConfig(egl10, eGLDisplay, eGLConfigArr);
        }
        throw new IllegalArgumentException("No configs match configSpec");
    }

    /* renamed from: a */
    public final int m24268a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
        if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.f3881i)) {
            return this.f3881i[0];
        }
        return i2;
    }

    public GdxEglConfigChooser(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f3873a = i;
        this.f3874b = i2;
        this.f3875c = i3;
        this.f3876d = i4;
        this.f3877e = i5;
        this.f3878f = i6;
        this.f3879g = i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00e2, code lost:
        if (r5 == r19.f3876d) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public javax.microedition.khronos.egl.EGLConfig chooseConfig(javax.microedition.khronos.egl.EGL10 r20, javax.microedition.khronos.egl.EGLDisplay r21, javax.microedition.khronos.egl.EGLConfig[] r22) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.backends.android.surfaceview.GdxEglConfigChooser.chooseConfig(javax.microedition.khronos.egl.EGL10, javax.microedition.khronos.egl.EGLDisplay, javax.microedition.khronos.egl.EGLConfig[]):javax.microedition.khronos.egl.EGLConfig");
    }
}
