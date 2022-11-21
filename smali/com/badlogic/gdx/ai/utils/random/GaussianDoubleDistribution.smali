.class public final Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/DoubleDistribution;
.source "SourceFile"


# static fields
.field public static final STANDARD_NORMAL:Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;-><init>(DD)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;->STANDARD_NORMAL:Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/DoubleDistribution;-><init>()V

    iput-wide p1, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;->a:D

    iput-wide p3, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;->b:D

    return-void
.end method


# virtual methods
.method public getMean()D
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;->a:D

    return-wide v0
.end method

.method public getStandardDeviation()D
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;->b:D

    return-wide v0
.end method

.method public nextDouble()D
    .locals 6

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;->a:D

    sget-object v2, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianDoubleDistribution;->b:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method
