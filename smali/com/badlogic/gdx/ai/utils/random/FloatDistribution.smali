.class public abstract Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/utils/random/Distribution;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextDouble()D
    .locals 2

    invoke-interface {p0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextFloat()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 1

    invoke-interface {p0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    invoke-interface {p0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextFloat()F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method
