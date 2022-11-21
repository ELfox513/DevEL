.class public final Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/DoubleDistribution;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    neg-double v0, p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 11

    add-double v0, p1, p3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v9, v0, v2

    move-object v4, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/DoubleDistribution;-><init>()V

    iput-wide p1, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->a:D

    iput-wide p3, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->b:D

    iput-wide p5, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->c:D

    return-void
.end method

.method public static a(D)D
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    sget-object v2, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    sub-double/2addr v0, v2

    mul-double v0, v0, p0

    return-wide v0
.end method

.method public static b(DDD)D
    .locals 9

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    sub-double v2, p2, p0

    sub-double v4, p4, p0

    div-double v6, v4, v2

    cmpg-double v8, v0, v6

    if-gtz v8, :cond_0

    mul-double v0, v0, v2

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    add-double/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    mul-double p0, p0, v2

    sub-double p4, p2, p4

    mul-double p0, p0, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    sub-double/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public getHigh()D
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->b:D

    return-wide v0
.end method

.method public getLow()D
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->a:D

    return-wide v0
.end method

.method public getMode()D
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->c:D

    return-wide v0
.end method

.method public nextDouble()D
    .locals 9

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->a:D

    neg-double v2, v0

    iget-wide v4, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->b:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->c:D

    const-wide/16 v6, 0x0

    cmpl-double v8, v2, v6

    if-nez v8, :cond_0

    invoke-static {v4, v5}, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->a(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v6, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->c:D

    move-wide v2, v4

    move-wide v4, v6

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->b(DDD)D

    move-result-wide v0

    return-wide v0
.end method
