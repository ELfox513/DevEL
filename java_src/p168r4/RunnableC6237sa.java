package p168r4;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.os.Handler;
import android.util.Log;
/* renamed from: r4.sa */
/* loaded from: classes2.dex */
public final class RunnableC6237sa implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: r */
    public static final int[] f31284r = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: a */
    public final Handler f31285a;

    /* renamed from: b */
    public final int[] f31286b = new int[1];

    /* renamed from: d */
    public EGLDisplay f31287d;

    /* renamed from: k */
    public EGLContext f31288k;

    /* renamed from: p */
    public EGLSurface f31289p;

    /* renamed from: q */
    public SurfaceTexture f31290q;

    public RunnableC6237sa(Handler handler, InterfaceC6200ra interfaceC6200ra) {
        this.f31285a = handler;
    }

    /* renamed from: a */
    public final void m7186a(int i) {
        EGLConfig eGLConfig;
        int[] iArr;
        int[] iArr2;
        EGLSurface eglCreatePbufferSurface;
        String str;
        String str2;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay != null) {
            int[] iArr3 = new int[2];
            if (EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1)) {
                this.f31287d = eglGetDisplay;
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr4 = new int[1];
                boolean eglChooseConfig = EGL14.eglChooseConfig(eglGetDisplay, f31284r, 0, eGLConfigArr, 0, 1, iArr4, 0);
                if (eglChooseConfig && iArr4[0] > 0 && (eGLConfig = eGLConfigArr[0]) != null) {
                    EGLDisplay eGLDisplay = this.f31287d;
                    if (i == 0) {
                        iArr = new int[]{12440, 2, 12344};
                    } else {
                        iArr = new int[]{12440, 2, 12992, 1, 12344};
                    }
                    EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
                    if (eglCreateContext != null) {
                        this.f31288k = eglCreateContext;
                        EGLDisplay eGLDisplay2 = this.f31287d;
                        if (i == 1) {
                            eglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
                        } else {
                            if (i == 2) {
                                iArr2 = new int[]{12375, 1, 12374, 1, 12992, 1, 12344};
                            } else {
                                iArr2 = new int[]{12375, 1, 12374, 1, 12344};
                            }
                            eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay2, eGLConfig, iArr2, 0);
                            if (eglCreatePbufferSurface == null) {
                                throw new C6089oa("eglCreatePbufferSurface failed", null);
                            }
                        }
                        if (EGL14.eglMakeCurrent(eGLDisplay2, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext)) {
                            this.f31289p = eglCreatePbufferSurface;
                            GLES20.glGenTextures(1, this.f31286b, 0);
                            int i2 = 0;
                            while (true) {
                                int glGetError = GLES20.glGetError();
                                if (glGetError == 0) {
                                    break;
                                }
                                String valueOf = String.valueOf(GLU.gluErrorString(glGetError));
                                if (valueOf.length() != 0) {
                                    str2 = "glError ".concat(valueOf);
                                } else {
                                    str2 = new String("glError ");
                                }
                                Log.e("GlUtil", str2);
                                i2 = glGetError;
                            }
                            if (i2 != 0) {
                                String valueOf2 = String.valueOf(GLU.gluErrorString(i2));
                                if (valueOf2.length() != 0) {
                                    str = "glError ".concat(valueOf2);
                                } else {
                                    str = new String("glError ");
                                }
                                Log.e("GlUtil", str);
                            }
                            SurfaceTexture surfaceTexture = new SurfaceTexture(this.f31286b[0]);
                            this.f31290q = surfaceTexture;
                            surfaceTexture.setOnFrameAvailableListener(this);
                            return;
                        }
                        throw new C6089oa("eglMakeCurrent failed", null);
                    }
                    throw new C6089oa("eglCreateContext failed", null);
                }
                throw new C6089oa(C5979lc.m9709a0("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr4[0]), eGLConfigArr[0]), null);
            }
            throw new C6089oa("eglInitialize failed", null);
        }
        throw new C6089oa("eglGetDisplay failed", null);
    }

    /* renamed from: c */
    public final SurfaceTexture m7184c() {
        SurfaceTexture surfaceTexture = this.f31290q;
        surfaceTexture.getClass();
        return surfaceTexture;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f31285a.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTexture surfaceTexture = this.f31290q;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }

    /* renamed from: b */
    public final void m7185b() {
        this.f31285a.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f31290q;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f31286b, 0);
            }
            EGLDisplay eGLDisplay = this.f31287d;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f31287d;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f31289p;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f31287d, this.f31289p);
            }
            EGLContext eGLContext = this.f31288k;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f31287d, eGLContext);
            }
            if (C5979lc.f27164a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.f31287d;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f31287d);
            }
            this.f31287d = null;
            this.f31288k = null;
            this.f31289p = null;
            this.f31290q = null;
        } catch (Throwable th) {
            EGLDisplay eGLDisplay4 = this.f31287d;
            if (eGLDisplay4 != null && !eGLDisplay4.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay5 = this.f31287d;
                EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay5, eGLSurface3, eGLSurface3, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface4 = this.f31289p;
            if (eGLSurface4 != null && !eGLSurface4.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f31287d, this.f31289p);
            }
            EGLContext eGLContext2 = this.f31288k;
            if (eGLContext2 != null) {
                EGL14.eglDestroyContext(this.f31287d, eGLContext2);
            }
            if (C5979lc.f27164a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay6 = this.f31287d;
            if (eGLDisplay6 != null && !eGLDisplay6.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f31287d);
            }
            this.f31287d = null;
            this.f31288k = null;
            this.f31289p = null;
            this.f31290q = null;
            throw th;
        }
    }
}
