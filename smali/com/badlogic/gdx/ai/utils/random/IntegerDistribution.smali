.class public abstract Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;
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

    invoke-interface {p0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextInt()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    invoke-interface {p0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextInt()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    invoke-interface {p0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
