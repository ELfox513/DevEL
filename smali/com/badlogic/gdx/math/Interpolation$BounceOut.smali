.class public Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BounceOut"
.end annotation


# instance fields
.field public final a:[F

.field public final b:[F


# direct methods
.method public constructor <init>(I)V
    .locals 11

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    const/4 v1, 0x5

    if-gt p1, v1, :cond_4

    new-array v2, p1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->a:[F

    new-array v3, p1, [F

    iput-object v3, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->b:[F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    const v4, 0x3ea8f5c3    # 0.33f

    const v6, 0x3ecccccd    # 0.4f

    const/4 v7, 0x1

    if-eq p1, v0, :cond_3

    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v10, 0x3

    if-eq p1, v10, :cond_2

    const v4, 0x3e19999a    # 0.15f

    const/4 v6, 0x4

    if-eq p1, v6, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    aput p1, v2, v5

    aput p1, v2, v7

    aput v9, v2, v0

    aput v8, v2, v10

    aput v8, v2, v6

    const v1, 0x3ee66666    # 0.45f

    aput v1, v3, v7

    aput p1, v3, v0

    aput v4, v3, v10

    const p1, 0x3d75c28f    # 0.06f

    aput p1, v3, v6

    goto :goto_0

    :cond_1
    const p1, 0x3eae147b    # 0.34f

    aput p1, v2, v5

    aput p1, v2, v7

    aput v9, v2, v0

    aput v4, v2, v10

    const p1, 0x3e851eb8    # 0.26f

    aput p1, v3, v7

    const p1, 0x3de147ae    # 0.11f

    aput p1, v3, v0

    const p1, 0x3cf5c28f    # 0.03f

    aput p1, v3, v10

    goto :goto_0

    :cond_2
    aput v6, v2, v5

    aput v6, v2, v7

    aput v9, v2, v0

    aput v4, v3, v7

    aput v8, v3, v0

    goto :goto_0

    :cond_3
    const p1, 0x3f19999a    # 0.6f

    aput p1, v2, v5

    aput v6, v2, v7

    aput v4, v3, v7

    :goto_0
    aget p1, v2, v5

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    aput p1, v2, v5

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounces cannot be < 2 or > 5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([F[F)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->a:[F

    iput-object p2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->b:[F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must be the same number of widths and heights."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public apply(F)F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->a:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr p1, v3

    array-length v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->a:[F

    aget v4, v4, v2

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->b:[F

    aget v3, v1, v2

    goto :goto_1

    :cond_1
    sub-float/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    div-float/2addr p1, v4

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v1, v4

    mul-float v1, v1, v3

    mul-float v1, v1, p1

    mul-float p1, p1, v1

    sub-float/2addr v1, p1

    mul-float v1, v1, v4

    sub-float/2addr v0, v1

    return v0
.end method
