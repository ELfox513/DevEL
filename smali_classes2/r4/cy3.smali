.class public final Lr4/cy3;
.super Lr4/f53;
.source "SourceFile"


# static fields
.field public static final r1:[I

.field public static s1:Z

.field public static t1:Z


# instance fields
.field public final M0:Landroid/content/Context;

.field public final N0:Lr4/ny3;

.field public final O0:Lr4/yy3;

.field public final P0:Z

.field public Q0:Lr4/by3;

.field public R0:Z

.field public S0:Z

.field public T0:Landroid/view/Surface;

.field public U0:Lr4/xx3;

.field public V0:Z

.field public W0:I

.field public X0:Z

.field public Y0:Z

.field public Z0:Z

.field public a1:J

.field public b1:J

.field public c1:J

.field public d1:I

.field public e1:I

.field public f1:I

.field public g1:J

.field public h1:J

.field public i1:J

.field public j1:I

.field public k1:I

.field public l1:I

.field public m1:I

.field public n1:F

.field public o1:Lr4/pa4;

.field public p1:I

.field public q1:Lr4/ey3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lr4/cy3;->r1:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lr4/c13;Lr4/u73;JZLandroid/os/Handler;Lr4/zy3;I)V
    .locals 6

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/high16 v5, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lr4/f53;-><init>(ILr4/c13;Lr4/u73;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr4/cy3;->M0:Landroid/content/Context;

    new-instance p2, Lr4/ny3;

    invoke-direct {p2, p1}, Lr4/ny3;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lr4/cy3;->N0:Lr4/ny3;

    new-instance p1, Lr4/yy3;

    invoke-direct {p1, p7, p8}, Lr4/yy3;-><init>(Landroid/os/Handler;Lr4/zy3;)V

    iput-object p1, p0, Lr4/cy3;->O0:Lr4/yy3;

    sget-object p1, Lr4/lc;->c:Ljava/lang/String;

    const-string p2, "NVIDIA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lr4/cy3;->P0:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/cy3;->b1:J

    const/4 p1, -0x1

    iput p1, p0, Lr4/cy3;->k1:I

    iput p1, p0, Lr4/cy3;->l1:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lr4/cy3;->n1:F

    const/4 p1, 0x1

    iput p1, p0, Lr4/cy3;->W0:I

    const/4 p1, 0x0

    iput p1, p0, Lr4/cy3;->p1:I

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/cy3;->o1:Lr4/pa4;

    return-void
.end method

.method public static K0(Lr4/u73;Lr4/e5;ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/u73;",
            "Lr4/e5;",
            "ZZ)",
            "Ljava/util/List<",
            "Lr4/e33;",
            ">;"
        }
    .end annotation

    iget-object p0, p1, Lr4/e5;->l:Ljava/lang/String;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p2, p3}, Lr4/nk3;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/nk3;->d(Ljava/util/List;Lr4/e5;)Ljava/util/List;

    move-result-object v0

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1}, Lr4/nk3;->f(Lr4/e5;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x10

    if-eq p0, p1, :cond_2

    const/16 p1, 0x100

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x200

    if-ne p0, p1, :cond_3

    const-string p0, "video/avc"

    invoke-static {p0, p2, p3}, Lr4/nk3;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "video/hevc"

    invoke-static {p0, p2, p3}, Lr4/nk3;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static M0(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static N0(Lr4/e33;Lr4/e5;)I
    .locals 11

    iget v0, p1, Lr4/e5;->q:I

    iget v1, p1, Lr4/e5;->r:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, p1, Lr4/e5;->l:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "video/avc"

    const-string v6, "video/hevc"

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v4, :cond_3

    invoke-static {p1}, Lr4/nk3;->f(Lr4/e5;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_1

    if-eq p1, v7, :cond_1

    if-ne p1, v8, :cond_2

    :cond_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    move-object v3, v6

    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    goto :goto_2

    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_2

    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_2

    :sswitch_3
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :sswitch_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_2

    :sswitch_5
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, -0x1

    :goto_2
    if-eqz p1, :cond_9

    if-eq p1, v7, :cond_9

    if-eq p1, v8, :cond_6

    if-eq p1, v10, :cond_9

    if-eq p1, v9, :cond_5

    if-eq p1, v4, :cond_5

    return v2

    :cond_5
    mul-int v0, v0, v1

    const/4 v8, 0x4

    goto :goto_3

    :cond_6
    sget-object p1, Lr4/lc;->d:Ljava/lang/String;

    const-string v3, "BRAVIA 4K 2015"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lr4/lc;->c:Ljava/lang/String;

    const-string v4, "Amazon"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "KFSOWI"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "AFTS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Lr4/e33;->f:Z

    if-nez p0, :cond_8

    :cond_7
    const/16 p0, 0x10

    invoke-static {v0, p0}, Lr4/lc;->b0(II)I

    move-result p1

    invoke-static {v1, p0}, Lr4/lc;->b0(II)I

    move-result p0

    mul-int p1, p1, p0

    mul-int/lit16 v0, p1, 0x100

    goto :goto_3

    :cond_8
    return v2

    :cond_9
    mul-int v0, v0, v1

    :goto_3
    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v8, v8

    div-int/2addr v0, v8

    return v0

    :cond_a
    :goto_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final P0(Ljava/lang/String;)Z
    .locals 13

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-class p0, Lr4/cy3;

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lr4/cy3;->s1:Z

    if-nez v1, :cond_b

    sget v1, Lr4/lc;->a:I

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x6

    const/16 v6, 0x1c

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-gt v1, v6, :cond_3

    sget-object v10, Lr4/lc;->b:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v11, "machuca"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x4

    goto :goto_1

    :sswitch_1
    const-string v11, "once"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x5

    goto :goto_1

    :sswitch_2
    const-string v11, "magnolia"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x3

    goto :goto_1

    :sswitch_3
    const-string v11, "oneday"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x6

    goto :goto_1

    :sswitch_4
    const-string v11, "dangalUHD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :sswitch_5
    const-string v11, "dangalFHD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x2

    goto :goto_1

    :sswitch_6
    const-string v11, "dangal"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v10, -0x1

    :goto_1
    packed-switch v10, :pswitch_data_0

    goto :goto_3

    :cond_2
    :goto_2
    :pswitch_0
    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_3
    :goto_3
    const/16 v10, 0x1b

    if-gt v1, v10, :cond_4

    :try_start_1
    const-string v11, "HWEML"

    sget-object v12, Lr4/lc;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    const/16 v11, 0x1a

    if-gt v1, v11, :cond_a

    sget-object v1, Lr4/lc;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v12, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_7
    const-string v2, "HWWAS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x42

    goto/16 :goto_5

    :sswitch_8
    const-string v2, "HWVNS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x41

    goto/16 :goto_5

    :sswitch_9
    const-string v2, "ELUGA_Prim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x21

    goto/16 :goto_5

    :sswitch_a
    const-string v2, "ELUGA_Note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x20

    goto/16 :goto_5

    :sswitch_b
    const-string v2, "ASUS_X00AD_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xe

    goto/16 :goto_5

    :sswitch_c
    const-string v2, "HWCAM-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x40

    goto/16 :goto_5

    :sswitch_d
    const-string v2, "HWBLN-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3f

    goto/16 :goto_5

    :sswitch_e
    const-string v2, "DM-01K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1d

    goto/16 :goto_5

    :sswitch_f
    const-string v2, "BRAVIA_ATV3_4K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x13

    goto/16 :goto_5

    :sswitch_10
    const-string v2, "Infinix-X572"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x45

    goto/16 :goto_5

    :sswitch_11
    const-string v2, "PB2-670M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x64

    goto/16 :goto_5

    :sswitch_12
    const-string v2, "santoni"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x75

    goto/16 :goto_5

    :sswitch_13
    const-string v2, "iball8735_9806"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x44

    goto/16 :goto_5

    :sswitch_14
    const-string v2, "CPH1715"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x18

    goto/16 :goto_5

    :sswitch_15
    const-string v2, "CPH1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x17

    goto/16 :goto_5

    :sswitch_16
    const-string v2, "woods_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x85

    goto/16 :goto_5

    :sswitch_17
    const-string v2, "htc_e56ml_dtul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3d

    goto/16 :goto_5

    :sswitch_18
    const-string v2, "EverStar_S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x23

    goto/16 :goto_5

    :sswitch_19
    const-string v2, "hwALE-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3e

    goto/16 :goto_5

    :sswitch_1a
    const-string v2, "itel_S41"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x47

    goto/16 :goto_5

    :sswitch_1b
    const-string v2, "LS-5017"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4e

    goto/16 :goto_5

    :sswitch_1c
    const-string v2, "panell_d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x60

    goto/16 :goto_5

    :sswitch_1d
    const-string v2, "j2xlteins"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x48

    goto/16 :goto_5

    :sswitch_1e
    const-string v2, "A7000plus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xa

    goto/16 :goto_5

    :sswitch_1f
    const-string v2, "manning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x51

    goto/16 :goto_5

    :sswitch_20
    const-string v2, "GIONEE_WBL7519"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3b

    goto/16 :goto_5

    :sswitch_21
    const-string v2, "GIONEE_WBL7365"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3a

    goto/16 :goto_5

    :sswitch_22
    const-string v2, "GIONEE_WBL5708"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x39

    goto/16 :goto_5

    :sswitch_23
    const-string v2, "QM16XE_U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x72

    goto/16 :goto_5

    :sswitch_24
    const-string v2, "Pixi5-10_4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6a

    goto/16 :goto_5

    :sswitch_25
    const-string v2, "TB3-850M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7d

    goto/16 :goto_5

    :sswitch_26
    const-string v2, "TB3-850F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7c

    goto/16 :goto_5

    :sswitch_27
    const-string v2, "TB3-730X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7b

    goto/16 :goto_5

    :sswitch_28
    const-string v2, "TB3-730F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7a

    goto/16 :goto_5

    :sswitch_29
    const-string v2, "A7020a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xc

    goto/16 :goto_5

    :sswitch_2a
    const-string v2, "A7010a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xb

    goto/16 :goto_5

    :sswitch_2b
    const-string v2, "griffin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3c

    goto/16 :goto_5

    :sswitch_2c
    const-string v2, "marino_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x52

    goto/16 :goto_5

    :sswitch_2d
    const-string v2, "CPY83_I00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x19

    goto/16 :goto_5

    :sswitch_2e
    const-string v2, "A2016a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x8

    goto/16 :goto_5

    :sswitch_2f
    const-string v2, "le_x6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4d

    goto/16 :goto_5

    :sswitch_30
    const-string v2, "l5460"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4c

    goto/16 :goto_5

    :sswitch_31
    const-string v2, "i9031"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x43

    goto/16 :goto_5

    :sswitch_32
    const-string v2, "X3_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x87

    goto/16 :goto_5

    :sswitch_33
    const-string v2, "V23GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x80

    goto/16 :goto_5

    :sswitch_34
    const-string v2, "Q4310"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x70

    goto/16 :goto_5

    :sswitch_35
    const-string v2, "Q4260"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6e

    goto/16 :goto_5

    :sswitch_36
    const-string v2, "PRO7S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6c

    goto/16 :goto_5

    :sswitch_37
    const-string v2, "F3311"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x30

    goto/16 :goto_5

    :sswitch_38
    const-string v2, "F3215"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2f

    goto/16 :goto_5

    :sswitch_39
    const-string v2, "F3213"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2e

    goto/16 :goto_5

    :sswitch_3a
    const-string v2, "F3211"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2d

    goto/16 :goto_5

    :sswitch_3b
    const-string v2, "F3116"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2c

    goto/16 :goto_5

    :sswitch_3c
    const-string v2, "F3113"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2b

    goto/16 :goto_5

    :sswitch_3d
    const-string v2, "F3111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2a

    goto/16 :goto_5

    :sswitch_3e
    const-string v2, "E5643"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1e

    goto/16 :goto_5

    :sswitch_3f
    const-string v2, "A1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x7

    goto/16 :goto_5

    :sswitch_40
    const-string v2, "Aura_Note_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xf

    goto/16 :goto_5

    :sswitch_41
    const-string v3, "602LV"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_5

    :sswitch_42
    const-string v2, "601LV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x3

    goto/16 :goto_5

    :sswitch_43
    const-string v2, "MEIZU_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x53

    goto/16 :goto_5

    :sswitch_44
    const-string v2, "p212"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5c

    goto/16 :goto_5

    :sswitch_45
    const-string v2, "mido"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x55

    goto/16 :goto_5

    :sswitch_46
    const-string v2, "kate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4b

    goto/16 :goto_5

    :sswitch_47
    const-string v2, "fugu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x32

    goto/16 :goto_5

    :sswitch_48
    const-string v2, "XE2X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x88

    goto/16 :goto_5

    :sswitch_49
    const-string v2, "Q427"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6f

    goto/16 :goto_5

    :sswitch_4a
    const-string v2, "Q350"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6d

    goto/16 :goto_5

    :sswitch_4b
    const-string v2, "P681"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5d

    goto/16 :goto_5

    :sswitch_4c
    const-string v2, "F04J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x29

    goto/16 :goto_5

    :sswitch_4d
    const-string v2, "F04H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x28

    goto/16 :goto_5

    :sswitch_4e
    const-string v2, "F03H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x27

    goto/16 :goto_5

    :sswitch_4f
    const-string v2, "F02H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x26

    goto/16 :goto_5

    :sswitch_50
    const-string v2, "F01J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x25

    goto/16 :goto_5

    :sswitch_51
    const-string v2, "F01H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x24

    goto/16 :goto_5

    :sswitch_52
    const-string v2, "1714"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    goto/16 :goto_5

    :sswitch_53
    const-string v2, "1713"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    goto/16 :goto_5

    :sswitch_54
    const-string v2, "1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_5

    :sswitch_55
    const-string v2, "flo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x31

    goto/16 :goto_5

    :sswitch_56
    const-string v2, "deb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1c

    goto/16 :goto_5

    :sswitch_57
    const-string v2, "cv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1b

    goto/16 :goto_5

    :sswitch_58
    const-string v2, "cv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1a

    goto/16 :goto_5

    :sswitch_59
    const-string v2, "Z80"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x8b

    goto/16 :goto_5

    :sswitch_5a
    const-string v2, "QX1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x73

    goto/16 :goto_5

    :sswitch_5b
    const-string v2, "PLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6b

    goto/16 :goto_5

    :sswitch_5c
    const-string v2, "P85"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5e

    goto/16 :goto_5

    :sswitch_5d
    const-string v2, "MX6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x56

    goto/16 :goto_5

    :sswitch_5e
    const-string v2, "M5c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x50

    goto/16 :goto_5

    :sswitch_5f
    const-string v2, "M04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4f

    goto/16 :goto_5

    :sswitch_60
    const-string v2, "JGZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x49

    goto/16 :goto_5

    :sswitch_61
    const-string v2, "mh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x54

    goto/16 :goto_5

    :sswitch_62
    const-string v2, "b5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x10

    goto/16 :goto_5

    :sswitch_63
    const-string v2, "V5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x81

    goto/16 :goto_5

    :sswitch_64
    const-string v2, "V1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7f

    goto/16 :goto_5

    :sswitch_65
    const-string v2, "Q5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x71

    goto/16 :goto_5

    :sswitch_66
    const-string v2, "C1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x14

    goto/16 :goto_5

    :sswitch_67
    const-string v2, "woods_fn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x86

    goto/16 :goto_5

    :sswitch_68
    const-string v2, "ELUGA_A3_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1f

    goto/16 :goto_5

    :sswitch_69
    const-string v2, "Z12_PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x8a

    goto/16 :goto_5

    :sswitch_6a
    const-string v2, "BLACK-1X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x11

    goto/16 :goto_5

    :sswitch_6b
    const-string v2, "taido_row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x79

    goto/16 :goto_5

    :sswitch_6c
    const-string v2, "Pixi4-7_3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x69

    goto/16 :goto_5

    :sswitch_6d
    const-string v2, "GIONEE_GBL7360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x35

    goto/16 :goto_5

    :sswitch_6e
    const-string v2, "GiONEE_CBL7513"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x33

    goto/16 :goto_5

    :sswitch_6f
    const-string v2, "OnePlus5T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5b

    goto/16 :goto_5

    :sswitch_70
    const-string v2, "whyred"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x84

    goto/16 :goto_5

    :sswitch_71
    const-string v2, "watson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x83

    goto/16 :goto_5

    :sswitch_72
    const-string v2, "SVP-DTV15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x77

    goto/16 :goto_5

    :sswitch_73
    const-string v2, "A7000-a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x9

    goto/16 :goto_5

    :sswitch_74
    const-string v2, "nicklaus_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x58

    goto/16 :goto_5

    :sswitch_75
    const-string v2, "tcl_eu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7e

    goto/16 :goto_5

    :sswitch_76
    const-string v2, "ELUGA_Ray_X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x22

    goto/16 :goto_5

    :sswitch_77
    const-string v2, "s905x018"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x78

    goto/16 :goto_5

    :sswitch_78
    const-string v2, "A10-70L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    goto/16 :goto_5

    :sswitch_79
    const-string v2, "A10-70F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    goto/16 :goto_5

    :sswitch_7a
    const-string v2, "namath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x57

    goto/16 :goto_5

    :sswitch_7b
    const-string v2, "Slate_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x76

    goto/16 :goto_5

    :sswitch_7c
    const-string v2, "iris60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x46

    goto/16 :goto_5

    :sswitch_7d
    const-string v2, "BRAVIA_ATV2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x12

    goto/16 :goto_5

    :sswitch_7e
    const-string v2, "GiONEE_GBL7319"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x34

    goto/16 :goto_5

    :sswitch_7f
    const-string v2, "panell_dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x63

    goto/16 :goto_5

    :sswitch_80
    const-string v2, "panell_ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x62

    goto/16 :goto_5

    :sswitch_81
    const-string v2, "panell_dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x61

    goto/16 :goto_5

    :sswitch_82
    const-string v2, "vernee_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x82

    goto/16 :goto_5

    :sswitch_83
    const-string v2, "pacificrim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5f

    goto/16 :goto_5

    :sswitch_84
    const-string v2, "Phantom6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x68

    goto/16 :goto_5

    :sswitch_85
    const-string v2, "ComioS1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x15

    goto/16 :goto_5

    :sswitch_86
    const-string v2, "XT1663"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x89

    goto/16 :goto_5

    :sswitch_87
    const-string v2, "RAIJIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x74

    goto/16 :goto_5

    :sswitch_88
    const-string v2, "AquaPowerM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xd

    goto/16 :goto_5

    :sswitch_89
    const-string v2, "PGN611"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x67

    goto/16 :goto_5

    :sswitch_8a
    const-string v2, "PGN610"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x66

    goto :goto_5

    :sswitch_8b
    const-string v2, "PGN528"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x65

    goto :goto_5

    :sswitch_8c
    const-string v2, "NX573J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5a

    goto :goto_5

    :sswitch_8d
    const-string v2, "NX541J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x59

    goto :goto_5

    :sswitch_8e
    const-string v2, "CP8676_I02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x16

    goto :goto_5

    :sswitch_8f
    const-string v2, "K50a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4a

    goto :goto_5

    :sswitch_90
    const-string v2, "GIONEE_SWW1631"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x38

    goto :goto_5

    :sswitch_91
    const-string v2, "GIONEE_SWW1627"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x37

    goto :goto_5

    :sswitch_92
    const-string v2, "GIONEE_SWW1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x36

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v2, -0x1

    :goto_5
    packed-switch v2, :pswitch_data_1

    :try_start_2
    sget-object v1, Lr4/lc;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const v3, -0x236fe21d

    if-eq v2, v3, :cond_8

    const v3, 0x1e9d52

    if-eq v2, v3, :cond_7

    const v3, 0x1e9d5f

    if-eq v2, v3, :cond_6

    goto :goto_6

    :cond_6
    const-string v2, "AFTN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x1

    goto :goto_6

    :cond_7
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x0

    goto :goto_6

    :cond_8
    const-string v2, "JSN-L21"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x2

    :cond_9
    :goto_6
    if-eqz v7, :cond_2

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_2

    :cond_a
    :goto_7
    :try_start_3
    sput-boolean v0, Lr4/cy3;->t1:Z

    sput-boolean v9, Lr4/cy3;->s1:Z

    :cond_b
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-boolean p0, Lr4/cy3;->t1:Z

    return p0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_6
        -0x48b8f57f -> :sswitch_5
        -0x48b8bd30 -> :sswitch_4
        -0x3c588c8a -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_92
        -0x7fd6c381 -> :sswitch_91
        -0x7fd6c368 -> :sswitch_90
        -0x7d026749 -> :sswitch_8f
        -0x78929d6a -> :sswitch_8e
        -0x75f50a1e -> :sswitch_8d
        -0x75f4fe9d -> :sswitch_8c
        -0x736f875c -> :sswitch_8b
        -0x736f83c2 -> :sswitch_8a
        -0x736f83c1 -> :sswitch_89
        -0x7327ce1c -> :sswitch_88
        -0x705c574b -> :sswitch_87
        -0x651ebb62 -> :sswitch_86
        -0x6423293b -> :sswitch_85
        -0x604f5117 -> :sswitch_84
        -0x5f691e13 -> :sswitch_83
        -0x5ca40cc4 -> :sswitch_82
        -0x58520ec1 -> :sswitch_81
        -0x58520eba -> :sswitch_80
        -0x58520eb9 -> :sswitch_7f
        -0x4eaed329 -> :sswitch_7e
        -0x4892fb4f -> :sswitch_7d
        -0x465b3df3 -> :sswitch_7c
        -0x43e6c939 -> :sswitch_7b
        -0x3ec0fcc5 -> :sswitch_7a
        -0x3b33cca0 -> :sswitch_79
        -0x3b33cc9a -> :sswitch_78
        -0x398ae3f6 -> :sswitch_77
        -0x391f0fb4 -> :sswitch_76
        -0x346837ae -> :sswitch_75
        -0x323788e3 -> :sswitch_74
        -0x30f57652 -> :sswitch_73
        -0x2f88a116 -> :sswitch_72
        -0x2f61ed98 -> :sswitch_71
        -0x2efd0837 -> :sswitch_70
        -0x2e9e9441 -> :sswitch_6f
        -0x2247b8b1 -> :sswitch_6e
        -0x1f0fa2b7 -> :sswitch_6d
        -0x19af3b41 -> :sswitch_6c
        -0x114fad3e -> :sswitch_6b
        -0x10dae90b -> :sswitch_6a
        -0x1084b7b7 -> :sswitch_69
        -0xa5988e9 -> :sswitch_68
        -0x35f9fbf -> :sswitch_67
        0x84e -> :sswitch_66
        0xa04 -> :sswitch_65
        0xa9b -> :sswitch_64
        0xa9f -> :sswitch_63
        0xc13 -> :sswitch_62
        0xd9b -> :sswitch_61
        0x11ebd -> :sswitch_60
        0x12711 -> :sswitch_5f
        0x127db -> :sswitch_5e
        0x12beb -> :sswitch_5d
        0x1334d -> :sswitch_5c
        0x135c9 -> :sswitch_5b
        0x13aea -> :sswitch_5a
        0x158d2 -> :sswitch_59
        0x1821e -> :sswitch_58
        0x18220 -> :sswitch_57
        0x18401 -> :sswitch_56
        0x18c69 -> :sswitch_55
        0x1716e6 -> :sswitch_54
        0x171ac8 -> :sswitch_53
        0x171ac9 -> :sswitch_52
        0x208c61 -> :sswitch_51
        0x208c63 -> :sswitch_50
        0x208c80 -> :sswitch_4f
        0x208c9f -> :sswitch_4e
        0x208cbe -> :sswitch_4d
        0x208cc0 -> :sswitch_4c
        0x252f5f -> :sswitch_4b
        0x25981d -> :sswitch_4a
        0x259b88 -> :sswitch_49
        0x290a13 -> :sswitch_48
        0x3021fd -> :sswitch_47
        0x321e47 -> :sswitch_46
        0x332327 -> :sswitch_45
        0x33ab63 -> :sswitch_44
        0x27691fb -> :sswitch_43
        0x30f8881 -> :sswitch_42
        0x30f8c42 -> :sswitch_41
        0x349f581 -> :sswitch_40
        0x3ab0ea7 -> :sswitch_3f
        0x3e53ea5 -> :sswitch_3e
        0x3f25a44 -> :sswitch_3d
        0x3f25a46 -> :sswitch_3c
        0x3f25a49 -> :sswitch_3b
        0x3f25e05 -> :sswitch_3a
        0x3f25e07 -> :sswitch_39
        0x3f25e09 -> :sswitch_38
        0x3f261c6 -> :sswitch_37
        0x48dce49 -> :sswitch_36
        0x48dd589 -> :sswitch_35
        0x48dd8af -> :sswitch_34
        0x4d36832 -> :sswitch_33
        0x4f0b0e7 -> :sswitch_32
        0x5e2479e -> :sswitch_31
        0x60acc05 -> :sswitch_30
        0x6214744 -> :sswitch_2f
        0x9d91379 -> :sswitch_2e
        0xadc0551 -> :sswitch_2d
        0xea056b3 -> :sswitch_2c
        0x1121dbc3 -> :sswitch_2b
        0x1255818c -> :sswitch_2a
        0x1263990d -> :sswitch_29
        0x12d90f3a -> :sswitch_28
        0x12d90f4c -> :sswitch_27
        0x12d98b1b -> :sswitch_26
        0x12d98b22 -> :sswitch_25
        0x1844c711 -> :sswitch_24
        0x1e3e8044 -> :sswitch_23
        0x2f5336ed -> :sswitch_22
        0x2f54115e -> :sswitch_21
        0x2f541849 -> :sswitch_20
        0x31cf010e -> :sswitch_1f
        0x36ad82f4 -> :sswitch_1e
        0x391a0b61 -> :sswitch_1d
        0x3f3728cd -> :sswitch_1c
        0x448ec687 -> :sswitch_1b
        0x46260f63 -> :sswitch_1a
        0x4c505106 -> :sswitch_19
        0x4de67084 -> :sswitch_18
        0x506ac5a9 -> :sswitch_17
        0x5abad9cd -> :sswitch_16
        0x64d2e6e9 -> :sswitch_15
        0x64d2eac5 -> :sswitch_14
        0x65e4085b -> :sswitch_13
        0x6f373556 -> :sswitch_12
        0x719f1dcb -> :sswitch_11
        0x75d9a0f0 -> :sswitch_10
        0x7796d144 -> :sswitch_f
        0x785bcb26 -> :sswitch_e
        0x78fc0e50 -> :sswitch_d
        0x790521fb -> :sswitch_c
        0x7933207f -> :sswitch_b
        0x7a05a409 -> :sswitch_a
        0x7a0696bd -> :sswitch_9
        0x7a16dfe7 -> :sswitch_8
        0x7a1f0e95 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static S0(Lr4/e33;Lr4/e5;)I
    .locals 3

    iget v0, p1, Lr4/e5;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p1, Lr4/e5;->n:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    iget-object v2, p1, Lr4/e5;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p0, p1, Lr4/e5;->m:I

    add-int/2addr p0, v1

    return p0

    :cond_1
    invoke-static {p0, p1}, Lr4/cy3;->N0(Lr4/e33;Lr4/e5;)I

    move-result p0

    return p0
.end method

.method private final n0()V
    .locals 5

    iget v0, p0, Lr4/cy3;->k1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lr4/cy3;->l1:I

    if-eq v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    iget-object v1, p0, Lr4/cy3;->o1:Lr4/pa4;

    if-eqz v1, :cond_2

    iget v2, v1, Lr4/pa4;->a:I

    if-ne v2, v0, :cond_2

    iget v2, v1, Lr4/pa4;->b:I

    iget v3, p0, Lr4/cy3;->l1:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Lr4/pa4;->c:I

    iget v3, p0, Lr4/cy3;->m1:I

    if-ne v2, v3, :cond_2

    iget v1, v1, Lr4/pa4;->d:F

    iget v2, p0, Lr4/cy3;->n1:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v1, Lr4/pa4;

    iget v2, p0, Lr4/cy3;->l1:I

    iget v3, p0, Lr4/cy3;->m1:I

    iget v4, p0, Lr4/cy3;->n1:F

    invoke-direct {v1, v0, v2, v3, v4}, Lr4/pa4;-><init>(IIIF)V

    iput-object v1, p0, Lr4/cy3;->o1:Lr4/pa4;

    iget-object v0, p0, Lr4/cy3;->O0:Lr4/yy3;

    invoke-virtual {v0, v1}, Lr4/yy3;->f(Lr4/pa4;)V

    return-void
.end method

.method private final o0()V
    .locals 2

    iget-object v0, p0, Lr4/cy3;->o1:Lr4/pa4;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/cy3;->O0:Lr4/yy3;

    invoke-virtual {v1, v0}, Lr4/yy3;->f(Lr4/pa4;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/cy3;->O0:Lr4/yy3;

    invoke-virtual {v0, p1}, Lr4/yy3;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final B0(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    invoke-static {v0, v1, p1}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lr4/cy3;->O0:Lr4/yy3;

    invoke-virtual {v0, p1}, Lr4/yy3;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method public final C0(Lr4/f5;)Lr4/iq;
    .locals 2

    invoke-super {p0, p1}, Lr4/f53;->C0(Lr4/f5;)Lr4/iq;

    move-result-object v0

    iget-object v1, p0, Lr4/cy3;->O0:Lr4/yy3;

    iget-object p1, p1, Lr4/f5;->a:Lr4/e5;

    invoke-virtual {v1, p1, v0}, Lr4/yy3;->c(Lr4/e5;Lr4/iq;)V

    return-object v0
.end method

.method public final D(Lr4/e33;)Z
    .locals 1

    iget-object v0, p0, Lr4/cy3;->T0:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lr4/cy3;->L0(Lr4/e33;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final D0(Lr4/e5;Landroid/media/MediaFormat;)V
    .locals 7

    invoke-virtual {p0}, Lr4/f53;->j0()Lr4/rn3;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lr4/cy3;->W0:I

    invoke-virtual {v0, v1}, Lr4/rn3;->n(I)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v5

    goto :goto_0

    :cond_2
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lr4/cy3;->k1:I

    if-eqz v6, :cond_3

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_1

    :cond_3
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lr4/cy3;->l1:I

    iget p2, p1, Lr4/e5;->u:F

    iput p2, p0, Lr4/cy3;->n1:F

    sget v1, Lr4/lc;->a:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    iget v1, p1, Lr4/e5;->t:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_4

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_6

    :cond_4
    iget v1, p0, Lr4/cy3;->k1:I

    iput v0, p0, Lr4/cy3;->k1:I

    iput v1, p0, Lr4/cy3;->l1:I

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    iput v0, p0, Lr4/cy3;->n1:F

    goto :goto_2

    :cond_5
    iget p2, p1, Lr4/e5;->t:I

    iput p2, p0, Lr4/cy3;->m1:I

    :cond_6
    :goto_2
    iget-object p2, p0, Lr4/cy3;->N0:Lr4/ny3;

    iget p1, p1, Lr4/e5;->s:F

    invoke-virtual {p2, p1}, Lr4/ny3;->g(F)V

    return-void
.end method

.method public final I0(Lr4/rn3;IJ)V
    .locals 2

    invoke-direct {p0}, Lr4/cy3;->n0()V

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Lr4/gc;->a(Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lr4/rn3;->h(IZ)V

    invoke-static {}, Lr4/gc;->b()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lr4/cy3;->h1:J

    iget-object p1, p0, Lr4/f53;->E0:Lr4/gp;

    iget p2, p1, Lr4/gp;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Lr4/gp;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lr4/cy3;->e1:I

    invoke-virtual {p0}, Lr4/cy3;->R0()V

    return-void
.end method

.method public final J0(I)V
    .locals 2

    iget-object v0, p0, Lr4/f53;->E0:Lr4/gp;

    iget v1, v0, Lr4/gp;->g:I

    add-int/2addr v1, p1

    iput v1, v0, Lr4/gp;->g:I

    iget v1, p0, Lr4/cy3;->d1:I

    add-int/2addr v1, p1

    iput v1, p0, Lr4/cy3;->d1:I

    iget v1, p0, Lr4/cy3;->e1:I

    add-int/2addr v1, p1

    iput v1, p0, Lr4/cy3;->e1:I

    iget p1, v0, Lr4/gp;->h:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lr4/gp;->h:I

    return-void
.end method

.method public final L0(Lr4/e33;)Z
    .locals 4

    sget v0, Lr4/lc;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    iget-object v0, p1, Lr4/e33;->a:Ljava/lang/String;

    invoke-static {v0}, Lr4/cy3;->P0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lr4/e33;->f:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lr4/cy3;->M0:Landroid/content/Context;

    invoke-static {p1}, Lr4/xx3;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final O()Z
    .locals 9

    invoke-super {p0}, Lr4/f53;->O()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lr4/cy3;->X0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/cy3;->U0:Lr4/xx3;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lr4/cy3;->T0:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lr4/f53;->j0()Lr4/rn3;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lr4/cy3;->b1:J

    return v1

    :cond_2
    :goto_0
    iget-wide v4, p0, Lr4/cy3;->b1:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lr4/cy3;->b1:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    :cond_4
    iput-wide v2, p0, Lr4/cy3;->b1:J

    return v0
.end method

.method public final O0(Lr4/rn3;IJJ)V
    .locals 0

    invoke-direct {p0}, Lr4/cy3;->n0()V

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Lr4/gc;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p5, p6}, Lr4/rn3;->i(IJ)V

    invoke-static {}, Lr4/gc;->b()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lr4/cy3;->h1:J

    iget-object p1, p0, Lr4/f53;->E0:Lr4/gp;

    iget p2, p1, Lr4/gp;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lr4/gp;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lr4/cy3;->e1:I

    invoke-virtual {p0}, Lr4/cy3;->R0()V

    return-void
.end method

.method public final P()V
    .locals 1

    invoke-super {p0}, Lr4/f53;->P()V

    const/4 v0, 0x0

    iput v0, p0, Lr4/cy3;->f1:I

    return-void
.end method

.method public final Q0(J)V
    .locals 3

    iget-object v0, p0, Lr4/f53;->E0:Lr4/gp;

    iget-wide v1, v0, Lr4/gp;->j:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lr4/gp;->j:J

    iget v1, v0, Lr4/gp;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lr4/gp;->k:I

    iget-wide v0, p0, Lr4/cy3;->i1:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lr4/cy3;->i1:J

    iget p1, p0, Lr4/cy3;->j1:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr4/cy3;->j1:I

    return-void
.end method

.method public final R0()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/cy3;->Z0:Z

    iget-boolean v1, p0, Lr4/cy3;->X0:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lr4/cy3;->X0:Z

    iget-object v1, p0, Lr4/cy3;->O0:Lr4/yy3;

    iget-object v2, p0, Lr4/cy3;->T0:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lr4/yy3;->g(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lr4/cy3;->V0:Z

    :cond_0
    return-void
.end method

.method public final T0(Lr4/rn3;IJ)V
    .locals 0

    const-string p3, "skipVideoBuffer"

    invoke-static {p3}, Lr4/gc;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lr4/rn3;->h(IZ)V

    invoke-static {}, Lr4/gc;->b()V

    iget-object p1, p0, Lr4/f53;->E0:Lr4/gp;

    iget p2, p1, Lr4/gp;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lr4/gp;->f:I

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lr4/cy3;->N0:Lr4/ny3;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lr4/ny3;->a(I)V

    return-void

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lr4/cy3;->W0:I

    invoke-virtual {p0}, Lr4/f53;->j0()Lr4/rn3;

    move-result-object p1

    if-eqz p1, :cond_c

    iget p2, p0, Lr4/cy3;->W0:I

    invoke-virtual {p1, p2}, Lr4/rn3;->n(I)V

    return-void

    :cond_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lr4/cy3;->p1:I

    if-eq p2, p1, :cond_c

    iput p1, p0, Lr4/cy3;->p1:I

    return-void

    :cond_3
    check-cast p2, Lr4/ey3;

    iput-object p2, p0, Lr4/cy3;->q1:Lr4/ey3;

    return-void

    :cond_4
    instance-of p1, p2, Landroid/view/Surface;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    check-cast p2, Landroid/view/Surface;

    goto :goto_0

    :cond_5
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_7

    iget-object p1, p0, Lr4/cy3;->U0:Lr4/xx3;

    if-eqz p1, :cond_6

    move-object p2, p1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lr4/f53;->I()Lr4/e33;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lr4/cy3;->L0(Lr4/e33;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p2, p0, Lr4/cy3;->M0:Landroid/content/Context;

    iget-boolean p1, p1, Lr4/e33;->f:Z

    invoke-static {p2, p1}, Lr4/xx3;->h(Landroid/content/Context;Z)Lr4/xx3;

    move-result-object p2

    iput-object p2, p0, Lr4/cy3;->U0:Lr4/xx3;

    :cond_7
    :goto_1
    iget-object p1, p0, Lr4/cy3;->T0:Landroid/view/Surface;

    if-eq p1, p2, :cond_b

    iput-object p2, p0, Lr4/cy3;->T0:Landroid/view/Surface;

    iget-object p1, p0, Lr4/cy3;->N0:Lr4/ny3;

    invoke-virtual {p1, p2}, Lr4/ny3;->d(Landroid/view/Surface;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/cy3;->V0:Z

    invoke-virtual {p0}, Lr4/c3;->F0()I

    move-result v1

    invoke-virtual {p0}, Lr4/f53;->j0()Lr4/rn3;

    move-result-object v2

    if-eqz v2, :cond_9

    sget v3, Lr4/lc;->a:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_8

    if-eqz p2, :cond_8

    iget-boolean v3, p0, Lr4/cy3;->R0:Z

    if-nez v3, :cond_8

    invoke-virtual {v2, p2}, Lr4/rn3;->l(Landroid/view/Surface;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lr4/f53;->L()V

    invoke-virtual {p0}, Lr4/f53;->A()V

    :cond_9
    :goto_2
    if-eqz p2, :cond_a

    iget-object v2, p0, Lr4/cy3;->U0:Lr4/xx3;

    if-eq p2, v2, :cond_a

    invoke-direct {p0}, Lr4/cy3;->o0()V

    iput-boolean p1, p0, Lr4/cy3;->X0:Z

    sget p1, Lr4/lc;->a:I

    const/4 p1, 0x2

    if-ne v1, p1, :cond_c

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/cy3;->b1:J

    return-void

    :cond_a
    iput-object v0, p0, Lr4/cy3;->o1:Lr4/pa4;

    iput-boolean p1, p0, Lr4/cy3;->X0:Z

    sget p1, Lr4/lc;->a:I

    return-void

    :cond_b
    if-eqz p2, :cond_c

    iget-object p1, p0, Lr4/cy3;->U0:Lr4/xx3;

    if-eq p2, p1, :cond_c

    invoke-direct {p0}, Lr4/cy3;->o0()V

    iget-boolean p1, p0, Lr4/cy3;->V0:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lr4/cy3;->O0:Lr4/yy3;

    iget-object p2, p0, Lr4/cy3;->T0:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lr4/yy3;->g(Ljava/lang/Object;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public final a0(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lr4/f53;->a0(FF)V

    iget-object p2, p0, Lr4/cy3;->N0:Lr4/ny3;

    invoke-virtual {p2, p1}, Lr4/ny3;->f(F)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method public final d0(Ljava/lang/Throwable;Lr4/e33;)Lr4/d23;
    .locals 2

    new-instance v0, Lr4/ay3;

    iget-object v1, p0, Lr4/cy3;->T0:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lr4/ay3;-><init>(Ljava/lang/Throwable;Lr4/e33;Landroid/view/Surface;)V

    return-object v0
.end method

.method public final e0(Lr4/i4;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    iget-boolean v0, p0, Lr4/cy3;->S0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lr4/i4;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_1

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lr4/f53;->j0()Lr4/rn3;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hdr10-plus-info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p1, v1}, Lr4/rn3;->m(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final f0(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lr4/f53;->f0(J)V

    iget p1, p0, Lr4/cy3;->f1:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/cy3;->f1:I

    return-void
.end method

.method public final n(ZZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lr4/f53;->n(ZZ)V

    invoke-virtual {p0}, Lr4/c3;->h()Lr4/i7;

    iget-object p1, p0, Lr4/cy3;->O0:Lr4/yy3;

    iget-object v0, p0, Lr4/f53;->E0:Lr4/gp;

    invoke-virtual {p1, v0}, Lr4/yy3;->a(Lr4/gp;)V

    iget-object p1, p0, Lr4/cy3;->N0:Lr4/ny3;

    invoke-virtual {p1}, Lr4/ny3;->b()V

    iput-boolean p2, p0, Lr4/cy3;->Y0:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/cy3;->Z0:Z

    return-void
.end method

.method public final o(JZ)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lr4/f53;->o(JZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/cy3;->X0:Z

    sget p2, Lr4/lc;->a:I

    iget-object p2, p0, Lr4/cy3;->N0:Lr4/ny3;

    invoke-virtual {p2}, Lr4/ny3;->e()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/cy3;->g1:J

    iput-wide v0, p0, Lr4/cy3;->a1:J

    iput p1, p0, Lr4/cy3;->e1:I

    iput-wide v0, p0, Lr4/cy3;->b1:J

    return-void
.end method

.method public final p()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lr4/cy3;->d1:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lr4/cy3;->c1:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lr4/cy3;->h1:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lr4/cy3;->i1:J

    iput v0, p0, Lr4/cy3;->j1:I

    iget-object v0, p0, Lr4/cy3;->N0:Lr4/ny3;

    invoke-virtual {v0}, Lr4/ny3;->c()V

    return-void
.end method

.method public final q()V
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/cy3;->b1:J

    iget v0, p0, Lr4/cy3;->d1:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lr4/cy3;->c1:J

    iget-object v0, p0, Lr4/cy3;->O0:Lr4/yy3;

    iget v6, p0, Lr4/cy3;->d1:I

    sub-long v4, v2, v4

    invoke-virtual {v0, v6, v4, v5}, Lr4/yy3;->d(IJ)V

    iput v1, p0, Lr4/cy3;->d1:I

    iput-wide v2, p0, Lr4/cy3;->c1:J

    :cond_0
    iget v0, p0, Lr4/cy3;->j1:I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lr4/cy3;->O0:Lr4/yy3;

    iget-wide v3, p0, Lr4/cy3;->i1:J

    invoke-virtual {v2, v3, v4, v0}, Lr4/yy3;->e(JI)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lr4/cy3;->i1:J

    iput v1, p0, Lr4/cy3;->j1:I

    :cond_1
    iget-object v0, p0, Lr4/cy3;->N0:Lr4/ny3;

    invoke-virtual {v0}, Lr4/ny3;->i()V

    return-void
.end method

.method public final r()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/cy3;->o1:Lr4/pa4;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/cy3;->X0:Z

    sget v1, Lr4/lc;->a:I

    iput-boolean v0, p0, Lr4/cy3;->V0:Z

    iget-object v0, p0, Lr4/cy3;->N0:Lr4/ny3;

    invoke-virtual {v0}, Lr4/ny3;->j()V

    :try_start_0
    invoke-super {p0}, Lr4/f53;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr4/cy3;->O0:Lr4/yy3;

    iget-object v1, p0, Lr4/f53;->E0:Lr4/gp;

    invoke-virtual {v0, v1}, Lr4/yy3;->i(Lr4/gp;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lr4/cy3;->O0:Lr4/yy3;

    iget-object v2, p0, Lr4/f53;->E0:Lr4/gp;

    invoke-virtual {v1, v2}, Lr4/yy3;->i(Lr4/gp;)V

    throw v0
.end method

.method public final s()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lr4/f53;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lr4/cy3;->U0:Lr4/xx3;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lr4/cy3;->T0:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    iput-object v0, p0, Lr4/cy3;->T0:Landroid/view/Surface;

    :cond_0
    invoke-virtual {v1}, Lr4/xx3;->release()V

    iput-object v0, p0, Lr4/cy3;->U0:Lr4/xx3;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lr4/cy3;->U0:Lr4/xx3;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lr4/cy3;->T0:Landroid/view/Surface;

    if-ne v3, v2, :cond_2

    iput-object v0, p0, Lr4/cy3;->T0:Landroid/view/Surface;

    :cond_2
    invoke-virtual {v2}, Lr4/xx3;->release()V

    iput-object v0, p0, Lr4/cy3;->U0:Lr4/xx3;

    :cond_3
    throw v1
.end method

.method public final t0(Lr4/u73;Lr4/e5;)I
    .locals 5

    iget-object v0, p2, Lr4/e5;->l:Ljava/lang/String;

    invoke-static {v0}, Lr4/kb;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p2, Lr4/e5;->o:Lr4/fz3;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0, v1}, Lr4/cy3;->K0(Lr4/u73;Lr4/e5;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, p2, v1, v1}, Lr4/cy3;->K0(Lr4/u73;Lr4/e5;ZZ)Ljava/util/List;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    invoke-static {p2}, Lr4/f53;->i0(Lr4/e5;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 p1, 0x2

    return p1

    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/e33;

    invoke-virtual {v3, p2}, Lr4/e33;->c(Lr4/e5;)Z

    move-result v4

    invoke-virtual {v3, p2}, Lr4/e33;->d(Lr4/e5;)Z

    move-result v3

    if-eq v2, v3, :cond_5

    const/16 v3, 0x8

    goto :goto_1

    :cond_5
    const/16 v3, 0x10

    :goto_1
    if-eqz v4, :cond_6

    invoke-static {p1, p2, v0, v2}, Lr4/cy3;->K0(Lr4/u73;Lr4/e5;ZZ)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/e33;

    invoke-virtual {p1, p2}, Lr4/e33;->c(Lr4/e5;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2}, Lr4/e33;->d(Lr4/e5;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v1, 0x20

    :cond_6
    if-eq v2, v4, :cond_7

    const/4 p1, 0x3

    goto :goto_2

    :cond_7
    const/4 p1, 0x4

    :goto_2
    or-int/2addr p1, v3

    or-int/2addr p1, v1

    return p1
.end method

.method public final u0(Lr4/u73;Lr4/e5;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/u73;",
            "Lr4/e5;",
            "Z)",
            "Ljava/util/List<",
            "Lr4/e33;",
            ">;"
        }
    .end annotation

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lr4/cy3;->K0(Lr4/u73;Lr4/e5;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lr4/i4;)V
    .locals 0

    iget p1, p0, Lr4/cy3;->f1:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr4/cy3;->f1:I

    sget p1, Lr4/lc;->a:I

    return-void
.end method

.method public final w()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/cy3;->X0:Z

    sget v0, Lr4/lc;->a:I

    return-void
.end method

.method public final w0(Lr4/e33;Lr4/e5;Landroid/media/MediaCrypto;F)Lr4/b03;
    .locals 22
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-object v4, v0, Lr4/cy3;->U0:Lr4/xx3;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-boolean v6, v4, Lr4/xx3;->a:Z

    iget-boolean v7, v1, Lr4/e33;->f:Z

    if-eq v6, v7, :cond_0

    invoke-virtual {v4}, Lr4/xx3;->release()V

    iput-object v5, v0, Lr4/cy3;->U0:Lr4/xx3;

    :cond_0
    iget-object v4, v1, Lr4/e33;->c:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lr4/c3;->g()[Lr4/e5;

    move-result-object v6

    iget v7, v2, Lr4/e5;->q:I

    iget v8, v2, Lr4/e5;->r:I

    invoke-static/range {p1 .. p2}, Lr4/cy3;->S0(Lr4/e33;Lr4/e5;)I

    move-result v9

    array-length v10, v6

    const/4 v11, -0x1

    const/4 v13, 0x1

    if-ne v10, v13, :cond_2

    if-eq v9, v11, :cond_1

    invoke-static/range {p1 .. p2}, Lr4/cy3;->N0(Lr4/e33;Lr4/e5;)I

    move-result v6

    if-eq v6, v11, :cond_1

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v9, v9, v10

    float-to-int v9, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_1
    new-instance v6, Lr4/by3;

    invoke-direct {v6, v7, v8, v9}, Lr4/by3;-><init>(III)V

    move-object/from16 v16, v4

    goto/16 :goto_c

    :cond_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v14, v10, :cond_7

    aget-object v5, v6, v14

    iget-object v13, v2, Lr4/e5;->x:Lr4/av3;

    if-eqz v13, :cond_3

    iget-object v13, v5, Lr4/e5;->x:Lr4/av3;

    if-nez v13, :cond_3

    invoke-virtual {v5}, Lr4/e5;->a()Lr4/c5;

    move-result-object v5

    iget-object v13, v2, Lr4/e5;->x:Lr4/av3;

    invoke-virtual {v5, v13}, Lr4/c5;->z(Lr4/av3;)Lr4/c5;

    invoke-virtual {v5}, Lr4/c5;->I()Lr4/e5;

    move-result-object v5

    :cond_3
    invoke-virtual {v1, v2, v5}, Lr4/e33;->e(Lr4/e5;Lr4/e5;)Lr4/iq;

    move-result-object v13

    iget v13, v13, Lr4/iq;->d:I

    if-eqz v13, :cond_6

    iget v13, v5, Lr4/e5;->q:I

    if-eq v13, v11, :cond_5

    iget v12, v5, Lr4/e5;->r:I

    if-ne v12, v11, :cond_4

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v12, 0x1

    :goto_2
    or-int/2addr v15, v12

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v12, v5, Lr4/e5;->r:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v1, v5}, Lr4/cy3;->S0(Lr4/e33;Lr4/e5;)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v9, v5

    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/4 v13, 0x1

    goto :goto_0

    :cond_7
    if-eqz v15, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x42

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "MediaCodecVideoRenderer"

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v2, Lr4/e5;->r:I

    iget v11, v2, Lr4/e5;->q:I

    if-le v5, v11, :cond_8

    move v12, v5

    goto :goto_3

    :cond_8
    move v12, v11

    :goto_3
    if-gt v5, v11, :cond_9

    move v13, v5

    goto :goto_4

    :cond_9
    move v13, v11

    :goto_4
    int-to-float v14, v13

    int-to-float v15, v12

    div-float/2addr v14, v15

    sget-object v15, Lr4/cy3;->r1:[I

    move-object/from16 v16, v4

    const/4 v3, 0x0

    :goto_5
    const/16 v4, 0x9

    if-ge v3, v4, :cond_11

    aget v4, v15, v3

    move-object/from16 v17, v15

    int-to-float v15, v4

    mul-float v15, v15, v14

    float-to-int v15, v15

    if-le v4, v12, :cond_11

    if-gt v15, v13, :cond_a

    goto/16 :goto_8

    :cond_a
    move/from16 v18, v12

    sget v12, Lr4/lc;->a:I

    move/from16 v19, v13

    const/16 v13, 0x15

    if-lt v12, v13, :cond_d

    if-gt v5, v11, :cond_b

    move v12, v4

    goto :goto_6

    :cond_b
    move v12, v15

    :goto_6
    if-gt v5, v11, :cond_c

    move v4, v15

    :cond_c
    invoke-virtual {v1, v12, v4}, Lr4/e33;->g(II)Landroid/graphics/Point;

    move-result-object v4

    iget v12, v2, Lr4/e5;->s:F

    iget v13, v4, Landroid/graphics/Point;->x:I

    iget v15, v4, Landroid/graphics/Point;->y:I

    move/from16 v20, v9

    move-object/from16 v21, v10

    float-to-double v9, v12

    invoke-virtual {v1, v13, v15, v9, v10}, Lr4/e33;->f(IID)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_a

    :cond_d
    move/from16 v20, v9

    move-object/from16 v21, v10

    const/16 v9, 0x10

    :try_start_0
    invoke-static {v4, v9}, Lr4/lc;->b0(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    invoke-static {v15, v9}, Lr4/lc;->b0(II)I

    move-result v10

    mul-int/lit8 v10, v10, 0x10

    mul-int v9, v4, v10

    invoke-static {}, Lr4/nk3;->e()I

    move-result v12

    if-gt v9, v12, :cond_10

    new-instance v3, Landroid/graphics/Point;

    if-gt v5, v11, :cond_e

    move v9, v4

    goto :goto_7

    :cond_e
    move v9, v10

    :goto_7
    if-gt v5, v11, :cond_f

    move v4, v10

    :cond_f
    invoke-direct {v3, v9, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Lr4/ae3; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    goto :goto_a

    :cond_10
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v15, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v9, v20

    move-object/from16 v10, v21

    goto :goto_5

    :catch_0
    nop

    goto :goto_9

    :cond_11
    :goto_8
    move/from16 v20, v9

    move-object/from16 v21, v10

    :goto_9
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_12

    iget v3, v4, Landroid/graphics/Point;->x:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v3, v4, Landroid/graphics/Point;->y:I

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lr4/e5;->a()Lr4/c5;

    move-result-object v3

    invoke-virtual {v3, v7}, Lr4/c5;->s(I)Lr4/c5;

    invoke-virtual {v3, v8}, Lr4/c5;->t(I)Lr4/c5;

    invoke-virtual {v3}, Lr4/c5;->I()Lr4/e5;

    move-result-object v3

    invoke-static {v1, v3}, Lr4/cy3;->N0(Lr4/e33;Lr4/e5;)I

    move-result v3

    move/from16 v9, v20

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Codec max resolution adjusted to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_12
    move/from16 v9, v20

    goto :goto_b

    :cond_13
    move-object/from16 v16, v4

    :goto_b
    new-instance v6, Lr4/by3;

    invoke-direct {v6, v7, v8, v9}, Lr4/by3;-><init>(III)V

    :goto_c
    iput-object v6, v0, Lr4/cy3;->Q0:Lr4/by3;

    iget-boolean v3, v0, Lr4/cy3;->P0:Z

    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    const-string v5, "mime"

    move-object/from16 v7, v16

    invoke-virtual {v4, v5, v7}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v2, Lr4/e5;->q:I

    const-string v7, "width"

    invoke-virtual {v4, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v5, v2, Lr4/e5;->r:I

    const-string v7, "height"

    invoke-virtual {v4, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v5, v2, Lr4/e5;->n:Ljava/util/List;

    invoke-static {v4, v5}, Lr4/hb;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    iget v5, v2, Lr4/e5;->s:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v8, v5, v7

    if-eqz v8, :cond_14

    const-string v8, "frame-rate"

    invoke-virtual {v4, v8, v5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_14
    iget v5, v2, Lr4/e5;->t:I

    const-string v8, "rotation-degrees"

    invoke-static {v4, v8, v5}, Lr4/hb;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v5, v2, Lr4/e5;->x:Lr4/av3;

    if-eqz v5, :cond_15

    iget v8, v5, Lr4/av3;->c:I

    const-string v9, "color-transfer"

    invoke-static {v4, v9, v8}, Lr4/hb;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v8, v5, Lr4/av3;->a:I

    const-string v9, "color-standard"

    invoke-static {v4, v9, v8}, Lr4/hb;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v8, v5, Lr4/av3;->b:I

    const-string v9, "color-range"

    invoke-static {v4, v9, v8}, Lr4/hb;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v5, v5, Lr4/av3;->d:[B

    if-eqz v5, :cond_15

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    const-string v8, "hdr-static-info"

    invoke-virtual {v4, v8, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_15
    iget-object v5, v2, Lr4/e5;->l:Ljava/lang/String;

    const-string v8, "video/dolby-vision"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static/range {p2 .. p2}, Lr4/nk3;->f(Lr4/e5;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_16

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v8, "profile"

    invoke-static {v4, v8, v5}, Lr4/hb;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_16
    iget v5, v6, Lr4/by3;->a:I

    const-string v8, "max-width"

    invoke-virtual {v4, v8, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v5, v6, Lr4/by3;->b:I

    const-string v8, "max-height"

    invoke-virtual {v4, v8, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v5, v6, Lr4/by3;->c:I

    const-string v6, "max-input-size"

    invoke-static {v4, v6, v5}, Lr4/hb;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget v5, Lr4/lc;->a:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_17

    const-string v5, "priority"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move/from16 v5, p4

    cmpl-float v6, v5, v7

    if-eqz v6, :cond_17

    const-string v6, "operating-rate"

    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_17
    if-eqz v3, :cond_18

    const-string v3, "no-post-process"

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "auto-frc"

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_18
    iget-object v3, v0, Lr4/cy3;->T0:Landroid/view/Surface;

    if-nez v3, :cond_1b

    invoke-virtual/range {p0 .. p1}, Lr4/cy3;->L0(Lr4/e33;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lr4/cy3;->U0:Lr4/xx3;

    if-nez v3, :cond_19

    iget-object v3, v0, Lr4/cy3;->M0:Landroid/content/Context;

    iget-boolean v5, v1, Lr4/e33;->f:Z

    invoke-static {v3, v5}, Lr4/xx3;->h(Landroid/content/Context;Z)Lr4/xx3;

    move-result-object v3

    iput-object v3, v0, Lr4/cy3;->U0:Lr4/xx3;

    :cond_19
    iget-object v3, v0, Lr4/cy3;->U0:Lr4/xx3;

    iput-object v3, v0, Lr4/cy3;->T0:Landroid/view/Surface;

    goto :goto_d

    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1b
    :goto_d
    iget-object v3, v0, Lr4/cy3;->T0:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v3, v5}, Lr4/b03;->b(Lr4/e33;Landroid/media/MediaFormat;Lr4/e5;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lr4/b03;

    move-result-object v1

    return-object v1
.end method

.method public final x0(Lr4/e33;Lr4/e5;Lr4/e5;)Lr4/iq;
    .locals 9

    invoke-virtual {p1, p2, p3}, Lr4/e33;->e(Lr4/e5;Lr4/e5;)Lr4/iq;

    move-result-object v0

    iget v1, v0, Lr4/iq;->e:I

    iget v2, p3, Lr4/e5;->q:I

    iget-object v3, p0, Lr4/cy3;->Q0:Lr4/by3;

    iget v4, v3, Lr4/by3;->a:I

    if-gt v2, v4, :cond_0

    iget v2, p3, Lr4/e5;->r:I

    iget v3, v3, Lr4/by3;->b:I

    if-le v2, v3, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x100

    :cond_1
    invoke-static {p1, p3}, Lr4/cy3;->S0(Lr4/e33;Lr4/e5;)I

    move-result v2

    iget-object v3, p0, Lr4/cy3;->Q0:Lr4/by3;

    iget v3, v3, Lr4/by3;->c:I

    if-le v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x40

    :cond_2
    new-instance v8, Lr4/iq;

    iget-object v3, p1, Lr4/e33;->a:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v1, :cond_3

    move v7, v1

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    iget v0, v0, Lr4/iq;->d:I

    move v6, v0

    const/4 v7, 0x0

    :goto_0
    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lr4/iq;-><init>(Ljava/lang/String;Lr4/e5;Lr4/e5;II)V

    return-object v8
.end method

.method public final y(JJLr4/rn3;Ljava/nio/ByteBuffer;IIIJZZLr4/e5;)Z
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-wide/from16 v5, p10

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, v0, Lr4/cy3;->a1:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    iput-wide v1, v0, Lr4/cy3;->a1:J

    :cond_0
    iget-wide v7, v0, Lr4/cy3;->g1:J

    cmp-long v11, v5, v7

    if-eqz v11, :cond_1

    iget-object v7, v0, Lr4/cy3;->N0:Lr4/ny3;

    invoke-virtual {v7, v5, v6}, Lr4/ny3;->h(J)V

    iput-wide v5, v0, Lr4/cy3;->g1:J

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lr4/f53;->h0()J

    move-result-wide v7

    sub-long v11, v5, v7

    const/4 v13, 0x1

    if-eqz p12, :cond_3

    if-eqz p13, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, v4, v11, v12}, Lr4/cy3;->T0(Lr4/rn3;IJ)V

    return v13

    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lr4/f53;->g0()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lr4/c3;->F0()I

    move-result v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    sub-long/2addr v5, v1

    long-to-double v5, v5

    float-to-double v9, v14

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v9

    double-to-long v5, v5

    const/4 v9, 0x2

    if-ne v15, v9, :cond_4

    sub-long v20, v16, p3

    sub-long v5, v5, v20

    :cond_4
    iget-object v10, v0, Lr4/cy3;->T0:Landroid/view/Surface;

    iget-object v14, v0, Lr4/cy3;->U0:Lr4/xx3;

    const/4 v9, 0x0

    if-ne v10, v14, :cond_6

    invoke-static {v5, v6}, Lr4/cy3;->M0(J)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3, v4, v11, v12}, Lr4/cy3;->T0(Lr4/rn3;IJ)V

    invoke-virtual {v0, v5, v6}, Lr4/cy3;->Q0(J)V

    return v13

    :cond_5
    return v9

    :cond_6
    iget-wide v9, v0, Lr4/cy3;->h1:J

    sub-long v16, v16, v9

    iget-boolean v9, v0, Lr4/cy3;->Z0:Z

    if-nez v9, :cond_7

    const/4 v9, 0x2

    if-eq v15, v9, :cond_8

    iget-boolean v9, v0, Lr4/cy3;->Y0:Z

    if-eqz v9, :cond_9

    goto :goto_1

    :cond_7
    iget-boolean v9, v0, Lr4/cy3;->X0:Z

    if-nez v9, :cond_9

    :cond_8
    :goto_1
    const/4 v9, 0x1

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    :goto_2
    iget-wide v13, v0, Lr4/cy3;->b1:J

    const/16 v10, 0x15

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v22, v13, v20

    if-nez v22, :cond_c

    cmp-long v13, v1, v7

    if-ltz v13, :cond_c

    if-nez v9, :cond_a

    const/4 v7, 0x2

    if-ne v15, v7, :cond_c

    invoke-static {v5, v6}, Lr4/cy3;->M0(J)Z

    move-result v7

    if-eqz v7, :cond_c

    const-wide/32 v7, 0x186a0

    cmp-long v9, v16, v7

    if-lez v9, :cond_c

    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget v7, Lr4/lc;->a:I

    if-lt v7, v10, :cond_b

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v1

    invoke-virtual/range {p8 .. p14}, Lr4/cy3;->O0(Lr4/rn3;IJJ)V

    goto :goto_3

    :cond_b
    invoke-virtual {v0, v3, v4, v11, v12}, Lr4/cy3;->I0(Lr4/rn3;IJ)V

    :goto_3
    invoke-virtual {v0, v5, v6}, Lr4/cy3;->Q0(J)V

    const/4 v1, 0x1

    return v1

    :cond_c
    const/4 v8, 0x2

    if-ne v15, v8, :cond_16

    iget-wide v8, v0, Lr4/cy3;->a1:J

    cmp-long v13, v1, v8

    if-nez v13, :cond_d

    goto/16 :goto_8

    :cond_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-object v13, v0, Lr4/cy3;->N0:Lr4/ny3;

    mul-long v5, v5, v18

    add-long/2addr v5, v8

    invoke-virtual {v13, v5, v6}, Lr4/ny3;->k(J)J

    move-result-wide v5

    sub-long v8, v5, v8

    div-long v8, v8, v18

    iget-wide v13, v0, Lr4/cy3;->b1:J

    const-wide/32 v15, -0x7a120

    cmp-long v17, v8, v15

    if-gez v17, :cond_10

    if-nez p13, :cond_10

    invoke-virtual/range {p0 .. p2}, Lr4/c3;->l(J)I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_5

    :cond_e
    iget-object v2, v0, Lr4/f53;->E0:Lr4/gp;

    iget v3, v2, Lr4/gp;->i:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lr4/gp;->i:I

    iget v3, v0, Lr4/cy3;->f1:I

    add-int/2addr v3, v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v13, v4

    if-eqz v1, :cond_f

    iget v1, v2, Lr4/gp;->f:I

    add-int/2addr v1, v3

    iput v1, v2, Lr4/gp;->f:I

    goto :goto_4

    :cond_f
    invoke-virtual {v0, v3}, Lr4/cy3;->J0(I)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lr4/f53;->M()Z

    const/4 v1, 0x0

    return v1

    :cond_10
    :goto_5
    invoke-static {v8, v9}, Lr4/cy3;->M0(J)Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez p13, :cond_12

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v13, v15

    if-eqz v2, :cond_11

    invoke-virtual {v0, v3, v4, v11, v12}, Lr4/cy3;->T0(Lr4/rn3;IJ)V

    const/4 v1, 0x1

    goto :goto_6

    :cond_11
    const-string v2, "dropVideoBuffer"

    invoke-static {v2}, Lr4/gc;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v4, v2}, Lr4/rn3;->h(IZ)V

    invoke-static {}, Lr4/gc;->b()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr4/cy3;->J0(I)V

    :goto_6
    invoke-virtual {v0, v8, v9}, Lr4/cy3;->Q0(J)V

    return v1

    :cond_12
    sget v2, Lr4/lc;->a:I

    if-lt v2, v10, :cond_13

    const-wide/32 v13, 0xc350

    cmp-long v2, v8, v13

    if-gez v2, :cond_15

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v5

    invoke-virtual/range {p8 .. p14}, Lr4/cy3;->O0(Lr4/rn3;IJJ)V

    invoke-virtual {v0, v8, v9}, Lr4/cy3;->Q0(J)V

    const/4 v1, 0x1

    return v1

    :cond_13
    const-wide/16 v1, 0x7530

    cmp-long v5, v8, v1

    if-gez v5, :cond_15

    const-wide/16 v1, 0x2af8

    cmp-long v5, v8, v1

    if-lez v5, :cond_14

    const-wide/16 v1, -0x2710

    add-long/2addr v1, v8

    :try_start_0
    div-long v1, v1, v18

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    return v1

    :cond_14
    :goto_7
    invoke-virtual {v0, v3, v4, v11, v12}, Lr4/cy3;->I0(Lr4/rn3;IJ)V

    invoke-virtual {v0, v8, v9}, Lr4/cy3;->Q0(J)V

    const/4 v1, 0x1

    return v1

    :cond_15
    const/4 v1, 0x0

    return v1

    :cond_16
    :goto_8
    const/4 v1, 0x0

    return v1
.end method

.method public final y0(FLr4/e5;[Lr4/e5;)F
    .locals 5

    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    iget v3, v3, Lr4/e5;->s:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p2, v2, v0

    if-nez p2, :cond_2

    return v0

    :cond_2
    mul-float v2, v2, p1

    return v2
.end method

.method public final z0(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lr4/cy3;->O0:Lr4/yy3;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lr4/yy3;->b(Ljava/lang/String;JJ)V

    invoke-static {p1}, Lr4/cy3;->P0(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lr4/cy3;->R0:Z

    invoke-virtual {p0}, Lr4/f53;->I()Lr4/e33;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lr4/lc;->a:I

    const/16 p3, 0x1d

    const/4 p4, 0x0

    if-lt p2, p3, :cond_1

    iget-object p2, p1, Lr4/e33;->b:Ljava/lang/String;

    const-string p3, "video/x-vnd.on2.vp9"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lr4/e33;->b()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p5, p1, p3

    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v0, 0x4000

    if-ne p5, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p4, p0, Lr4/cy3;->S0:Z

    return-void
.end method
