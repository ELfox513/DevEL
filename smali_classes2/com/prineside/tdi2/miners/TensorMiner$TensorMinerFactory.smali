.class public Lcom/prineside/tdi2/miners/TensorMiner$TensorMinerFactory;
.super Lcom/prineside/tdi2/Miner$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/miners/TensorMiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TensorMinerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Miner$Factory<",
        "Lcom/prineside/tdi2/miners/TensorMiner;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/MinerType;->TENSOR:Lcom/prineside/tdi2/enums/MinerType;

    const-string v1, "miner-tensor"

    invoke-direct {p0, v0, v1}, Lcom/prineside/tdi2/Miner$Factory;-><init>(Lcom/prineside/tdi2/enums/MinerType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canMineResource(Lcom/prineside/tdi2/enums/ResourceType;)Z
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/miners/TensorMiner;->c()[F

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic create()Lcom/prineside/tdi2/Miner;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/miners/TensorMiner$TensorMinerFactory;->create()Lcom/prineside/tdi2/miners/TensorMiner;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/miners/TensorMiner;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/miners/TensorMiner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/miners/TensorMiner;-><init>(Lcom/prineside/tdi2/miners/TensorMiner$1;)V

    return-object v0
.end method

.method public getBaseBuildPrice(Lcom/prineside/tdi2/GameValueProvider;)I
    .locals 0

    const/16 p1, 0xb9

    return p1
.end method

.method public getBaseMiningSpeed(Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/GameValueProvider;)F
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/miners/TensorMiner;->c()[F

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    float-to-double v0, p1

    sget-object p1, Lcom/prineside/tdi2/enums/GameValueType;->MINERS_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->MINER_TENSOR_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p2, p1, v2}, Lcom/prineside/tdi2/GameValueProvider;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-float p1, v0

    return p1
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/miners/TensorMiner$TensorMinerFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "miner-tensor-blade"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/miners/TensorMiner$TensorMinerFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "miner-tensor-base"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/miners/TensorMiner$TensorMinerFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
