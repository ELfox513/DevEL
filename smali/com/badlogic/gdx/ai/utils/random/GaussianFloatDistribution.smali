.class public final Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;
.source "SourceFile"


# static fields
.field public static final STANDARD_NORMAL:Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;->STANDARD_NORMAL:Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;->a:F

    iput p2, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;->b:F

    return-void
.end method


# virtual methods
.method public getMean()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;->a:F

    return v0
.end method

.method public getStandardDeviation()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;->b:F

    return v0
.end method

.method public nextFloat()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;->a:F

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/ai/utils/random/GaussianFloatDistribution;->b:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method
