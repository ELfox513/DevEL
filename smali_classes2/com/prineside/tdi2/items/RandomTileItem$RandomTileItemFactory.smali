.class public Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/RandomTileItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RandomTileItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/RandomTileItem;",
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
.method public create(F)Lcom/prineside/tdi2/items/RandomTileItem;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/items/RandomTileItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/prineside/tdi2/items/RandomTileItem;-><init>(FLcom/prineside/tdi2/items/RandomTileItem$1;)V

    return-object v0
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->createDefault()Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/RandomTileItem;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/RandomTileItem;
    .locals 1

    const-string v0, "quality"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method
