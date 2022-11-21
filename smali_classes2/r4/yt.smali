.class public final Lr4/yt;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/yt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final d:I

.field public final k:Z

.field public final p:I

.field public final q:I

.field public final r:[Lr4/yt;

.field public final s:Z

.field public final t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/zt;

    invoke-direct {v0}, Lr4/zt;-><init>()V

    sput-object v0, Lr4/yt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lr4/yt;-><init>(Ljava/lang/String;IIZII[Lr4/yt;ZZZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lt2/g;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lt2/g;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lr4/yt;-><init>(Landroid/content/Context;[Lt2/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lt2/g;)V
    .locals 12

    invoke-direct {p0}, Ly3/a;-><init>()V

    const/4 v0, 0x0

    aget-object v1, p2, v0

    iput-boolean v0, p0, Lr4/yt;->k:Z

    invoke-virtual {v1}, Lt2/g;->e()Z

    move-result v2

    iput-boolean v2, p0, Lr4/yt;->t:Z

    invoke-static {v1}, Lt2/x;->f(Lt2/g;)Z

    move-result v3

    iput-boolean v3, p0, Lr4/yt;->x:Z

    invoke-static {v1}, Lt2/x;->g(Lt2/g;)Z

    move-result v3

    iput-boolean v3, p0, Lr4/yt;->y:Z

    invoke-static {v1}, Lt2/x;->d(Lt2/g;)Z

    move-result v3

    iput-boolean v3, p0, Lr4/yt;->z:Z

    if-eqz v2, :cond_0

    sget-object v2, Lt2/g;->i:Lt2/g;

    invoke-virtual {v2}, Lt2/g;->c()I

    move-result v3

    iput v3, p0, Lr4/yt;->p:I

    invoke-virtual {v2}, Lt2/g;->a()I

    move-result v2

    iput v2, p0, Lr4/yt;->b:I

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lr4/yt;->y:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lt2/g;->c()I

    move-result v2

    iput v2, p0, Lr4/yt;->p:I

    invoke-static {v1}, Lt2/x;->h(Lt2/g;)I

    move-result v2

    iput v2, p0, Lr4/yt;->b:I

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lt2/g;->c()I

    move-result v2

    iput v2, p0, Lr4/yt;->p:I

    invoke-static {v1}, Lt2/x;->e(Lt2/g;)I

    move-result v2

    iput v2, p0, Lr4/yt;->b:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lt2/g;->c()I

    move-result v2

    iput v2, p0, Lr4/yt;->p:I

    invoke-virtual {v1}, Lt2/g;->a()I

    move-result v2

    iput v2, p0, Lr4/yt;->b:I

    :goto_0
    iget v3, p0, Lr4/yt;->p:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, -0x1

    if-ne v3, v5, :cond_9

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v6

    float-to-int v6, v7

    const/16 v7, 0x258

    if-ge v6, v7, :cond_8

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-static {}, Lc4/o;->d()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v7, v6}, Lcom/badlogic/gdx/backends/android/b;->a(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    iget v8, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2

    :cond_4
    :try_start_0
    const-class v8, Landroid/view/Display;

    const-string v9, "getRawHeight"

    new-array v10, v0, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const-class v9, Landroid/view/Display;

    const-string v10, "getRawWidth"

    new-array v11, v0, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Object;

    invoke-virtual {v9, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v8, :cond_5

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_1
    if-nez v9, :cond_6

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v7, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_8

    if-ne v6, v9, :cond_8

    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "navigation_bar_width"

    const-string v9, "dimen"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    sub-int/2addr v6, v7

    iput v6, p0, Lr4/yt;->q:I

    goto :goto_5

    :catch_0
    :cond_8
    :goto_4
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lr4/yt;->q:I

    :goto_5
    int-to-float v6, v6

    iget v7, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    double-to-int v8, v6

    int-to-double v9, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v9

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v11, v6, v9

    if-ltz v11, :cond_a

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    iget v8, p0, Lr4/yt;->p:I

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget v6, p0, Lr4/yt;->p:I

    invoke-static {v4, v6}, Lr4/vl0;->i(Landroid/util/DisplayMetrics;I)I

    move-result v6

    iput v6, p0, Lr4/yt;->q:I

    :cond_a
    :goto_6
    const/4 v6, -0x2

    if-ne v2, v6, :cond_b

    invoke-static {v4}, Lr4/yt;->c1(Landroid/util/DisplayMetrics;)I

    move-result v7

    goto :goto_7

    :cond_b
    iget v7, p0, Lr4/yt;->b:I

    :goto_7
    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {v4, v7}, Lr4/vl0;->i(Landroid/util/DisplayMetrics;I)I

    move-result v4

    iput v4, p0, Lr4/yt;->d:I

    const-string v4, "_as"

    const-string v9, "x"

    const/16 v10, 0x1a

    if-eq v3, v5, :cond_10

    if-ne v2, v6, :cond_c

    goto :goto_a

    :cond_c
    iget-boolean v2, p0, Lr4/yt;->y:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lr4/yt;->z:Z

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    iget-boolean v2, p0, Lr4/yt;->t:Z

    if-eqz v2, :cond_e

    const-string v1, "320x50_mb"

    goto :goto_9

    :cond_e
    invoke-virtual {v1}, Lt2/g;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lr4/yt;->a:Ljava/lang/String;

    goto :goto_b

    :cond_f
    :goto_8
    iget v1, p0, Lr4/yt;->p:I

    iget v2, p0, Lr4/yt;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    iput-object v1, p0, Lr4/yt;->a:Ljava/lang/String;

    goto :goto_b

    :cond_10
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lr4/yt;->a:Ljava/lang/String;

    :goto_b
    array-length v1, p2

    const/4 v2, 0x1

    if-le v1, v2, :cond_11

    new-array v1, v1, [Lr4/yt;

    iput-object v1, p0, Lr4/yt;->r:[Lr4/yt;

    const/4 v1, 0x0

    :goto_c
    array-length v2, p2

    if-ge v1, v2, :cond_12

    iget-object v2, p0, Lr4/yt;->r:[Lr4/yt;

    new-instance v3, Lr4/yt;

    aget-object v4, p2, v1

    invoke-direct {v3, p1, v4}, Lr4/yt;-><init>(Landroid/content/Context;Lt2/g;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_11
    const/4 p1, 0x0

    iput-object p1, p0, Lr4/yt;->r:[Lr4/yt;

    :cond_12
    iput-boolean v0, p0, Lr4/yt;->s:Z

    iput-boolean v0, p0, Lr4/yt;->u:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZII[Lr4/yt;ZZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Lr4/yt;->a:Ljava/lang/String;

    iput p2, p0, Lr4/yt;->b:I

    iput p3, p0, Lr4/yt;->d:I

    iput-boolean p4, p0, Lr4/yt;->k:Z

    iput p5, p0, Lr4/yt;->p:I

    iput p6, p0, Lr4/yt;->q:I

    iput-object p7, p0, Lr4/yt;->r:[Lr4/yt;

    iput-boolean p8, p0, Lr4/yt;->s:Z

    iput-boolean p9, p0, Lr4/yt;->t:Z

    iput-boolean p10, p0, Lr4/yt;->u:Z

    iput-boolean p11, p0, Lr4/yt;->v:Z

    iput-boolean p12, p0, Lr4/yt;->w:Z

    iput-boolean p13, p0, Lr4/yt;->x:Z

    iput-boolean p14, p0, Lr4/yt;->y:Z

    iput-boolean p15, p0, Lr4/yt;->z:Z

    return-void
.end method

.method public static X0(Landroid/util/DisplayMetrics;)I
    .locals 1

    invoke-static {p0}, Lr4/yt;->c1(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static Y0()Lr4/yt;
    .locals 17

    new-instance v16, Lr4/yt;

    const-string v1, "320x50_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lr4/yt;-><init>(Ljava/lang/String;IIZII[Lr4/yt;ZZZZZZZZ)V

    return-object v16
.end method

.method public static Z0()Lr4/yt;
    .locals 17

    new-instance v16, Lr4/yt;

    const-string v1, "reward_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lr4/yt;-><init>(Ljava/lang/String;IIZII[Lr4/yt;ZZZZZZZZ)V

    return-object v16
.end method

.method public static a1()Lr4/yt;
    .locals 17

    new-instance v16, Lr4/yt;

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lr4/yt;-><init>(Ljava/lang/String;IIZII[Lr4/yt;ZZZZZZZZ)V

    return-object v16
.end method

.method public static b1()Lr4/yt;
    .locals 17

    new-instance v16, Lr4/yt;

    const-string v1, "invalid"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lr4/yt;-><init>(Ljava/lang/String;IIZII[Lr4/yt;ZZZZZZZZ)V

    return-object v16
.end method

.method public static c1(Landroid/util/DisplayMetrics;)I
    .locals 1

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x190

    if-gt p0, v0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_1

    const/16 p0, 0x32

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lr4/yt;->a:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v1, p0, Lr4/yt;->b:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v1, p0, Lr4/yt;->d:I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lr4/yt;->k:Z

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lr4/yt;->p:I

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v1, p0, Lr4/yt;->q:I

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lr4/yt;->r:[Lr4/yt;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->u(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lr4/yt;->s:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lr4/yt;->t:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lr4/yt;->u:Z

    const/16 v1, 0xb

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lr4/yt;->v:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lr4/yt;->w:Z

    const/16 v1, 0xd

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lr4/yt;->x:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lr4/yt;->y:Z

    const/16 v1, 0xf

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lr4/yt;->z:Z

    const/16 v1, 0x10

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
