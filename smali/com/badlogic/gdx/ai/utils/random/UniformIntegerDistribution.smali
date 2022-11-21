.class public final Lcom/badlogic/gdx/ai/utils/random/UniformIntegerDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/ai/utils/random/UniformIntegerDistribution;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/utils/random/UniformIntegerDistribution;->a:I

    iput p2, p0, Lcom/badlogic/gdx/ai/utils/random/UniformIntegerDistribution;->b:I

    return-void
.end method


# virtual methods
.method public getHigh()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformIntegerDistribution;->b:I

    return v0
.end method

.method public getLow()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformIntegerDistribution;->a:I

    return v0
.end method

.method public nextInt()I
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/UniformIntegerDistribution;->a:I

    iget v1, p0, Lcom/badlogic/gdx/ai/utils/random/UniformIntegerDistribution;->b:I

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    return v0
.end method
