.class final Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$2;
.super Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$FloatAdapter;
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
        "Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$FloatAdapter<",
        "Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$FloatAdapter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toDistribution([Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;-><init>(F)V

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$2;->toDistribution([Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    move-result-object p1

    return-object p1
.end method

.method public toParameters(Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->getValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method public bridge synthetic toParameters(Lcom/badlogic/gdx/ai/utils/random/Distribution;)[Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$2;->toParameters(Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
