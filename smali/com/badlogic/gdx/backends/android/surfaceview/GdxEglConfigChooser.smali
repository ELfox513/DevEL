.class public Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field public static final EGL_COVERAGE_BUFFERS_NV:I = 0x30e0

.field public static final EGL_COVERAGE_SAMPLES_NV:I = 0x30e1


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:[I

.field public i:[I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->i:[I

    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a:I

    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->b:I

    iput p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->c:I

    iput p4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->d:I

    iput p5, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->e:I

    iput p6, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->f:I

    iput p7, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->g:I

    const/16 p1, 0x9

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->h:[I

    return-void

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


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->i:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->i:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    :cond_0
    return p5
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->h:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v5, v0, v1

    if-lez v5, :cond_0

    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->h:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-virtual {p0, p1, p2, v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    array-length v8, v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v9, v0

    move-object v10, v9

    move-object v11, v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v8, :cond_6

    aget-object v13, v7, v12

    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x3026

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->e:I

    if-lt v14, v1, :cond_5

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->f:I

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x3023

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    const/16 v4, 0x3022

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v4, 0x3021

    const/16 v16, 0x0

    move v7, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    if-nez v9, :cond_1

    const/4 v0, 0x5

    if-ne v14, v0, :cond_1

    const/4 v1, 0x6

    if-ne v15, v1, :cond_1

    if-ne v7, v0, :cond_1

    if-nez v5, :cond_1

    move-object v9, v13

    :cond_1
    if-nez v10, :cond_2

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a:I

    if-ne v14, v0, :cond_2

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->b:I

    if-ne v15, v0, :cond_2

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->c:I

    if-ne v7, v0, :cond_2

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->d:I

    if-ne v5, v0, :cond_2

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->g:I

    move-object v10, v13

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    const/16 v4, 0x3032

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v4, 0x3031

    move-object/from16 v18, v9

    move v9, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    const/4 v5, 0x1

    if-nez v11, :cond_3

    if-ne v9, v5, :cond_3

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->g:I

    if-lt v0, v1, :cond_3

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a:I

    if-ne v14, v0, :cond_3

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->b:I

    if-ne v15, v0, :cond_3

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->c:I

    if-ne v7, v0, :cond_3

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->d:I

    if-ne v8, v0, :cond_3

    move-object/from16 v16, v10

    goto :goto_1

    :cond_3
    const/16 v4, 0x30e0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v16, v10

    const/4 v10, 0x1

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v4, 0x30e1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    if-nez v11, :cond_4

    if-ne v9, v10, :cond_4

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->g:I

    if-lt v0, v1, :cond_4

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->a:I

    if-ne v14, v0, :cond_4

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->b:I

    if-ne v15, v0, :cond_4

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->c:I

    if-ne v7, v0, :cond_4

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->d:I

    if-ne v8, v0, :cond_4

    :goto_1
    move-object v11, v13

    :cond_4
    move-object/from16 v10, v16

    move-object/from16 v9, v18

    goto :goto_3

    :cond_5
    :goto_2
    move/from16 v17, v8

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p3

    move/from16 v8, v17

    goto/16 :goto_0

    :cond_6
    :goto_4
    if-eqz v11, :cond_7

    return-object v11

    :cond_7
    if-eqz v10, :cond_8

    return-object v10

    :cond_8
    return-object v9
.end method
