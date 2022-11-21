.class public Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->a:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V
    .locals 1

    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->r:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    iput-wide p7, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->a:J

    iput p3, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->c:I

    iput p4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->d:I

    iput p2, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->b:I

    iput p5, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->e:I

    iput p6, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->f:I

    iget-object p1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onGenericMotion(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    monitor-enter p2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    neg-float v0, v0

    float-to-int v7, v0

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    neg-float p1, p1

    float-to-int v6, p1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->a(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->a:I

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->b:I

    if-eq p1, v1, :cond_4

    :cond_3
    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move v4, v0

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->a(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->a:I

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->b:I

    :cond_4
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
