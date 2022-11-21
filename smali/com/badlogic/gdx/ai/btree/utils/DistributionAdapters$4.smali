.class final Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$4;
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
        "Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;",
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
.method public toDistribution([Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;-><init>(J)V

    return-object v0

    :cond_0
    array-length p1, p1

    new-array v0, v2, [I

    aput v2, v0, v1

    invoke-static {p1, v0}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;->a(I[I)Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$DistributionFormatException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic toDistribution([Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/random/Distribution;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$4;->toDistribution([Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

    move-result-object p1

    return-object p1
.end method

.method public toParameters(Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method public bridge synthetic toParameters(Lcom/badlogic/gdx/ai/utils/random/Distribution;)[Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$4;->toParameters(Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
