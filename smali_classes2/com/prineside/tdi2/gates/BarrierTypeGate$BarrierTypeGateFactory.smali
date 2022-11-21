.class public Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;
.super Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/gates/BarrierTypeGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarrierTypeGateFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Gate$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/gates/BarrierTypeGate;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/GateType;->BARRIER_TYPE:Lcom/prineside/tdi2/enums/GateType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/GateType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Gate;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;->create()Lcom/prineside/tdi2/gates/BarrierTypeGate;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/gates/BarrierTypeGate;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/gates/BarrierTypeGate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/gates/BarrierTypeGate;-><init>(Lcom/prineside/tdi2/gates/BarrierTypeGate$1;)V

    return-object v0
.end method

.method public bridge synthetic createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Gate;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/gates/BarrierTypeGate;

    move-result-object p1

    return-object p1
.end method

.method public createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/gates/BarrierTypeGate;
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;->create()Lcom/prineside/tdi2/gates/BarrierTypeGate;

    move-result-object v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    const p1, 0x3a83126f    # 0.001f

    :cond_0
    :goto_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->mainEnemyTypes:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v3, v2

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, v0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3e800000    # 0.25f

    sub-float/2addr p1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/gates/BarrierTypeGate;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/gates/BarrierTypeGate;
    .locals 3

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/gates/BarrierTypeGate;

    const-string v1, "blockedEnemies"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/EnemyType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "gate-barrier-type-vertical"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "gate-barrier-type-horizontal"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
