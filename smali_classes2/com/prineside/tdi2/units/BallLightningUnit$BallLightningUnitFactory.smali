.class public Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;
.super Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/units/BallLightningUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BallLightningUnitFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory<",
        "Lcom/prineside/tdi2/units/BallLightningUnit;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/graphics/g2d/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g2d/Animation<",
            "Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;->create()Lcom/prineside/tdi2/units/BallLightningUnit;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/units/BallLightningUnit;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/units/BallLightningUnit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/units/BallLightningUnit;-><init>(Lcom/prineside/tdi2/units/BallLightningUnit$1;)V

    return-object v0
.end method

.method public getBallAnimation()Lcom/badlogic/gdx/graphics/g2d/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/graphics/g2d/Animation<",
            "Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;->b:Lcom/badlogic/gdx/graphics/g2d/Animation;

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public setupAssets()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Animation;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "unit-type-ball-lightning"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    const v2, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/Animation;-><init>(FLcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;->b:Lcom/badlogic/gdx/graphics/g2d/Animation;

    return-void
.end method
