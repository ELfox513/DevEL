.class public Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;
.super Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/gates/TeleportGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TeleportGateFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Gate$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/gates/TeleportGate;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/GateType;->TELEPORT:Lcom/prineside/tdi2/enums/GateType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/GateType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Gate;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->create()Lcom/prineside/tdi2/gates/TeleportGate;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/gates/TeleportGate;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/gates/TeleportGate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/gates/TeleportGate;-><init>(Lcom/prineside/tdi2/gates/TeleportGate$1;)V

    return-object v0
.end method

.method public bridge synthetic createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Gate;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/gates/TeleportGate;

    move-result-object p1

    return-object p1
.end method

.method public createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/gates/TeleportGate;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->create()Lcom/prineside/tdi2/gates/TeleportGate;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result p2

    iput p2, p1, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    return-object p1
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/gates/TeleportGate;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/gates/TeleportGate;
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/gates/TeleportGate;

    const-string v1, "index"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    return-object v0
.end method

.method public setupAssets()V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "gate-teleport-vertical"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "gate-teleport-horizontal"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "particles/teleport-horizontal.prt"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "particle-pentagon"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/4 v4, 0x1

    const/16 v5, 0x80

    invoke-direct {v2, v0, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v2, p0, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "particles/teleport-vertical.prt"

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-direct {v1, v0, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    return-void
.end method
