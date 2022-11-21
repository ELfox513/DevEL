.class public abstract Lcom/badlogic/gdx/ai/utils/random/LongDistribution;
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

    invoke-interface {p0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextLong()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    invoke-interface {p0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextLong()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public nextInt()I
    .locals 2

    invoke-interface {p0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextLong()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method
