package com.badlogic.gdx.backends.android.surfaceview;

import android.annotation.TargetApi;
import android.content.Context;
import android.opengl.GLSurfaceView;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.backends.android.DefaultAndroidInput;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
/* loaded from: classes.dex */
public class GLSurfaceView20 extends GLSurfaceView {

    /* renamed from: b */
    public static String f3860b = "GL2JNIView";

    /* renamed from: d */
    public static int f3861d;

    /* renamed from: a */
    public final ResolutionStrategy f3862a;
    public Input.OnscreenKeyboardType onscreenKeyboardType;

    /* loaded from: classes.dex */
    public static class ConfigChooser implements GLSurfaceView.EGLConfigChooser {

        /* renamed from: h */
        public static int[] f3864h = {12324, 4, 12323, 4, 12322, 4, 12352, 4, 12344};

        /* renamed from: a */
        public int f3865a;

        /* renamed from: b */
        public int f3866b;

        /* renamed from: c */
        public int f3867c;

        /* renamed from: d */
        public int f3868d;

        /* renamed from: e */
        public int f3869e;

        /* renamed from: f */
        public int f3870f;

        /* renamed from: g */
        public int[] f3871g = new int[1];

        @Override // android.opengl.GLSurfaceView.EGLConfigChooser
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            egl10.eglChooseConfig(eGLDisplay, f3864h, null, 0, iArr);
            int i = iArr[0];
            if (i > 0) {
                EGLConfig[] eGLConfigArr = new EGLConfig[i];
                egl10.eglChooseConfig(eGLDisplay, f3864h, eGLConfigArr, i, iArr);
                return chooseConfig(egl10, eGLDisplay, eGLConfigArr);
            }
            throw new IllegalArgumentException("No configs match configSpec");
        }

        /* renamed from: a */
        public final int m24269a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
            if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.f3871g)) {
                return this.f3871g[0];
            }
            return i2;
        }

        public ConfigChooser(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f3865a = i;
            this.f3866b = i2;
            this.f3867c = i3;
            this.f3868d = i4;
            this.f3869e = i5;
            this.f3870f = i6;
        }

        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                int m24269a = m24269a(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int m24269a2 = m24269a(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (m24269a >= this.f3869e && m24269a2 >= this.f3870f) {
                    int m24269a3 = m24269a(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int m24269a4 = m24269a(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int m24269a5 = m24269a(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int m24269a6 = m24269a(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (m24269a3 == this.f3865a && m24269a4 == this.f3866b && m24269a5 == this.f3867c && m24269a6 == this.f3868d) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class ContextFactory implements GLSurfaceView.EGLContextFactory {

        /* renamed from: a */
        public static int f3872a = 12440;

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            egl10.eglDestroyContext(eGLDisplay, eGLContext);
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            String str = GLSurfaceView20.f3860b;
            Log.w(str, "creating OpenGL ES " + GLSurfaceView20.f3861d + ".0 context");
            StringBuilder sb = new StringBuilder();
            sb.append("Before eglCreateContext ");
            sb.append(GLSurfaceView20.f3861d);
            GLSurfaceView20.m24272a(sb.toString(), egl10);
            EGLContext eglCreateContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{f3872a, GLSurfaceView20.f3861d, 12344});
            if ((!GLSurfaceView20.m24272a("After eglCreateContext " + GLSurfaceView20.f3861d, egl10) || eglCreateContext == null) && GLSurfaceView20.f3861d > 2) {
                Log.w(GLSurfaceView20.f3860b, "Falling back to GLES 2");
                GLSurfaceView20.f3861d = 2;
                return createContext(egl10, eGLDisplay, eGLConfig);
            }
            String str2 = GLSurfaceView20.f3860b;
            Log.w(str2, "Returning a GLES " + GLSurfaceView20.f3861d + " context");
            return eglCreateContext;
        }
    }

    public GLSurfaceView20(Context context, ResolutionStrategy resolutionStrategy, int i) {
        super(context);
        this.onscreenKeyboardType = Input.OnscreenKeyboardType.Default;
        f3861d = i;
        this.f3862a = resolutionStrategy;
        m24271b(false, 16, 0);
    }

    /* renamed from: a */
    public static boolean m24272a(String str, EGL10 egl10) {
        boolean z = true;
        while (true) {
            int eglGetError = egl10.eglGetError();
            if (eglGetError != 12288) {
                Log.e(f3860b, String.format("%s: EGL error: 0x%x", str, Integer.valueOf(eglGetError)));
                z = false;
            } else {
                return z;
            }
        }
    }

    /* renamed from: b */
    public final void m24271b(boolean z, int i, int i2) {
        ConfigChooser configChooser;
        if (z) {
            getHolder().setFormat(-3);
        }
        setEGLContextFactory(new ContextFactory());
        if (z) {
            configChooser = new ConfigChooser(8, 8, 8, 8, i, i2);
        } else {
            configChooser = new ConfigChooser(8, 8, 8, 0, i, i2);
        }
        setEGLConfigChooser(configChooser);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        if (editorInfo != null) {
            editorInfo.imeOptions |= 268435456;
            editorInfo.inputType = DefaultAndroidInput.getAndroidInputType(this.onscreenKeyboardType);
        }
        return new BaseInputConnection(this, false) { // from class: com.badlogic.gdx.backends.android.surfaceview.GLSurfaceView20.1
            @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
            public boolean deleteSurroundingText(int i, int i2) {
                if (i == 1 && i2 == 0) {
                    m24270a(67);
                    return true;
                }
                return super.deleteSurroundingText(i, i2);
            }

            @TargetApi(16)
            /* renamed from: a */
            public final void m24270a(int i) {
                long uptimeMillis = SystemClock.uptimeMillis();
                super.sendKeyEvent(new KeyEvent(uptimeMillis, uptimeMillis, 0, i, 0, 0, -1, 0, 6));
                super.sendKeyEvent(new KeyEvent(SystemClock.uptimeMillis(), uptimeMillis, 1, i, 0, 0, -1, 0, 6));
            }
        };
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onMeasure(int i, int i2) {
        ResolutionStrategy.MeasuredDimension calcMeasures = this.f3862a.calcMeasures(i, i2);
        setMeasuredDimension(calcMeasures.width, calcMeasures.height);
    }

    public GLSurfaceView20(Context context, ResolutionStrategy resolutionStrategy) {
        this(context, resolutionStrategy, 2);
    }

    public GLSurfaceView20(Context context, boolean z, int i, int i2, ResolutionStrategy resolutionStrategy) {
        super(context);
        this.onscreenKeyboardType = Input.OnscreenKeyboardType.Default;
        this.f3862a = resolutionStrategy;
        m24271b(z, i, i2);
    }
}
