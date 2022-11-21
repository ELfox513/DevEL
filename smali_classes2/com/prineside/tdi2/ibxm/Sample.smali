.class public Lcom/prineside/tdi2/ibxm/Sample;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C2_NTSC:I = 0x20ab

.field public static final C2_PAL:I = 0x205f

.field public static final FP_MASK:I = 0x7fff

.field public static final FP_ONE:I = 0x8000

.field public static final FP_SHIFT:I = 0xf

.field public static final c:[[S


# instance fields
.field public a:I

.field public b:I

.field public fineTune:I

.field public name:Ljava/lang/String;

.field public panning:I

.field public relNote:I

.field public sampleData:[S

.field public volume:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/ibxm/Sample;->b()[[S

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/ibxm/Sample;->c:[[S

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->volume:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->panning:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->relNote:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->fineTune:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->a:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ibxm/Sample;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->volume:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->panning:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->relNote:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->fineTune:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->a:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->b:I

    iget-object v1, p1, Lcom/prineside/tdi2/ibxm/Sample;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->name:Ljava/lang/String;

    iget v1, p1, Lcom/prineside/tdi2/ibxm/Sample;->volume:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->volume:I

    iget v1, p1, Lcom/prineside/tdi2/ibxm/Sample;->panning:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->panning:I

    iget v1, p1, Lcom/prineside/tdi2/ibxm/Sample;->relNote:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->relNote:I

    iget v1, p1, Lcom/prineside/tdi2/ibxm/Sample;->fineTune:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->fineTune:I

    iget v1, p1, Lcom/prineside/tdi2/ibxm/Sample;->a:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->a:I

    iget v1, p1, Lcom/prineside/tdi2/ibxm/Sample;->b:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->b:I

    iget-object v1, p1, Lcom/prineside/tdi2/ibxm/Sample;->sampleData:[S

    if-eqz v1, :cond_0

    array-length v1, v1

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->sampleData:[S

    iget-object p1, p1, Lcom/prineside/tdi2/ibxm/Sample;->sampleData:[S

    array-length v2, v1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public static a(D)[S
    .locals 21

    const/16 v0, 0x110

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-gt v2, v4, :cond_2

    int-to-double v5, v2

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    const-wide/high16 v9, 0x401c000000000000L    # 7.0

    add-double/2addr v5, v9

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v13, v5, v11

    div-double/2addr v13, v7

    add-double/2addr v13, v9

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_1

    const-wide/16 v8, 0x0

    cmpl-double v10, v5, v8

    if-eqz v10, :cond_0

    mul-double v8, p0, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double/2addr v8, v5

    goto :goto_2

    :cond_0
    move-wide/from16 v8, p0

    :goto_2
    const-wide v15, 0x3fd6f5c28f5c28f6L    # 0.35875

    const-wide v17, 0x3fdf4024b33daf8eL    # 0.48829

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v17

    sub-double v15, v15, v19

    const-wide v17, 0x3fc2157689ca18bdL    # 0.14128

    mul-double v19, v13, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v17

    add-double v15, v15, v19

    const-wide v17, 0x3f87ebaf102363b2L    # 0.01168

    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    mul-double v19, v19, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v17

    sub-double v15, v15, v19

    add-int/lit8 v10, v3, 0x1

    mul-double v8, v8, v15

    const-wide v15, 0x40dfffc000000000L    # 32767.0

    mul-double v8, v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v9, v8

    int-to-short v8, v9

    aput-short v8, v0, v3

    const-wide v8, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    add-double/2addr v5, v8

    const-wide v8, -0x4026de04abbbd2e8L    # -0.39269908169872414

    add-double/2addr v13, v8

    add-int/lit8 v7, v7, 0x1

    move v3, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method public static b()[[S
    .locals 8

    const/16 v0, 0x8

    new-array v1, v0, [[S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v5, v2, 0x1

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Lcom/prineside/tdi2/ibxm/Sample;->a(D)[S

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v5

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public looped()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public normaliseSampleIdx(I)I
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->a:I

    sub-int v1, p1, v0

    if-lez v1, :cond_1

    iget p1, p0, Lcom/prineside/tdi2/ibxm/Sample;->b:I

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    rem-int/2addr v1, p1

    add-int p1, v0, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method public resampleLinear(IIIII[III)V
    .locals 7

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->b:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->a:I

    add-int/2addr v1, v0

    add-int/lit8 p1, p1, 0x8

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/Sample;->normaliseSampleIdx(I)I

    move-result p1

    :cond_0
    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Sample;->sampleData:[S

    shl-int/lit8 v3, p7, 0x1

    add-int/2addr p7, p8

    shl-int/lit8 p7, p7, 0x1

    :goto_0
    if-ge v3, p7, :cond_3

    if-lt p1, v1, :cond_2

    const/4 p8, 0x2

    if-ge v0, p8, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    if-lt p1, v1, :cond_2

    sub-int/2addr p1, v0

    goto :goto_1

    :cond_2
    aget-short p8, v2, p1

    add-int/lit8 v4, p1, 0x1

    aget-short v4, v2, v4

    sub-int/2addr v4, p8

    mul-int v4, v4, p2

    shr-int/lit8 v4, v4, 0xf

    add-int/2addr v4, p8

    add-int/lit8 p8, v3, 0x1

    aget v5, p6, v3

    mul-int v6, v4, p4

    shr-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    aput v5, p6, v3

    add-int/lit8 v3, p8, 0x1

    aget v5, p6, p8

    mul-int v4, v4, p5

    shr-int/lit8 v4, v4, 0xf

    add-int/2addr v5, v4

    aput v5, p6, p8

    add-int/2addr p2, p3

    shr-int/lit8 p8, p2, 0xf

    add-int/2addr p1, p8

    and-int/lit16 p2, p2, 0x7fff

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public resampleNearest(IIIII[III)V
    .locals 7

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Sample;->b:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->a:I

    add-int/2addr v1, v0

    add-int/lit8 p1, p1, 0x8

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/Sample;->normaliseSampleIdx(I)I

    move-result p1

    :cond_0
    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Sample;->sampleData:[S

    shl-int/lit8 v3, p7, 0x1

    add-int/2addr p7, p8

    shl-int/lit8 p7, p7, 0x1

    :goto_0
    if-ge v3, p7, :cond_3

    if-lt p1, v1, :cond_2

    const/4 p8, 0x2

    if-ge v0, p8, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    if-lt p1, v1, :cond_2

    sub-int/2addr p1, v0

    goto :goto_1

    :cond_2
    aget-short p8, v2, p1

    add-int/lit8 v4, v3, 0x1

    aget v5, p6, v3

    mul-int v6, p8, p4

    shr-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    aput v5, p6, v3

    add-int/lit8 v3, v4, 0x1

    aget v5, p6, v4

    mul-int p8, p8, p5

    shr-int/lit8 p8, p8, 0xf

    add-int/2addr v5, p8

    aput v5, p6, v4

    add-int/2addr p2, p3

    shr-int/lit8 p8, p2, 0xf

    add-int/2addr p1, p8

    and-int/lit16 p2, p2, 0x7fff

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public resampleSinc(IIIII[III)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    const v3, 0x8000

    if-le v1, v3, :cond_0

    shr-int/lit8 v3, v1, 0xf

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    sget-object v4, Lcom/prineside/tdi2/ibxm/Sample;->c:[[S

    aget-object v3, v4, v3

    iget v4, v0, Lcom/prineside/tdi2/ibxm/Sample;->b:I

    iget v5, v0, Lcom/prineside/tdi2/ibxm/Sample;->a:I

    add-int/2addr v5, v4

    move/from16 v6, p1

    if-lt v6, v5, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/prineside/tdi2/ibxm/Sample;->normaliseSampleIdx(I)I

    move-result v6

    :cond_2
    iget-object v7, v0, Lcom/prineside/tdi2/ibxm/Sample;->sampleData:[S

    shl-int/lit8 v8, p7, 0x1

    add-int v9, p7, p8

    shl-int/lit8 v9, v9, 0x1

    move v10, v8

    move v8, v6

    move/from16 v6, p2

    :goto_1
    if-ge v10, v9, :cond_6

    if-lt v8, v5, :cond_4

    const/4 v11, 0x2

    if-ge v4, v11, :cond_3

    goto :goto_4

    :cond_3
    :goto_2
    if-lt v8, v5, :cond_4

    sub-int/2addr v8, v4

    goto :goto_2

    :cond_4
    shr-int/lit8 v11, v6, 0xb

    shl-int/lit8 v11, v11, 0x4

    add-int/lit8 v12, v11, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    const/16 v2, 0x10

    if-ge v13, v2, :cond_5

    add-int v2, v11, v13

    aget-short v2, v3, v2

    add-int v16, v8, v13

    aget-short v16, v7, v16

    mul-int v2, v2, v16

    add-int/2addr v14, v2

    add-int v2, v12, v13

    aget-short v2, v3, v2

    mul-int v2, v2, v16

    add-int/2addr v15, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    shr-int/lit8 v2, v14, 0xf

    shr-int/lit8 v11, v15, 0xf

    sub-int/2addr v11, v2

    and-int/lit16 v12, v6, 0x7ff

    mul-int v11, v11, v12

    shr-int/lit8 v11, v11, 0xb

    add-int/2addr v2, v11

    add-int/lit8 v11, v10, 0x1

    aget v12, p6, v10

    mul-int v13, v2, p4

    shr-int/lit8 v13, v13, 0xf

    add-int/2addr v12, v13

    aput v12, p6, v10

    add-int/lit8 v10, v11, 0x1

    aget v12, p6, v11

    mul-int v2, v2, p5

    shr-int/lit8 v2, v2, 0xf

    add-int/2addr v12, v2

    aput v12, p6, v11

    add-int/2addr v6, v1

    shr-int/lit8 v2, v6, 0xf

    add-int/2addr v8, v2

    and-int/lit16 v6, v6, 0x7fff

    goto :goto_1

    :cond_6
    :goto_4
    return-void
.end method

.method public setSampleData([SIIZ)V
    .locals 5

    array-length v0, p1

    if-ltz p2, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    move p2, v0

    :cond_1
    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-le v1, v0, :cond_3

    :cond_2
    sub-int p3, v0, p2

    :cond_3
    add-int v0, p2, p3

    const/16 v1, 0x8

    add-int/2addr p2, v1

    add-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    if-eqz p4, :cond_4

    move v4, p3

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x10

    new-array v2, v2, [S

    invoke-static {p1, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p4, :cond_6

    add-int p1, p2, p3

    :goto_1
    if-ge v3, p3, :cond_5

    add-int p4, p1, v3

    sub-int v0, p1, v3

    add-int/lit8 v0, v0, -0x1

    aget-short v0, v2, v0

    aput-short v0, v2, p4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    mul-int/lit8 p3, p3, 0x2

    :cond_6
    add-int p1, p2, p3

    add-int/lit8 p4, p1, 0x10

    :goto_2
    if-ge p1, p4, :cond_7

    sub-int v0, p1, p3

    aget-short v0, v2, v0

    aput-short v0, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    iput-object v2, p0, Lcom/prineside/tdi2/ibxm/Sample;->sampleData:[S

    iput p2, p0, Lcom/prineside/tdi2/ibxm/Sample;->a:I

    iput p3, p0, Lcom/prineside/tdi2/ibxm/Sample;->b:I

    return-void
.end method

.method public toStringBuffer(Ljava/lang/StringBuffer;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Sample;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Sample;->volume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Panning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Sample;->panning:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relative Note: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Sample;->relNote:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fine Tune: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Sample;->fineTune:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loop Start: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Sample;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loop Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Sample;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
