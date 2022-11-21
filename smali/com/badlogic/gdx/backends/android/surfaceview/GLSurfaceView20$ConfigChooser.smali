.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigChooser"
.end annotation


# static fields
.field public static h:[I


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x3023

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/16 v1, 0x3022

    aput v1, v0, v2

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v3, 0x3040

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->h:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->g:[I

    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->a:I

    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->b:I

    iput p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->c:I

    iput p4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->d:I

    iput p5, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->e:I

    iput p6, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->g:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->g:[I

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

    sget-object v3, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->h:[I

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

    sget-object v3, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->h:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-virtual {p0, p1, p2, v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v8, p3, v1

    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3026

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->e:I

    if-lt v9, v3, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->f:I

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3023

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v6, 0x3022

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v6, 0x3021

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->a:I

    if-ne v9, v3, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->b:I

    if-ne v10, v3, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->c:I

    if-ne v11, v3, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;->d:I

    if-ne v2, v3, :cond_1

    return-object v8

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
