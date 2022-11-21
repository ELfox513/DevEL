.class final Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$14;
.super Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$LongAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$LongAdapter<",
        "Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$LongAdapter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic toDistribution([Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/random/Distribution;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$14;->toDistribution([Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;

    move-result-object p1

    return-object p1
.end method

.method public toDistribution([Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;

    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;-><init>(JJ)V

    return-object v0

    :cond_0
    array-length p1, p1

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->a(I[I)Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;

    move-result-object p1

    throw p1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;-><init>(J)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public bridge synthetic toParameters(Lcom/badlogic/gdx/ai/utils/random/Distribution;)[Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$14;->toParameters(Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toParameters(Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;->getLow()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/utils/random/UniformLongDistribution;->getHigh()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object v0
.end method
