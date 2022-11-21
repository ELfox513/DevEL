.class public Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;
.super Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/gates/BarrierHealthGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarrierHealthGateFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Gate$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/gates/BarrierHealthGate;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/GateType;->BARRIER_HEALTH:Lcom/prineside/tdi2/enums/GateType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/GateType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Gate;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->create()Lcom/prineside/tdi2/gates/BarrierHealthGate;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/gates/BarrierHealthGate;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/gates/BarrierHealthGate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/gates/BarrierHealthGate;-><init>(Lcom/prineside/tdi2/gates/BarrierHealthGate$1;)V

    return-object v0
.end method

.method public bridge synthetic createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Gate;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/gates/BarrierHealthGate;

    move-result-object p1

    return-object p1
.end method

.method public createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/gates/BarrierHealthGate;
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->create()Lcom/prineside/tdi2/gates/BarrierHealthGate;

    move-result-object p1

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result p2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Lcom/prineside/tdi2/gates/BarrierHealthGate;->moreThanHalf:Z

    return-object p1
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/gates/BarrierHealthGate;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/gates/BarrierHealthGate;
    .locals 3

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/gates/BarrierHealthGate;

    const-string v1, "moreThanHalf"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/prineside/tdi2/gates/BarrierHealthGate;->moreThanHalf:Z

    return-object v0
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "gate-barrier-health-high-vertical"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "gate-barrier-health-high-horizontal"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "gate-barrier-health-low-vertical"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "gate-barrier-health-low-horizontal"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
