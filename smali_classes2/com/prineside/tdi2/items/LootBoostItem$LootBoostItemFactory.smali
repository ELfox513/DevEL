.class public Lcom/prineside/tdi2/items/LootBoostItem$LootBoostItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/LootBoostItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LootBoostItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/LootBoostItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/items/LootBoostItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/items/LootBoostItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/items/LootBoostItem;-><init>(Lcom/prineside/tdi2/items/LootBoostItem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/items/LootBoostItem$LootBoostItemFactory;->a:Lcom/prineside/tdi2/items/LootBoostItem;

    return-void
.end method


# virtual methods
.method public create()Lcom/prineside/tdi2/items/LootBoostItem;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/items/LootBoostItem$LootBoostItemFactory;->a:Lcom/prineside/tdi2/items/LootBoostItem;

    return-object v0
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/LootBoostItem$LootBoostItemFactory;->createDefault()Lcom/prineside/tdi2/items/LootBoostItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/LootBoostItem;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/LootBoostItem$LootBoostItemFactory;->create()Lcom/prineside/tdi2/items/LootBoostItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/LootBoostItem$LootBoostItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/LootBoostItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/LootBoostItem;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/LootBoostItem$LootBoostItemFactory;->create()Lcom/prineside/tdi2/items/LootBoostItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method
