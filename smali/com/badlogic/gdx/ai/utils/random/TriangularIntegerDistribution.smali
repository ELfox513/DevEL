.class public final Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    neg-int v0, p1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    add-int v0, p1, p2

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;->a:I

    iput p2, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;->b:I

    iput p3, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;->c:F

    return-void
.end method


# virtual methods
.method public getHigh()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;->b:I

    return v0
.end method

.method public getLow()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;->a:I

    return v0
.end method

.method public getMode()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;->c:F

    return v0
.end method

.method public nextInt()I
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;->a:I

    neg-int v1, v0

    iget v2, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;->c:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    int-to-float v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->randomTriangular(F)F

    move-result v0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v1, v2

    iget v2, p0, Lcom/badlogic/gdx/ai/utils/random/TriangularIntegerDistribution;->c:F

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->randomTriangular(FFF)F

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
