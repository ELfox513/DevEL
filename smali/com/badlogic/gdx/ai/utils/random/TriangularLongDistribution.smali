.class public final Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/LongDistribution;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:D


# direct methods
.method public constructor <init>(J)V
    .locals 2

    neg-long v0, p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 11

    add-long v0, p1, p3

    long-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v0, v2

    move-object v4, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;-><init>(JJD)V

    return-void
.end method

.method public constructor <init>(JJD)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/LongDistribution;-><init>()V

    iput-wide p1, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;->a:J

    iput-wide p3, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;->b:J

    iput-wide p5, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;->c:D

    return-void
.end method


# virtual methods
.method public getHigh()J
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;->b:J

    return-wide v0
.end method

.method public getLow()J
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;->a:J

    return-wide v0
.end method

.method public getMode()D
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;->c:D

    return-wide v0
.end method

.method public nextLong()J
    .locals 9

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;->a:J

    neg-long v2, v0

    iget-wide v4, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;->c:D

    const-wide/16 v6, 0x0

    cmpl-double v8, v2, v6

    if-nez v8, :cond_0

    long-to-double v0, v4

    invoke-static {v0, v1}, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->a(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    long-to-double v2, v0

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularLongDistribution;->c:D

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/ai/utils/random/TriangularDoubleDistribution;->b(DDD)D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method
