.class public Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/TrophyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrophyItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/TrophyItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:[Lcom/prineside/tdi2/items/TrophyItem;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/TrophyType;->values:[Lcom/prineside/tdi2/enums/TrophyType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/items/TrophyItem;

    iput-object v1, p0, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->a:[Lcom/prineside/tdi2/items/TrophyItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->a:[Lcom/prineside/tdi2/items/TrophyItem;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Lcom/prineside/tdi2/items/TrophyItem;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lcom/prineside/tdi2/items/TrophyItem;-><init>(Lcom/prineside/tdi2/enums/TrophyType;Lcom/prineside/tdi2/items/TrophyItem$1;)V

    aput-object v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public create(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/items/TrophyItem;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->a:[Lcom/prineside/tdi2/items/TrophyItem;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->createDefault()Lcom/prineside/tdi2/items/TrophyItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/TrophyItem;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TrophyType;->values:[Lcom/prineside/tdi2/enums/TrophyType;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->create(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/items/TrophyItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/TrophyItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/TrophyItem;
    .locals 1

    const-string v0, "trophyType"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/enums/TrophyType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TrophyType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->create(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/items/TrophyItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method
