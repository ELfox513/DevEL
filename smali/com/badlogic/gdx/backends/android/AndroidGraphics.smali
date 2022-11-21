.class public Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.super Lcom/badlogic/gdx/AbstractGraphics;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidMonitor;,
        Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;
    }
.end annotation


# static fields
.field public static volatile I:Z = false


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public final D:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

.field public E:Lcom/badlogic/gdx/Graphics$BufferFormat;

.field public F:Z

.field public G:[I

.field public H:Ljava/lang/Object;

.field public final a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

.field public i:Lcom/badlogic/gdx/graphics/GL20;

.field public j:Lcom/badlogic/gdx/graphics/GL30;

.field public k:Ljavax/microedition/khronos/egl/EGLContext;

.field public l:Lcom/badlogic/gdx/graphics/glutils/GLVersion;

.field public m:Ljava/lang/String;

.field public n:J

.field public o:F

.field public p:J

.field public q:J

.field public r:I

.field public s:I

.field public volatile t:Z

.field public volatile u:Z

.field public volatile v:Z

.field public volatile w:Z

.field public volatile x:Z

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;Z)V
    .locals 10

    invoke-direct {p0}, Lcom/badlogic/gdx/AbstractGraphics;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->n:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->o:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->p:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->q:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->r:I

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->t:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->u:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->v:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->x:Z

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->y:F

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->z:F

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->A:F

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->B:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->C:F

    new-instance v0, Lcom/badlogic/gdx/Graphics$BufferFormat;

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/Graphics$BufferFormat;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->E:Lcom/badlogic/gdx/Graphics$BufferFormat;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->F:Z

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->G:[I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->D:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->b(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->i()V

    if-eqz p4, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 10

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/16 v1, 0x9

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    const/16 v1, 0xa

    new-array v4, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v8, 0x1

    new-array v9, v8, [I

    const/16 v5, 0xa

    move-object v1, v0

    move-object v2, v7

    move-object v6, v9

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-interface {v0, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    const/4 v0, 0x0

    aget v1, v9, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    return v8

    nop

    :array_0
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method public b(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    .locals 9

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->e()Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v0

    new-instance v8, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->D:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL30:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-direct {v8, p1, p2, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;I)V

    if-eqz v0, :cond_1

    invoke-virtual {v8, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->D:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget v3, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget v4, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget v5, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget v6, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget v7, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    :goto_1
    invoke-virtual {v8, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-object v8

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "libGDX requires OpenGL ES 2.0"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->u:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->x:Z

    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "waiting for destroy synchronization failed!"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public clearManagedCaches()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Mesh;->clearAllMeshes(Lcom/badlogic/gdx/Application;)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Texture;->clearAllTextures(Lcom/badlogic/gdx/Application;)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->clearAllCubemaps(Lcom/badlogic/gdx/Application;)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/TextureArray;->clearAllTextureArrays(Lcom/badlogic/gdx/Application;)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->clearAllShaderPrograms(Lcom/badlogic/gdx/Application;)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->g()V

    return-void
.end method

.method public final d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->G:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->G:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    :cond_0
    return p5
.end method

.method public e()Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 9

    new-instance v8, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->D:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget v3, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget v6, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    iget v7, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;-><init>(IIIIIII)V

    return-object v8
.end method

.method public f(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 17

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v5, 0x3023

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v5, 0x3022

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v5, 0x3021

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    const/16 v5, 0x3025

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v5, 0x3026

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v5, 0x3031

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v5, 0x30e1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framebuffer: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AndroidGraphics"

    invoke-interface {v1, v4, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "depthbuffer: ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stencilbuffer: ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "samples: ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coverage sampling: ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/Graphics$BufferFormat;

    move-object v8, v1

    move/from16 v16, v0

    invoke-direct/range {v8 .. v16}, Lcom/badlogic/gdx/Graphics$BufferFormat;-><init>(IIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->E:Lcom/badlogic/gdx/Graphics$BufferFormat;

    return-void
.end method

.method public g()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {}, Lcom/badlogic/gdx/graphics/Mesh;->getManagedStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidGraphics"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->getManagedStatus()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {}, Lcom/badlogic/gdx/graphics/Cubemap;->getManagedStatus()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getManagedStatus()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getManagedStatus()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBackBufferHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->c:I

    return v0
.end method

.method public getBackBufferWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->b:I

    return v0
.end method

.method public getBufferFormat()Lcom/badlogic/gdx/Graphics$BufferFormat;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->E:Lcom/badlogic/gdx/Graphics$BufferFormat;

    return-object v0
.end method

.method public getDeltaTime()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->o:F

    return v0
.end method

.method public getDensity()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->C:F

    return v0
.end method

.method public getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 8

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/badlogic/gdx/backends/android/b;->a(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_0
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->roundPositive(F)I

    move-result v6

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->D:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    add-int v7, v1, v0

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;IIII)V

    return-object v0
.end method

.method public getDisplayMode(Lcom/badlogic/gdx/Graphics$Monitor;)Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayModes()[Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/Graphics$DisplayMode;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getDisplayModes(Lcom/badlogic/gdx/Graphics$Monitor;)[Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getDisplayModes()[Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object p1

    return-object p1
.end method

.method public getFrameId()J
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->q:J

    return-wide v0
.end method

.method public getFramesPerSecond()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->s:I

    return v0
.end method

.method public getGL20()Lcom/badlogic/gdx/graphics/GL20;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->i:Lcom/badlogic/gdx/graphics/GL20;

    return-object v0
.end method

.method public getGL30()Lcom/badlogic/gdx/graphics/GL30;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->j:Lcom/badlogic/gdx/graphics/GL30;

    return-object v0
.end method

.method public getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->l:Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->c:I

    return v0
.end method

.method public getMonitor()Lcom/badlogic/gdx/Graphics$Monitor;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getPrimaryMonitor()Lcom/badlogic/gdx/Graphics$Monitor;

    move-result-object v0

    return-object v0
.end method

.method public getMonitors()[Lcom/badlogic/gdx/Graphics$Monitor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/Graphics$Monitor;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getPrimaryMonitor()Lcom/badlogic/gdx/Graphics$Monitor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getPpcX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->A:F

    return v0
.end method

.method public getPpcY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->B:F

    return v0
.end method

.method public getPpiX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->y:F

    return v0
.end method

.method public getPpiY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->z:F

    return v0
.end method

.method public getPrimaryMonitor()Lcom/badlogic/gdx/Graphics$Monitor;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidMonitor;

    const/4 v1, 0x0

    const-string v2, "Primary Monitor"

    invoke-direct {v0, p0, v1, v1, v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidMonitor;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;IILjava/lang/String;)V

    return-object v0
.end method

.method public getSafeInsetBottom()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->f:I

    return v0
.end method

.method public getSafeInsetLeft()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d:I

    return v0
.end method

.method public getSafeInsetRight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->g:I

    return v0
.end method

.method public getSafeInsetTop()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->e:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/Graphics$GraphicsType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->AndroidGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->b:I

    return v0
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->u:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->u:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->v:Z

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->v:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "waiting for pause synchronization took too long; assuming deadlock and killing"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "waiting for pause synchronization failed!"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    return-void
.end method

.method public isContinuousRendering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->F:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGL30Available()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->j:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->u:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const/16 v0, 0x1f02

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f00

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f01

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    sget-object v7, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-direct {v6, v7, v1, v3, v5}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;-><init>(Lcom/badlogic/gdx/Application$ApplicationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->l:Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->D:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL30:Z

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getMajorVersion()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->j:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidGL30;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/AndroidGL30;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->j:Lcom/badlogic/gdx/graphics/GL30;

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->i:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->i:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidGL20;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/AndroidGL20;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->i:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OGL renderer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidGraphics"

    invoke-interface {v1, v4, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OGL vendor: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OGL version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OGL extensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f03

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->y:F

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->z:F

    const v3, 0x40228f5c    # 2.54f

    div-float/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->A:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->B:F

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->C:F

    return-void
.end method

.method public m()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->e:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->g:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->f:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ld0/z0;->a(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ld0/a2;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->g:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->f:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->e:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->d:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    const-string v2, "Unable to get safe area insets"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->n:J

    sub-long v2, v0, v2

    long-to-float p1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, v2

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->o:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->o:F

    :goto_0
    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->n:J

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->u:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->v:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->x:Z

    iget-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z

    iget-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z

    :cond_1
    iget-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->v:Z

    if-eqz v6, :cond_2

    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->v:Z

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    iget-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->x:Z

    if-eqz v6, :cond_3

    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->x:Z

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v5, :cond_5

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getLifecycleListeners()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/badlogic/gdx/LifecycleListener;

    iget v6, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_4

    aget-object v9, v5, v8

    invoke-interface {v9}, Lcom/badlogic/gdx/LifecycleListener;->resume()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->resume()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AndroidGraphics"

    const-string v6, "resumed"

    invoke-interface {p1, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :goto_2
    if-eqz v2, :cond_7

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    monitor-enter p1

    :try_start_3
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v5}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 p1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v2, :cond_6

    :try_start_4
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidInput;->processEvents()V

    iget-wide v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->q:J

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    iput-wide v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->q:J

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->render()V

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_7
    :goto_5
    if-eqz v3, :cond_9

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getLifecycleListeners()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object p1

    monitor-enter p1

    :try_start_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/LifecycleListener;

    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_8

    aget-object v6, v2, v5

    invoke-interface {v6}, Lcom/badlogic/gdx/LifecycleListener;->pause()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->pause()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "paused"

    invoke-interface {p1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_9
    :goto_7
    if-eqz v4, :cond_b

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getLifecycleListeners()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object p1

    monitor-enter p1

    :try_start_8
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/LifecycleListener;

    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_a

    aget-object v5, v2, v4

    invoke-interface {v5}, Lcom/badlogic/gdx/LifecycleListener;->dispose()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->dispose()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "destroyed"

    invoke-interface {p1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :cond_b
    :goto_9
    iget-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->p:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long p1, v2, v4

    if-lez p1, :cond_c

    iget p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->r:I

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->s:I

    iput v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->r:I

    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->p:J

    :cond_c
    iget p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->r:I

    return-void

    :catchall_5
    move-exception v0

    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public onPauseGLSurfaceView()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResumeGLSurfaceView()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    iput p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->b:I

    iput p3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->c:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->l()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->m()V

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->b:I

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->c:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->t:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->create()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->t:Z

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->u:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/ApplicationListener;->resize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->k:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->k(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->f(Ljavax/microedition/khronos/egl/EGLConfig;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->l()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->m()V

    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/Mesh;->invalidateAllMeshes(Lcom/badlogic/gdx/Application;)V

    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/Texture;->invalidateAllTextures(Lcom/badlogic/gdx/Application;)V

    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/Cubemap;->invalidateAllCubemaps(Lcom/badlogic/gdx/Application;)V

    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/TextureArray;->invalidateAllTextureArrays(Lcom/badlogic/gdx/Application;)V

    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidateAllShaderPrograms(Lcom/badlogic/gdx/Application;)V

    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->g()V

    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->b:I

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->c:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->n:J

    iget p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->b:I

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->c:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    return-void
.end method

.method public requestRendering()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method

.method public setContinuousRendering(Z)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->I:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->F:Z

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_2
    return-void
.end method

.method public setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V
    .locals 0

    return-void
.end method

.method public setForegroundFPS(I)V
    .locals 0

    return-void
.end method

.method public setFullscreenMode(Lcom/badlogic/gdx/Graphics$DisplayMode;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setGL20(Lcom/badlogic/gdx/graphics/GL20;)V
    .locals 1

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->i:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->j:Lcom/badlogic/gdx/graphics/GL30;

    if-nez v0, :cond_0

    sput-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    sput-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    :cond_0
    return-void
.end method

.method public setGL30(Lcom/badlogic/gdx/graphics/GL30;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->j:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->i:Lcom/badlogic/gdx/graphics/GL20;

    sput-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    sput-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object p1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    :cond_0
    return-void
.end method

.method public setResizable(Z)V
    .locals 0

    return-void
.end method

.method public setSystemCursor(Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/backends/android/AndroidCursor;->a(Landroid/view/View;Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUndecorated(Z)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public setVSync(Z)V
    .locals 0

    return-void
.end method

.method public setWindowedMode(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public supportsDisplayModeChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x1f03

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->m:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
