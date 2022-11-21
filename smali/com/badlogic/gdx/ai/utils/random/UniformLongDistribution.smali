.class public final Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/LongDistribution;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/LongDistribution;-><init>()V

    iput-wide p1, p0, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;->a:J

    iput-wide p3, p0, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;->b:J

    return-void
.end method


# virtual methods
.method public getHigh()J
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;->b:J

    return-wide v0
.end method

.method public getLow()J
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;->a:J

    return-wide v0
.end method

.method public nextLong()J
    .locals 8

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;->a:J

    sget-object v2, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;->b:J

    iget-wide v6, p0, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;->a:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
