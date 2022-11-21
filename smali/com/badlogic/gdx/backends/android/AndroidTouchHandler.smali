.class public Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iput p5, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->h:I

    iput p3, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->c:I

    iput p4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->d:I

    iput p2, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->b:I

    iput p6, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->g:I

    iget-object p1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(I)I
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/16 v1, 0x10

    if-ne p1, v1, :cond_4

    return v0

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v11, v2, 0x8

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    monitor-enter p2

    const/16 v14, 0x14

    const/4 v15, -0x1

    const/16 v16, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v11, :cond_a

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v9, v2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v7, v2

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->lookUpPointerIndex(I)I

    move-result v6

    if-ne v6, v15, :cond_0

    move v14, v8

    goto :goto_2

    :cond_0
    if-lt v6, v14, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->A:[I

    aget v5, v1, v6

    if-eq v5, v15, :cond_2

    const/4 v3, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v9

    move/from16 v16, v5

    move v5, v7

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v7, v16

    move v14, v8

    move/from16 v16, v9

    move-wide v8, v12

    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->a(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_1

    :cond_2
    move/from16 v17, v6

    move/from16 v18, v7

    move v14, v8

    move/from16 v16, v9

    const/4 v3, 0x4

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v4, v16

    move/from16 v5, v18

    move-wide v8, v12

    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->a(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    :goto_1
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->x:[I

    iget-object v2, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->v:[I

    aget v3, v2, v17

    sub-int v9, v16, v3

    aput v9, v1, v17

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->y:[I

    iget-object v3, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->w:[I

    aget v4, v3, v17

    sub-int v7, v18, v4

    aput v7, v1, v17

    aput v16, v2, v17

    aput v18, v3, v17

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->C:[F

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    aput v2, v1, v17

    :goto_2
    add-int/lit8 v8, v14, 0x1

    const/16 v14, 0x14

    goto :goto_0

    :pswitch_1
    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->lookUpPointerIndex(I)I

    move-result v9

    if-ne v9, v15, :cond_3

    goto/16 :goto_5

    :cond_3
    const/16 v2, 0x14

    if-lt v9, v2, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v2, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    aput v15, v2, v9

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v14, v2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v11, v0

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->A:[I

    aget v6, v0, v9

    if-eq v6, v15, :cond_6

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v3, v14

    move v4, v11

    move v5, v9

    move-wide v7, v12

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->a(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v3, v14

    move v4, v11

    move v5, v9

    move-wide v7, v12

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->a(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    :cond_6
    :goto_3
    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->v:[I

    aput v14, v0, v9

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->w:[I

    aput v11, v0, v9

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->x:[I

    aput v16, v0, v9

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->y:[I

    aput v16, v0, v9

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->z:[Z

    aput-boolean v16, v0, v9

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->A:[I

    aput v16, v0, v9

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->C:[F

    const/4 v1, 0x0

    aput v1, v0, v9

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getFreePointerIndex()I

    move-result v14

    const/16 v1, 0x14

    if-lt v14, v1, :cond_7

    goto :goto_5

    :cond_7
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    aput v2, v1, v14

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v8, v1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v9, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    move-object/from16 v7, p0

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->b(I)I

    move-result v6

    if-eq v6, v15, :cond_8

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v8

    move v5, v9

    move/from16 v17, v6

    move v6, v14

    move/from16 v7, v17

    move/from16 v18, v8

    move/from16 v19, v9

    move-wide v8, v12

    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->a(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_4

    :cond_8
    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    :goto_4
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->v:[I

    aput v18, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->w:[I

    aput v19, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->x:[I

    aput v16, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->y:[I

    aput v16, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->z:[Z

    move/from16 v2, v17

    if-eq v2, v15, :cond_9

    const/16 v16, 0x1

    :cond_9
    aput-boolean v16, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->A:[I

    aput v2, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->C:[F

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    aput v0, v1, v14

    :cond_a
    :goto_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public supportsMultitouch(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.touchscreen.multitouch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
