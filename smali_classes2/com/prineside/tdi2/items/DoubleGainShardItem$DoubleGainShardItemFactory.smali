.class public Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/DoubleGainShardItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleGainShardItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/DoubleGainShardItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/prineside/tdi2/items/DoubleGainShardItem;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/items/DoubleGainShardItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/items/DoubleGainShardItem;-><init>(Lcom/prineside/tdi2/items/DoubleGainShardItem$1;)V

    return-object v0
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;->createDefault()Lcom/prineside/tdi2/items/DoubleGainShardItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/DoubleGainShardItem;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;->create()Lcom/prineside/tdi2/items/DoubleGainShardItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/DoubleGainShardItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/DoubleGainShardItem;
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;->create()Lcom/prineside/tdi2/items/DoubleGainShardItem;

    move-result-object v0

    const-string v1, "duration"

    const v2, 0x127500

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/prineside/tdi2/items/DoubleGainShardItem;->duration:I

    return-object v0
.end method

.method public setup()V
    .locals 0

    return-void
.end method
