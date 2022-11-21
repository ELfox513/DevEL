package android.opengl;
/* loaded from: classes.dex */
public /* synthetic */ class EGL14 {
    static {
        throw new NoClassDefFoundError();
    }

    public static native /* synthetic */ boolean eglChooseConfig(EGLDisplay eGLDisplay, int[] iArr, int i, EGLConfig[] eGLConfigArr, int i2, int i3, int[] iArr2, int i4);

    public static native /* synthetic */ EGLContext eglCreateContext(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int[] iArr, int i);

    public static native /* synthetic */ EGLSurface eglCreatePbufferSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int[] iArr, int i);

    public static native /* synthetic */ boolean eglDestroyContext(EGLDisplay eGLDisplay, EGLContext eGLContext);

    public static native /* synthetic */ boolean eglDestroySurface(EGLDisplay eGLDisplay, EGLSurface eGLSurface);

    public static native /* synthetic */ EGLDisplay eglGetDisplay(int i);

    public static native /* synthetic */ boolean eglInitialize(EGLDisplay eGLDisplay, int[] iArr, int i, int[] iArr2, int i2);

    public static native /* synthetic */ boolean eglMakeCurrent(EGLDisplay eGLDisplay, EGLSurface eGLSurface, EGLSurface eGLSurface2, EGLContext eGLContext);

    public static native /* synthetic */ String eglQueryString(EGLDisplay eGLDisplay, int i);

    public static native /* synthetic */ boolean eglReleaseThread();

    public static native /* synthetic */ boolean eglTerminate(EGLDisplay eGLDisplay);
}
