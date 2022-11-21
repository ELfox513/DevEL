.class public Lcom/prineside/tdi2/items/StarItem$StarItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/StarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/StarItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/items/StarItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/items/StarItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/items/StarItem;-><init>(Lcom/prineside/tdi2/items/StarItem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/items/StarItem$StarItemFactory;->a:Lcom/prineside/tdi2/items/StarItem;

    return-void
.end method


# virtual methods
.method public create()Lcom/prineside/tdi2/items/StarItem;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/items/StarItem$StarItemFactory;->a:Lcom/prineside/tdi2/items/StarItem;

    return-object v0
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/StarItem$StarItemFactory;->createDefault()Lcom/prineside/tdi2/items/StarItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/StarItem;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/StarItem$StarItemFactory;->create()Lcom/prineside/tdi2/items/StarItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/StarItem$StarItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/StarItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/StarItem;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/StarItem$StarItemFactory;->create()Lcom/prineside/tdi2/items/StarItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method
