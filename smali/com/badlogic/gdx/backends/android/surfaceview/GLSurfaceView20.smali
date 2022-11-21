.class public Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ContextFactory;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String; = "GL2JNIView"

.field public static d:I


# instance fields
.field public final a:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

.field public onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sput p3, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->d:I

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->a:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    const/4 p1, 0x0

    const/16 p2, 0x10

    invoke-virtual {p0, p1, p2, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->b(ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIILcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    iput-object p5, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->a:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->b(ZII)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    const/16 v4, 0x3000

    if-eq v3, v4, :cond_0

    sget-object v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->b:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "%s: EGL error: 0x%x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public final b(ZII)V
    .locals 14

    move-object v0, p0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ContextFactory;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ContextFactory;-><init>()V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    move-object v2, v1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;-><init>(IIIIII)V

    goto :goto_0

    :cond_1
    const/16 v8, 0x8

    const/16 v9, 0x8

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v7, v1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$ConfigChooser;-><init>(IIIIII)V

    :goto_0
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getAndroidInputType(Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$1;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;Landroid/view/View;Z)V

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->a:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;->calcMeasures(II)Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;

    move-result-object p1

    iget p2, p1, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->width:I

    iget p1, p1, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->height:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
