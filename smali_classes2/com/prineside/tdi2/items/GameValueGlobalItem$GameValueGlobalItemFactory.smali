.class public Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/GameValueGlobalItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValueGlobalItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/GameValueGlobalItem;",
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
.method public create(Lcom/prineside/tdi2/enums/GameValueType;D)Lcom/prineside/tdi2/items/GameValueGlobalItem;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/items/GameValueGlobalItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/prineside/tdi2/items/GameValueGlobalItem;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DLcom/prineside/tdi2/items/GameValueGlobalItem$1;)V

    return-object v0
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;->createDefault()Lcom/prineside/tdi2/items/GameValueGlobalItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/GameValueGlobalItem;
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;->create(Lcom/prineside/tdi2/enums/GameValueType;D)Lcom/prineside/tdi2/items/GameValueGlobalItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/GameValueGlobalItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/GameValueGlobalItem;
    .locals 3

    const-string v0, "gameValueType"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v0

    const-string v1, "delta"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;->create(Lcom/prineside/tdi2/enums/GameValueType;D)Lcom/prineside/tdi2/items/GameValueGlobalItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method
