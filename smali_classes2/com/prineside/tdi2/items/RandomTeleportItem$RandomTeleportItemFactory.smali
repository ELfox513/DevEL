.class public Lcom/prineside/tdi2/items/RandomTeleportItem$RandomTeleportItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/RandomTeleportItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RandomTeleportItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/RandomTeleportItem;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/items/RandomTeleportItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/prineside/tdi2/items/RandomTeleportItem;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/items/RandomTeleportItem$RandomTeleportItemFactory;->a:Lcom/prineside/tdi2/items/RandomTeleportItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/items/RandomTeleportItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/items/RandomTeleportItem;-><init>(Lcom/prineside/tdi2/items/RandomTeleportItem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/items/RandomTeleportItem$RandomTeleportItemFactory;->a:Lcom/prineside/tdi2/items/RandomTeleportItem;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/items/RandomTeleportItem$RandomTeleportItemFactory;->a:Lcom/prineside/tdi2/items/RandomTeleportItem;

    return-object v0
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/RandomTeleportItem$RandomTeleportItemFactory;->createDefault()Lcom/prineside/tdi2/items/RandomTeleportItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/RandomTeleportItem;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/RandomTeleportItem$RandomTeleportItemFactory;->create()Lcom/prineside/tdi2/items/RandomTeleportItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/RandomTeleportItem$RandomTeleportItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/RandomTeleportItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/RandomTeleportItem;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/RandomTeleportItem$RandomTeleportItemFactory;->create()Lcom/prineside/tdi2/items/RandomTeleportItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method
