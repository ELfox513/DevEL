.class public final Lcom/badlogic/gdx/ai/utils/random/UniformFloatDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/ai/utils/random/UniformFloatDistribution;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/utils/random/UniformFloatDistribution;->a:F

    iput p2, p0, Lcom/badlogic/gdx/ai/utils/random/UniformFloatDistribution;->b:F

    return-void
.end method


# virtual methods
.method public getHigh()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformFloatDistribution;->b:F

    return v0
.end method

.method public getLow()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformFloatDistribution;->a:F

    return v0
.end method

.method public nextFloat()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformFloatDistribution;->a:F

    iget v1, p0, Lcom/badlogic/gdx/ai/utils/random/UniformFloatDistribution;->b:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    return v0
.end method
