.class public Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/AcceleratorItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcceleratorItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/AcceleratorItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/items/AcceleratorItem;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/items/AcceleratorItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/items/AcceleratorItem;-><init>(Lcom/prineside/tdi2/items/AcceleratorItem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;->a:Lcom/prineside/tdi2/items/AcceleratorItem;

    return-void
.end method


# virtual methods
.method public create()Lcom/prineside/tdi2/items/AcceleratorItem;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;->a:Lcom/prineside/tdi2/items/AcceleratorItem;

    return-object v0
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;->createDefault()Lcom/prineside/tdi2/items/AcceleratorItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/AcceleratorItem;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;->create()Lcom/prineside/tdi2/items/AcceleratorItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/AcceleratorItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/AcceleratorItem;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;->create()Lcom/prineside/tdi2/items/AcceleratorItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_0

    const-string v1, "time-accelerator"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :cond_0
    return-void
.end method
