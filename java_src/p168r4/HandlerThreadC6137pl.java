package p168r4;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
/* renamed from: r4.pl */
/* loaded from: classes2.dex */
public final class HandlerThreadC6137pl extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {

    /* renamed from: a */
    public final int[] f29504a;

    /* renamed from: b */
    public Handler f29505b;

    /* renamed from: d */
    public SurfaceTexture f29506d;

    /* renamed from: k */
    public Error f29507k;

    /* renamed from: p */
    public RuntimeException f29508p;

    /* renamed from: q */
    public C6211rl f29509q;

    public HandlerThreadC6137pl() {
        super("dummySurface");
        this.f29504a = new int[1];
    }

    /* renamed from: b */
    public final void m8284b() {
        this.f29505b.sendEmptyMessage(3);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f29505b.sendEmptyMessage(2);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i = message.what;
        try {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return true;
                    }
                    try {
                        this.f29506d.release();
                        this.f29509q = null;
                        this.f29506d = null;
                        GLES20.glDeleteTextures(1, this.f29504a, 0);
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                this.f29506d.updateTexImage();
                return true;
            }
            try {
                if (message.arg1 != 0) {
                    z = true;
                } else {
                    z = false;
                }
                EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                if (eglGetDisplay != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                C6358vk.m6136e(z2, "eglGetDisplay failed");
                int[] iArr = new int[2];
                C6358vk.m6136e(EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1), "eglInitialize failed");
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr2 = new int[1];
                if (EGL14.eglChooseConfig(eglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr2, 0) && iArr2[0] > 0 && eGLConfigArr[0] != null) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                C6358vk.m6136e(z3, "eglChooseConfig failed");
                EGLConfig eGLConfig = eGLConfigArr[0];
                EGLContext eglCreateContext = EGL14.eglCreateContext(eglGetDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, z ? new int[]{12440, 2, 12992, 1, 12344} : new int[]{12440, 2, 12344}, 0);
                if (eglCreateContext != null) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                C6358vk.m6136e(z4, "eglCreateContext failed");
                EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eglGetDisplay, eGLConfig, z ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
                if (eglCreatePbufferSurface != null) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                C6358vk.m6136e(z5, "eglCreatePbufferSurface failed");
                C6358vk.m6136e(EGL14.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), "eglMakeCurrent failed");
                GLES20.glGenTextures(1, this.f29504a, 0);
                SurfaceTexture surfaceTexture = new SurfaceTexture(this.f29504a[0]);
                this.f29506d = surfaceTexture;
                surfaceTexture.setOnFrameAvailableListener(this);
                this.f29509q = new C6211rl(this, this.f29506d, z, null);
                synchronized (this) {
                    notify();
                }
            } catch (Error e) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e);
                this.f29507k = e;
                synchronized (this) {
                    notify();
                }
            } catch (RuntimeException e2) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e2);
                this.f29508p = e2;
                synchronized (this) {
                    notify();
                }
            }
            return true;
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final C6211rl m8285a(boolean z) {
        boolean z2;
        start();
        this.f29505b = new Handler(getLooper(), this);
        synchronized (this) {
            z2 = false;
            this.f29505b.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            while (this.f29509q == null && this.f29508p == null && this.f29507k == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.f29508p;
        if (runtimeException == null) {
            Error error = this.f29507k;
            if (error == null) {
                return this.f29509q;
            }
            throw error;
        }
        throw runtimeException;
    }
}
