.class public synthetic Landroid/opengl/EGL14;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public static native synthetic eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z
.end method

.method public static native synthetic eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;
.end method

.method public static native synthetic eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;
.end method

.method public static native synthetic eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z
.end method

.method public static native synthetic eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
.end method

.method public static native synthetic eglGetDisplay(I)Landroid/opengl/EGLDisplay;
.end method

.method public static native synthetic eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z
.end method

.method public static native synthetic eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z
.end method

.method public static native synthetic eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;
.end method

.method public static native synthetic eglReleaseThread()Z
.end method

.method public static native synthetic eglTerminate(Landroid/opengl/EGLDisplay;)Z
.end method
