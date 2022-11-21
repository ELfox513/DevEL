package com.badlogic.gdx.backends.android;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Process;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import com.badlogic.gdx.AbstractGraphics;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.backends.android.surfaceview.GLSurfaceView20;
import com.badlogic.gdx.backends.android.surfaceview.GdxEglConfigChooser;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
import com.badlogic.gdx.graphics.Cubemap;
import com.badlogic.gdx.graphics.Cursor;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GL30;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.TextureArray;
import com.badlogic.gdx.graphics.glutils.GLFrameBuffer;
import com.badlogic.gdx.graphics.glutils.GLVersion;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.SnapshotArray;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes.dex */
public class AndroidGraphics extends AbstractGraphics implements GLSurfaceView.Renderer {

    /* renamed from: I */
    public static volatile boolean f3638I = false;

    /* renamed from: A */
    public float f3639A;

    /* renamed from: B */
    public float f3640B;

    /* renamed from: C */
    public float f3641C;

    /* renamed from: D */
    public final AndroidApplicationConfiguration f3642D;

    /* renamed from: E */
    public Graphics.BufferFormat f3643E;

    /* renamed from: F */
    public boolean f3644F;

    /* renamed from: G */
    public int[] f3645G;

    /* renamed from: H */
    public Object f3646H;

    /* renamed from: a */
    public final GLSurfaceView20 f3647a;

    /* renamed from: b */
    public int f3648b;

    /* renamed from: c */
    public int f3649c;

    /* renamed from: d */
    public int f3650d;

    /* renamed from: e */
    public int f3651e;

    /* renamed from: f */
    public int f3652f;

    /* renamed from: g */
    public int f3653g;

    /* renamed from: h */
    public AndroidApplicationBase f3654h;

    /* renamed from: i */
    public GL20 f3655i;

    /* renamed from: j */
    public GL30 f3656j;

    /* renamed from: k */
    public EGLContext f3657k;

    /* renamed from: l */
    public GLVersion f3658l;

    /* renamed from: m */
    public String f3659m;

    /* renamed from: n */
    public long f3660n;

    /* renamed from: o */
    public float f3661o;

    /* renamed from: p */
    public long f3662p;

    /* renamed from: q */
    public long f3663q;

    /* renamed from: r */
    public int f3664r;

    /* renamed from: s */
    public int f3665s;

    /* renamed from: t */
    public volatile boolean f3666t;

    /* renamed from: u */
    public volatile boolean f3667u;

    /* renamed from: v */
    public volatile boolean f3668v;

    /* renamed from: w */
    public volatile boolean f3669w;

    /* renamed from: x */
    public volatile boolean f3670x;

    /* renamed from: y */
    public float f3671y;

    /* renamed from: z */
    public float f3672z;

    /* loaded from: classes.dex */
    public class AndroidDisplayMode extends Graphics.DisplayMode {
        public AndroidDisplayMode(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }
    }

    /* loaded from: classes.dex */
    public class AndroidMonitor extends Graphics.Monitor {
        public AndroidMonitor(int i, int i2, String str) {
            super(i, i2, str);
        }
    }

    public AndroidGraphics(AndroidApplicationBase androidApplicationBase, AndroidApplicationConfiguration androidApplicationConfiguration, ResolutionStrategy resolutionStrategy) {
        this(androidApplicationBase, androidApplicationConfiguration, resolutionStrategy, true);
    }

    /* renamed from: e */
    public GLSurfaceView.EGLConfigChooser m24324e() {
        AndroidApplicationConfiguration androidApplicationConfiguration = this.f3642D;
        return new GdxEglConfigChooser(androidApplicationConfiguration.f3592r, androidApplicationConfiguration.f3591g, androidApplicationConfiguration.f3590b, androidApplicationConfiguration.f3589a, androidApplicationConfiguration.depth, androidApplicationConfiguration.stencil, androidApplicationConfiguration.numSamples);
    }

    @Override // com.badlogic.gdx.Graphics
    public int getBackBufferHeight() {
        return this.f3649c;
    }

    @Override // com.badlogic.gdx.Graphics
    public int getBackBufferWidth() {
        return this.f3648b;
    }

    @Override // com.badlogic.gdx.Graphics
    public Graphics.BufferFormat getBufferFormat() {
        return this.f3643E;
    }

    @Override // com.badlogic.gdx.Graphics
    public float getDeltaTime() {
        return this.f3661o;
    }

    @Override // com.badlogic.gdx.AbstractGraphics, com.badlogic.gdx.Graphics
    public float getDensity() {
        return this.f3641C;
    }

    @Override // com.badlogic.gdx.Graphics
    public Graphics.DisplayMode getDisplayMode(Graphics.Monitor monitor) {
        return getDisplayMode();
    }

    @Override // com.badlogic.gdx.Graphics
    public Graphics.DisplayMode[] getDisplayModes(Graphics.Monitor monitor) {
        return getDisplayModes();
    }

    @Override // com.badlogic.gdx.Graphics
    public long getFrameId() {
        return this.f3663q;
    }

    @Override // com.badlogic.gdx.Graphics
    public int getFramesPerSecond() {
        return this.f3665s;
    }

    @Override // com.badlogic.gdx.Graphics
    public GL20 getGL20() {
        return this.f3655i;
    }

    @Override // com.badlogic.gdx.Graphics
    public GL30 getGL30() {
        return this.f3656j;
    }

    @Override // com.badlogic.gdx.Graphics
    public GLVersion getGLVersion() {
        return this.f3658l;
    }

    @Override // com.badlogic.gdx.Graphics
    public int getHeight() {
        return this.f3649c;
    }

    @Override // com.badlogic.gdx.Graphics
    public Graphics.Monitor getMonitor() {
        return getPrimaryMonitor();
    }

    @Override // com.badlogic.gdx.Graphics
    public Graphics.Monitor[] getMonitors() {
        return new Graphics.Monitor[]{getPrimaryMonitor()};
    }

    @Override // com.badlogic.gdx.Graphics
    public float getPpcX() {
        return this.f3639A;
    }

    @Override // com.badlogic.gdx.Graphics
    public float getPpcY() {
        return this.f3640B;
    }

    @Override // com.badlogic.gdx.Graphics
    public float getPpiX() {
        return this.f3671y;
    }

    @Override // com.badlogic.gdx.Graphics
    public float getPpiY() {
        return this.f3672z;
    }

    @Override // com.badlogic.gdx.Graphics
    public Graphics.Monitor getPrimaryMonitor() {
        return new AndroidMonitor(0, 0, "Primary Monitor");
    }

    @Override // com.badlogic.gdx.Graphics
    public int getSafeInsetBottom() {
        return this.f3652f;
    }

    @Override // com.badlogic.gdx.Graphics
    public int getSafeInsetLeft() {
        return this.f3650d;
    }

    @Override // com.badlogic.gdx.Graphics
    public int getSafeInsetRight() {
        return this.f3653g;
    }

    @Override // com.badlogic.gdx.Graphics
    public int getSafeInsetTop() {
        return this.f3651e;
    }

    @Override // com.badlogic.gdx.Graphics
    public Graphics.GraphicsType getType() {
        return Graphics.GraphicsType.AndroidGL;
    }

    public View getView() {
        return this.f3647a;
    }

    @Override // com.badlogic.gdx.Graphics
    public int getWidth() {
        return this.f3648b;
    }

    /* renamed from: i */
    public void m24321i() {
        this.f3647a.setPreserveEGLContextOnPause(true);
    }

    @Override // com.badlogic.gdx.Graphics
    public boolean isContinuousRendering() {
        return this.f3644F;
    }

    @Override // com.badlogic.gdx.Graphics
    public boolean isFullscreen() {
        return true;
    }

    @Override // com.badlogic.gdx.Graphics
    public boolean isGL30Available() {
        return this.f3656j != null;
    }

    /* renamed from: m */
    public void m24318m() {
        WindowInsets rootWindowInsets;
        DisplayCutout displayCutout;
        this.f3650d = 0;
        this.f3651e = 0;
        this.f3653g = 0;
        this.f3652f = 0;
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                rootWindowInsets = this.f3654h.getApplicationWindow().getDecorView().getRootWindowInsets();
                displayCutout = rootWindowInsets.getDisplayCutout();
                if (displayCutout != null) {
                    this.f3653g = displayCutout.getSafeInsetRight();
                    this.f3652f = displayCutout.getSafeInsetBottom();
                    this.f3651e = displayCutout.getSafeInsetTop();
                    this.f3650d = displayCutout.getSafeInsetLeft();
                }
            } catch (UnsupportedOperationException unused) {
                Gdx.app.log("AndroidGraphics", "Unable to get safe area insets");
            }
        }
    }

    @Override // com.badlogic.gdx.Graphics
    public Cursor newCursor(Pixmap pixmap, int i, int i2) {
        return null;
    }

    @Override // com.badlogic.gdx.Graphics
    public void setCursor(Cursor cursor) {
    }

    @Override // com.badlogic.gdx.Graphics
    public void setForegroundFPS(int i) {
    }

    @Override // com.badlogic.gdx.Graphics
    public boolean setFullscreenMode(Graphics.DisplayMode displayMode) {
        return false;
    }

    @Override // com.badlogic.gdx.Graphics
    public void setResizable(boolean z) {
    }

    @Override // com.badlogic.gdx.Graphics
    public void setTitle(String str) {
    }

    @Override // com.badlogic.gdx.Graphics
    public void setUndecorated(boolean z) {
        this.f3654h.getApplicationWindow().setFlags(1024, z ? 1 : 0);
    }

    @Override // com.badlogic.gdx.Graphics
    public void setVSync(boolean z) {
    }

    @Override // com.badlogic.gdx.Graphics
    public boolean setWindowedMode(int i, int i2) {
        return false;
    }

    @Override // com.badlogic.gdx.Graphics
    public boolean supportsDisplayModeChange() {
        return false;
    }

    public AndroidGraphics(AndroidApplicationBase androidApplicationBase, AndroidApplicationConfiguration androidApplicationConfiguration, ResolutionStrategy resolutionStrategy, boolean z) {
        this.f3660n = System.nanoTime();
        this.f3661o = 0.0f;
        this.f3662p = System.nanoTime();
        this.f3663q = -1L;
        this.f3664r = 0;
        this.f3666t = false;
        this.f3667u = false;
        this.f3668v = false;
        this.f3669w = false;
        this.f3670x = false;
        this.f3671y = 0.0f;
        this.f3672z = 0.0f;
        this.f3639A = 0.0f;
        this.f3640B = 0.0f;
        this.f3641C = 1.0f;
        this.f3643E = new Graphics.BufferFormat(8, 8, 8, 0, 16, 0, 0, false);
        this.f3644F = true;
        this.f3645G = new int[1];
        this.f3646H = new Object();
        this.f3642D = androidApplicationConfiguration;
        this.f3654h = androidApplicationBase;
        GLSurfaceView20 mo24317b = mo24317b(androidApplicationBase, resolutionStrategy);
        this.f3647a = mo24317b;
        m24321i();
        if (z) {
            mo24317b.setFocusable(true);
            mo24317b.setFocusableInTouchMode(true);
        }
    }

    /* renamed from: c */
    public void m24326c() {
        synchronized (this.f3646H) {
            this.f3667u = false;
            this.f3670x = true;
            while (this.f3670x) {
                try {
                    this.f3646H.wait();
                } catch (InterruptedException unused) {
                    Gdx.app.log("AndroidGraphics", "waiting for destroy synchronization failed!");
                }
            }
        }
    }

    public void clearManagedCaches() {
        Mesh.clearAllMeshes(this.f3654h);
        Texture.clearAllTextures(this.f3654h);
        Cubemap.clearAllCubemaps(this.f3654h);
        TextureArray.clearAllTextureArrays(this.f3654h);
        ShaderProgram.clearAllShaderPrograms(this.f3654h);
        GLFrameBuffer.clearAllFrameBuffers(this.f3654h);
        mo24316g();
    }

    /* renamed from: d */
    public final int m24325d(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
        if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.f3645G)) {
            return this.f3645G[0];
        }
        return i2;
    }

    /* renamed from: g */
    public void mo24316g() {
        Gdx.app.log("AndroidGraphics", Mesh.getManagedStatus());
        Gdx.app.log("AndroidGraphics", Texture.getManagedStatus());
        Gdx.app.log("AndroidGraphics", Cubemap.getManagedStatus());
        Gdx.app.log("AndroidGraphics", ShaderProgram.getManagedStatus());
        Gdx.app.log("AndroidGraphics", GLFrameBuffer.getManagedStatus());
    }

    @Override // com.badlogic.gdx.Graphics
    public Graphics.DisplayMode getDisplayMode() {
        Display defaultDisplay;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay = ((DisplayManager) this.f3654h.getContext().getSystemService("display")).getDisplay(0);
            defaultDisplay.getRealMetrics(displayMetrics);
        } else {
            defaultDisplay = this.f3654h.getWindowManager().getDefaultDisplay();
            defaultDisplay.getMetrics(displayMetrics);
        }
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        int roundPositive = MathUtils.roundPositive(defaultDisplay.getRefreshRate());
        AndroidApplicationConfiguration androidApplicationConfiguration = this.f3642D;
        return new AndroidDisplayMode(i, i2, roundPositive, androidApplicationConfiguration.f3592r + androidApplicationConfiguration.f3591g + androidApplicationConfiguration.f3590b + androidApplicationConfiguration.f3589a);
    }

    @Override // com.badlogic.gdx.Graphics
    public Graphics.DisplayMode[] getDisplayModes() {
        return new Graphics.DisplayMode[]{getDisplayMode()};
    }

    /* renamed from: h */
    public void m24322h() {
        synchronized (this.f3646H) {
            if (!this.f3667u) {
                return;
            }
            this.f3667u = false;
            this.f3668v = true;
            this.f3647a.queueEvent(new Runnable() { // from class: com.badlogic.gdx.backends.android.AndroidGraphics.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!AndroidGraphics.this.f3668v) {
                        return;
                    }
                    AndroidGraphics.this.onDrawFrame(null);
                }
            });
            while (this.f3668v) {
                try {
                    this.f3646H.wait(4000L);
                    if (this.f3668v) {
                        Gdx.app.error("AndroidGraphics", "waiting for pause synchronization took too long; assuming deadlock and killing");
                        Process.killProcess(Process.myPid());
                    }
                } catch (InterruptedException unused) {
                    Gdx.app.log("AndroidGraphics", "waiting for pause synchronization failed!");
                }
            }
        }
    }

    /* renamed from: j */
    public void mo24315j() {
        synchronized (this.f3646H) {
            this.f3667u = true;
            this.f3669w = true;
        }
    }

    /* renamed from: k */
    public void m24320k(GL10 gl10) {
        GLVersion gLVersion = new GLVersion(Application.ApplicationType.Android, gl10.glGetString(GL20.GL_VERSION), gl10.glGetString(GL20.GL_VENDOR), gl10.glGetString(GL20.GL_RENDERER));
        this.f3658l = gLVersion;
        if (this.f3642D.useGL30 && gLVersion.getMajorVersion() > 2) {
            if (this.f3656j != null) {
                return;
            }
            AndroidGL30 androidGL30 = new AndroidGL30();
            this.f3656j = androidGL30;
            this.f3655i = androidGL30;
            Gdx.f3119gl = androidGL30;
            Gdx.gl20 = androidGL30;
            Gdx.gl30 = androidGL30;
        } else if (this.f3655i != null) {
            return;
        } else {
            AndroidGL20 androidGL20 = new AndroidGL20();
            this.f3655i = androidGL20;
            Gdx.f3119gl = androidGL20;
            Gdx.gl20 = androidGL20;
        }
        Application application = Gdx.app;
        application.log("AndroidGraphics", "OGL renderer: " + gl10.glGetString(GL20.GL_RENDERER));
        Application application2 = Gdx.app;
        application2.log("AndroidGraphics", "OGL vendor: " + gl10.glGetString(GL20.GL_VENDOR));
        Application application3 = Gdx.app;
        application3.log("AndroidGraphics", "OGL version: " + gl10.glGetString(GL20.GL_VERSION));
        Application application4 = Gdx.app;
        application4.log("AndroidGraphics", "OGL extensions: " + gl10.glGetString(GL20.GL_EXTENSIONS));
    }

    /* renamed from: l */
    public void m24319l() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.f3654h.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        float f = displayMetrics.xdpi;
        this.f3671y = f;
        float f2 = displayMetrics.ydpi;
        this.f3672z = f2;
        this.f3639A = f / 2.54f;
        this.f3640B = f2 / 2.54f;
        this.f3641C = displayMetrics.density;
    }

    public void onPauseGLSurfaceView() {
        GLSurfaceView20 gLSurfaceView20 = this.f3647a;
        if (gLSurfaceView20 != null) {
            gLSurfaceView20.onPause();
        }
    }

    public void onResumeGLSurfaceView() {
        GLSurfaceView20 gLSurfaceView20 = this.f3647a;
        if (gLSurfaceView20 != null) {
            gLSurfaceView20.onResume();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        this.f3648b = i;
        this.f3649c = i2;
        m24319l();
        m24318m();
        gl10.glViewport(0, 0, this.f3648b, this.f3649c);
        if (!this.f3666t) {
            this.f3654h.getApplicationListener().create();
            this.f3666t = true;
            synchronized (this) {
                this.f3667u = true;
            }
        }
        this.f3654h.getApplicationListener().resize(i, i2);
    }

    @Override // com.badlogic.gdx.Graphics
    public void requestRendering() {
        GLSurfaceView20 gLSurfaceView20 = this.f3647a;
        if (gLSurfaceView20 != null) {
            gLSurfaceView20.requestRender();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    @Override // com.badlogic.gdx.Graphics
    public void setContinuousRendering(boolean z) {
        ?? r2;
        if (this.f3647a != null) {
            if (!f3638I && !z) {
                r2 = 0;
            } else {
                r2 = 1;
            }
            this.f3644F = r2;
            this.f3647a.setRenderMode(r2);
        }
    }

    @Override // com.badlogic.gdx.Graphics
    public void setGL20(GL20 gl20) {
        this.f3655i = gl20;
        if (this.f3656j == null) {
            Gdx.f3119gl = gl20;
            Gdx.gl20 = gl20;
        }
    }

    @Override // com.badlogic.gdx.Graphics
    public void setGL30(GL30 gl30) {
        this.f3656j = gl30;
        if (gl30 != null) {
            this.f3655i = gl30;
            Gdx.f3119gl = gl30;
            Gdx.gl20 = gl30;
            Gdx.gl30 = gl30;
        }
    }

    @Override // com.badlogic.gdx.Graphics
    public void setSystemCursor(Cursor.SystemCursor systemCursor) {
        AndroidCursor.m24335a(((AndroidGraphics) this.f3654h.getGraphics()).getView(), systemCursor);
    }

    @Override // com.badlogic.gdx.Graphics
    public boolean supportsExtension(String str) {
        if (this.f3659m == null) {
            this.f3659m = Gdx.f3119gl.glGetString(GL20.GL_EXTENSIONS);
        }
        return this.f3659m.contains(str);
    }

    /* renamed from: a */
    public boolean m24327a() {
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        egl10.eglInitialize(eglGetDisplay, new int[2]);
        int[] iArr = new int[1];
        egl10.eglChooseConfig(eglGetDisplay, new int[]{12324, 4, 12323, 4, 12322, 4, 12352, 4, 12344}, new EGLConfig[10], 10, iArr);
        egl10.eglTerminate(eglGetDisplay);
        if (iArr[0] > 0) {
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public GLSurfaceView20 mo24317b(AndroidApplicationBase androidApplicationBase, ResolutionStrategy resolutionStrategy) {
        int i;
        if (m24327a()) {
            GLSurfaceView.EGLConfigChooser m24324e = m24324e();
            Context context = androidApplicationBase.getContext();
            if (this.f3642D.useGL30) {
                i = 3;
            } else {
                i = 2;
            }
            GLSurfaceView20 gLSurfaceView20 = new GLSurfaceView20(context, resolutionStrategy, i);
            if (m24324e != null) {
                gLSurfaceView20.setEGLConfigChooser(m24324e);
            } else {
                AndroidApplicationConfiguration androidApplicationConfiguration = this.f3642D;
                gLSurfaceView20.setEGLConfigChooser(androidApplicationConfiguration.f3592r, androidApplicationConfiguration.f3591g, androidApplicationConfiguration.f3590b, androidApplicationConfiguration.f3589a, androidApplicationConfiguration.depth, androidApplicationConfiguration.stencil);
            }
            gLSurfaceView20.setRenderer(this);
            return gLSurfaceView20;
        }
        throw new GdxRuntimeException("libGDX requires OpenGL ES 2.0");
    }

    /* renamed from: f */
    public void m24323f(EGLConfig eGLConfig) {
        boolean z;
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        int m24325d = m24325d(egl10, eglGetDisplay, eGLConfig, 12324, 0);
        int m24325d2 = m24325d(egl10, eglGetDisplay, eGLConfig, 12323, 0);
        int m24325d3 = m24325d(egl10, eglGetDisplay, eGLConfig, 12322, 0);
        int m24325d4 = m24325d(egl10, eglGetDisplay, eGLConfig, 12321, 0);
        int m24325d5 = m24325d(egl10, eglGetDisplay, eGLConfig, 12325, 0);
        int m24325d6 = m24325d(egl10, eglGetDisplay, eGLConfig, 12326, 0);
        int max = Math.max(m24325d(egl10, eglGetDisplay, eGLConfig, 12337, 0), m24325d(egl10, eglGetDisplay, eGLConfig, GdxEglConfigChooser.EGL_COVERAGE_SAMPLES_NV, 0));
        if (m24325d(egl10, eglGetDisplay, eGLConfig, GdxEglConfigChooser.EGL_COVERAGE_SAMPLES_NV, 0) != 0) {
            z = true;
        } else {
            z = false;
        }
        Application application = Gdx.app;
        application.log("AndroidGraphics", "framebuffer: (" + m24325d + ", " + m24325d2 + ", " + m24325d3 + ", " + m24325d4 + ")");
        Application application2 = Gdx.app;
        StringBuilder sb = new StringBuilder();
        sb.append("depthbuffer: (");
        sb.append(m24325d5);
        sb.append(")");
        application2.log("AndroidGraphics", sb.toString());
        Application application3 = Gdx.app;
        application3.log("AndroidGraphics", "stencilbuffer: (" + m24325d6 + ")");
        Application application4 = Gdx.app;
        application4.log("AndroidGraphics", "samples: (" + max + ")");
        Application application5 = Gdx.app;
        application5.log("AndroidGraphics", "coverage sampling: (" + z + ")");
        this.f3643E = new Graphics.BufferFormat(m24325d, m24325d2, m24325d3, m24325d4, m24325d5, m24325d6, max, z);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        long nanoTime = System.nanoTime();
        if (!this.f3669w) {
            this.f3661o = ((float) (nanoTime - this.f3660n)) / 1.0E9f;
        } else {
            this.f3661o = 0.0f;
        }
        this.f3660n = nanoTime;
        synchronized (this.f3646H) {
            z = this.f3667u;
            z2 = this.f3668v;
            z3 = this.f3670x;
            z4 = this.f3669w;
            if (this.f3669w) {
                this.f3669w = false;
            }
            if (this.f3668v) {
                this.f3668v = false;
                this.f3646H.notifyAll();
            }
            if (this.f3670x) {
                this.f3670x = false;
                this.f3646H.notifyAll();
            }
        }
        if (z4) {
            SnapshotArray<LifecycleListener> lifecycleListeners = this.f3654h.getLifecycleListeners();
            synchronized (lifecycleListeners) {
                LifecycleListener[] begin = lifecycleListeners.begin();
                int i = lifecycleListeners.size;
                for (int i2 = 0; i2 < i; i2++) {
                    begin[i2].resume();
                }
                lifecycleListeners.end();
            }
            this.f3654h.getApplicationListener().resume();
            Gdx.app.log("AndroidGraphics", "resumed");
        }
        if (z) {
            synchronized (this.f3654h.getRunnables()) {
                this.f3654h.getExecutedRunnables().clear();
                this.f3654h.getExecutedRunnables().addAll(this.f3654h.getRunnables());
                this.f3654h.getRunnables().clear();
            }
            for (int i3 = 0; i3 < this.f3654h.getExecutedRunnables().size; i3++) {
                try {
                    this.f3654h.getExecutedRunnables().get(i3).run();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            this.f3654h.getInput().processEvents();
            this.f3663q++;
            this.f3654h.getApplicationListener().render();
        }
        if (z2) {
            SnapshotArray<LifecycleListener> lifecycleListeners2 = this.f3654h.getLifecycleListeners();
            synchronized (lifecycleListeners2) {
                LifecycleListener[] begin2 = lifecycleListeners2.begin();
                int i4 = lifecycleListeners2.size;
                for (int i5 = 0; i5 < i4; i5++) {
                    begin2[i5].pause();
                }
            }
            this.f3654h.getApplicationListener().pause();
            Gdx.app.log("AndroidGraphics", "paused");
        }
        if (z3) {
            SnapshotArray<LifecycleListener> lifecycleListeners3 = this.f3654h.getLifecycleListeners();
            synchronized (lifecycleListeners3) {
                LifecycleListener[] begin3 = lifecycleListeners3.begin();
                int i6 = lifecycleListeners3.size;
                for (int i7 = 0; i7 < i6; i7++) {
                    begin3[i7].dispose();
                }
            }
            this.f3654h.getApplicationListener().dispose();
            Gdx.app.log("AndroidGraphics", "destroyed");
        }
        if (nanoTime - this.f3662p > 1000000000) {
            this.f3665s = this.f3664r;
            this.f3664r = 0;
            this.f3662p = nanoTime;
        }
        this.f3664r++;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        this.f3657k = ((EGL10) EGLContext.getEGL()).eglGetCurrentContext();
        m24320k(gl10);
        m24323f(eGLConfig);
        m24319l();
        m24318m();
        Mesh.invalidateAllMeshes(this.f3654h);
        Texture.invalidateAllTextures(this.f3654h);
        Cubemap.invalidateAllCubemaps(this.f3654h);
        TextureArray.invalidateAllTextureArrays(this.f3654h);
        ShaderProgram.invalidateAllShaderPrograms(this.f3654h);
        GLFrameBuffer.invalidateAllFrameBuffers(this.f3654h);
        mo24316g();
        Display defaultDisplay = this.f3654h.getWindowManager().getDefaultDisplay();
        this.f3648b = defaultDisplay.getWidth();
        this.f3649c = defaultDisplay.getHeight();
        this.f3660n = System.nanoTime();
        gl10.glViewport(0, 0, this.f3648b, this.f3649c);
    }
}
