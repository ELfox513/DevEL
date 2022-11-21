.class public final Lcom/badlogic/gdx/ai/utils/random/UniformDoubleDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/DoubleDistribution;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/ai/utils/random/UniformDoubleDistribution;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/DoubleDistribution;-><init>()V

    iput-wide p1, p0, Lcom/badlogic/gdx/ai/utils/random/UniformDoubleDistribution;->a:D

    iput-wide p3, p0, Lcom/badlogic/gdx/ai/utils/random/UniformDoubleDistribution;->b:D

    return-void
.end method


# virtual methods
.method public getHigh()D
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformDoubleDistribution;->b:D

    return-wide v0
.end method

.method public getLow()D
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformDoubleDistribution;->a:D

    return-wide v0
.end method

.method public nextDouble()D
    .locals 8

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformDoubleDistribution;->a:D

    sget-object v2, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/badlogic/gdx/ai/utils/random/UniformDoubleDistribution;->b:D

    iget-wide v6, p0, Lcom/badlogic/gdx/ai/utils/random/UniformDoubleDistribution;->a:D

    sub-double/2addr v4, v6

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method
