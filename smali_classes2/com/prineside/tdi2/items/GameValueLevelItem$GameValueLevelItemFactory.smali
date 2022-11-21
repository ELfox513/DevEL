.class public Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/GameValueLevelItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValueLevelItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/GameValueLevelItem;",
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
.method public create(Lcom/prineside/tdi2/enums/GameValueType;DLjava/lang/String;)Lcom/prineside/tdi2/items/GameValueLevelItem;
    .locals 7

    new-instance v6, Lcom/prineside/tdi2/items/GameValueLevelItem;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p4

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/items/GameValueLevelItem;-><init>(Lcom/prineside/tdi2/enums/GameValueType;Ljava/lang/String;DLcom/prineside/tdi2/items/GameValueLevelItem$1;)V

    return-object v6
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;->createDefault()Lcom/prineside/tdi2/items/GameValueLevelItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/GameValueLevelItem;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "1.1"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;->create(Lcom/prineside/tdi2/enums/GameValueType;DLjava/lang/String;)Lcom/prineside/tdi2/items/GameValueLevelItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/GameValueLevelItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/GameValueLevelItem;
    .locals 4

    const-string v0, "gameValueType"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v0

    const-string v1, "delta"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "levelName"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;->create(Lcom/prineside/tdi2/enums/GameValueType;DLjava/lang/String;)Lcom/prineside/tdi2/items/GameValueLevelItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method
