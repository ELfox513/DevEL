.class public Lcom/prineside/tdi2/items/PrestigeDustItem$PrestigeDustItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/PrestigeDustItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrestigeDustItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/PrestigeDustItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/items/PrestigeDustItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/items/PrestigeDustItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/items/PrestigeDustItem;-><init>(Lcom/prineside/tdi2/items/PrestigeDustItem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/items/PrestigeDustItem$PrestigeDustItemFactory;->a:Lcom/prineside/tdi2/items/PrestigeDustItem;

    return-void
.end method


# virtual methods
.method public create()Lcom/prineside/tdi2/items/PrestigeDustItem;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/items/PrestigeDustItem$PrestigeDustItemFactory;->a:Lcom/prineside/tdi2/items/PrestigeDustItem;

    return-object v0
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/PrestigeDustItem$PrestigeDustItemFactory;->createDefault()Lcom/prineside/tdi2/items/PrestigeDustItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/PrestigeDustItem;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/PrestigeDustItem$PrestigeDustItemFactory;->create()Lcom/prineside/tdi2/items/PrestigeDustItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/PrestigeDustItem$PrestigeDustItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/PrestigeDustItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/PrestigeDustItem;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/PrestigeDustItem$PrestigeDustItemFactory;->create()Lcom/prineside/tdi2/items/PrestigeDustItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method
