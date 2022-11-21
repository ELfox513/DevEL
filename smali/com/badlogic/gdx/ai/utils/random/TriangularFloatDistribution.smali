.class public final Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    neg-float v0, p1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    add-float v0, p1, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;->a:F

    iput p2, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;->b:F

    iput p3, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;->c:F

    return-void
.end method


# virtual methods
.method public getHigh()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;->b:F

    return v0
.end method

.method public getLow()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;->a:F

    return v0
.end method

.method public getMode()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;->c:F

    return v0
.end method

.method public nextFloat()F
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;->a:F

    neg-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;->c:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->randomTriangular(F)F

    move-result v0

    return v0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularFloatDistribution;->c:F

    invoke-static {v0, v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->randomTriangular(FFF)F

    move-result v0

    return v0
.end method
