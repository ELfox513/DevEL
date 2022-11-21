.class public Lcom/prineside/tdi2/items/GateItem$GateItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/GateItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GateItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/GateItem;",
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
.method public create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/items/GateItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/prineside/tdi2/items/GateItem;-><init>(Lcom/prineside/tdi2/Gate;Lcom/prineside/tdi2/items/GateItem$1;)V

    return-object v0
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->createDefault()Lcom/prineside/tdi2/items/GateItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/GateItem;
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    sget-object v1, Lcom/prineside/tdi2/enums/GateType;->values:[Lcom/prineside/tdi2/enums/GateType;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GateManager;->getFactory(Lcom/prineside/tdi2/enums/GateType;)Lcom/prineside/tdi2/Gate$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/prineside/tdi2/Gate$Factory;->create()Lcom/prineside/tdi2/Gate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/GateItem;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    const-string v1, "gate"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/GateManager;->createGateFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method
