.class public abstract Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$IntegerAdapter;
.super Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IntegerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter<",
        "TD;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters$Adapter;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
