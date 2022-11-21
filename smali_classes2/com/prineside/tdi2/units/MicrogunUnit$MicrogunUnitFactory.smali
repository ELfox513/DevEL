.class public Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;
.super Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/units/MicrogunUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MicrogunUnitFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory<",
        "Lcom/prineside/tdi2/units/MicrogunUnit;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public highlightParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;->create()Lcom/prineside/tdi2/units/MicrogunUnit;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/units/MicrogunUnit;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/units/MicrogunUnit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/units/MicrogunUnit;-><init>(Lcom/prineside/tdi2/units/MicrogunUnit$1;)V

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public setupAssets()V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tower-minigun-microgun-base"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tower-minigun-microgun-weapon"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "particles/building-highlight.prt"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "tower-basic-base"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/badlogic/gdx/graphics/g2d/Sprite;

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v6, p0, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    aput-object v5, v4, v1

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setSprites(Lcom/badlogic/gdx/utils/Array;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/4 v2, 0x2

    const/16 v3, 0x40

    invoke-direct {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;->highlightParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    return-void
.end method
