package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import com.badlogic.gdx.graphics.GL20;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
@TargetApi(14)
/* renamed from: r4.mo0 */
/* loaded from: classes2.dex */
public final class mo0 extends Thread implements SurfaceTexture.OnFrameAvailableListener, ko0 {

    /* renamed from: M */
    public static final float[] f27798M = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};

    /* renamed from: A */
    public int f27799A;

    /* renamed from: B */
    public int f27800B;

    /* renamed from: C */
    public int f27801C;

    /* renamed from: D */
    public final FloatBuffer f27802D;

    /* renamed from: E */
    public final CountDownLatch f27803E;

    /* renamed from: F */
    public final Object f27804F;

    /* renamed from: G */
    public EGL10 f27805G;

    /* renamed from: H */
    public EGLDisplay f27806H;

    /* renamed from: I */
    public EGLContext f27807I;

    /* renamed from: J */
    public EGLSurface f27808J;

    /* renamed from: K */
    public volatile boolean f27809K;

    /* renamed from: L */
    public volatile boolean f27810L;

    /* renamed from: a */
    public final lo0 f27811a;

    /* renamed from: b */
    public final float[] f27812b;

    /* renamed from: d */
    public final float[] f27813d;

    /* renamed from: k */
    public final float[] f27814k;

    /* renamed from: p */
    public final float[] f27815p;

    /* renamed from: q */
    public final float[] f27816q;

    /* renamed from: r */
    public final float[] f27817r;

    /* renamed from: s */
    public final float[] f27818s;

    /* renamed from: t */
    public float f27819t;

    /* renamed from: u */
    public float f27820u;

    /* renamed from: v */
    public float f27821v;

    /* renamed from: w */
    public int f27822w;

    /* renamed from: x */
    public int f27823x;

    /* renamed from: y */
    public SurfaceTexture f27824y;

    /* renamed from: z */
    public SurfaceTexture f27825z;

    /* renamed from: h */
    public static final void m9312h(float[] fArr, float[] fArr2, float[] fArr3) {
        float f = fArr2[1];
        float f2 = fArr3[3];
        float f3 = fArr2[2];
        float f4 = fArr3[6];
        fArr[0] = (fArr2[0] * fArr3[0]) + (f * f2) + (f3 * f4);
        float f5 = fArr2[0];
        float f6 = fArr3[4];
        float f7 = fArr3[7];
        fArr[1] = (fArr3[1] * f5) + (f * f6) + (f3 * f7);
        float f8 = f5 * fArr3[2];
        float f9 = fArr2[1];
        float f10 = fArr3[5];
        float f11 = fArr3[8];
        fArr[2] = f8 + (f9 * f10) + (f3 * f11);
        float f12 = fArr2[3];
        float f13 = fArr3[0];
        float f14 = fArr2[4];
        float f15 = (f12 * f13) + (f2 * f14);
        float f16 = fArr2[5];
        fArr[3] = f15 + (f16 * f4);
        float f17 = fArr2[3];
        float f18 = fArr3[1];
        fArr[4] = (f17 * f18) + (f14 * f6) + (f16 * f7);
        float f19 = fArr3[2];
        fArr[5] = (f17 * f19) + (fArr2[4] * f10) + (f16 * f11);
        float f20 = fArr2[6] * f13;
        float f21 = fArr2[7];
        float f22 = f20 + (fArr3[3] * f21);
        float f23 = fArr2[8];
        fArr[6] = f22 + (f4 * f23);
        float f24 = fArr2[6];
        fArr[7] = (f18 * f24) + (f21 * fArr3[4]) + (f7 * f23);
        fArr[8] = (f24 * f19) + (fArr2[7] * fArr3[5]) + (f23 * f11);
    }

    /* renamed from: i */
    public static final void m9311i(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d = f;
        fArr[4] = (float) Math.cos(d);
        fArr[5] = (float) (-Math.sin(d));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d);
        fArr[8] = (float) Math.cos(d);
    }

    /* renamed from: j */
    public static final void m9310j(float[] fArr, float f) {
        double d = f;
        fArr[0] = (float) Math.cos(d);
        fArr[1] = (float) (-Math.sin(d));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d);
        fArr[4] = (float) Math.cos(d);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    /* renamed from: a */
    public final void m9319a(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f27823x = i;
        this.f27822w = i2;
        this.f27825z = surfaceTexture;
    }

    /* renamed from: d */
    public final SurfaceTexture m9316d() {
        if (this.f27825z == null) {
            return null;
        }
        try {
            this.f27803E.await();
        } catch (InterruptedException unused) {
        }
        return this.f27824y;
    }

    /* renamed from: e */
    public final void m9315e(float f, float f2) {
        int i = this.f27823x;
        int i2 = this.f27822w;
        float f3 = i > i2 ? i : i2;
        this.f27820u -= (f * 1.7453293f) / f3;
        float f4 = this.f27821v - ((f2 * 1.7453293f) / f3);
        this.f27821v = f4;
        if (f4 < -1.5707964f) {
            this.f27821v = -1.5707964f;
            f4 = -1.5707964f;
        }
        if (f4 > 1.5707964f) {
            this.f27821v = 1.5707964f;
        }
    }

    public mo0(Context context) {
        super("SphericalVideoProcessor");
        float[] fArr = f27798M;
        int length = fArr.length;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f27802D = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        this.f27812b = new float[9];
        this.f27813d = new float[9];
        this.f27814k = new float[9];
        this.f27815p = new float[9];
        this.f27816q = new float[9];
        this.f27817r = new float[9];
        this.f27818s = new float[9];
        this.f27819t = Float.NaN;
        lo0 lo0Var = new lo0(context);
        this.f27811a = lo0Var;
        lo0Var.m9601c(this);
        this.f27803E = new CountDownLatch(1);
        this.f27804F = new Object();
    }

    /* renamed from: b */
    public final void m9318b(int i, int i2) {
        synchronized (this.f27804F) {
            this.f27823x = i;
            this.f27822w = i2;
            this.f27809K = true;
            this.f27804F.notifyAll();
        }
    }

    /* renamed from: c */
    public final void m9317c() {
        synchronized (this.f27804F) {
            this.f27810L = true;
            this.f27825z = null;
            this.f27804F.notifyAll();
        }
    }

    /* renamed from: f */
    public final boolean m9314f() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2 = this.f27808J;
        boolean z = false;
        if (eGLSurface2 != null && eGLSurface2 != (eGLSurface = EGL10.EGL_NO_SURFACE)) {
            z = this.f27805G.eglDestroySurface(this.f27806H, this.f27808J) | this.f27805G.eglMakeCurrent(this.f27806H, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            this.f27808J = null;
        }
        EGLContext eGLContext = this.f27807I;
        if (eGLContext != null) {
            z |= this.f27805G.eglDestroyContext(this.f27806H, eGLContext);
            this.f27807I = null;
        }
        EGLDisplay eGLDisplay = this.f27806H;
        if (eGLDisplay != null) {
            boolean eglTerminate = this.f27805G.eglTerminate(eGLDisplay);
            this.f27806H = null;
            return eglTerminate | z;
        }
        return z;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f27801C++;
        synchronized (this.f27804F) {
            this.f27804F.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01bf A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.graphics.SurfaceTexture, android.graphics.SurfaceTexture$OnFrameAvailableListener] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 970
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.mo0.run():void");
    }

    @Override // p168r4.ko0
    public final void zza() {
        synchronized (this.f27804F) {
            this.f27804F.notifyAll();
        }
    }

    /* renamed from: g */
    public static final void m9313g(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            StringBuilder sb = new StringBuilder(str.length() + 21);
            sb.append(str);
            sb.append(": glError ");
            sb.append(glGetError);
            Log.e("SphericalVideoRenderer", sb.toString());
        }
    }

    /* renamed from: k */
    public static final int m9309k(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        m9313g("createShader");
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            m9313g("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            m9313g("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, GL20.GL_COMPILE_STATUS, iArr, 0);
            m9313g("getShaderiv");
            if (iArr[0] == 0) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Could not compile shader ");
                sb.append(i);
                sb.append(":");
                Log.e("SphericalVideoRenderer", sb.toString());
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                m9313g("deleteShader");
                return 0;
            }
        }
        return glCreateShader;
    }
}
