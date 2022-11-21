.class public Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;
.super Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/units/MineUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MineUnitFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory<",
        "Lcom/prineside/tdi2/units/MineUnit;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;->create()Lcom/prineside/tdi2/units/MineUnit;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/units/MineUnit;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/units/MineUnit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/units/MineUnit;-><init>(Lcom/prineside/tdi2/units/MineUnit$1;)V

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "mine"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
