.class public Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;
.super Lcom/prineside/tdi2/Projectile$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/projectiles/VenomProjectile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VenomProjectileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Projectile$Factory<",
        "Lcom/prineside/tdi2/projectiles/VenomProjectile;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Projectile$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/prineside/tdi2/Projectile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;->b()Lcom/prineside/tdi2/projectiles/VenomProjectile;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/prineside/tdi2/projectiles/VenomProjectile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/projectiles/VenomProjectile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/projectiles/VenomProjectile;-><init>(Lcom/prineside/tdi2/projectiles/VenomProjectile$1;)V

    return-object v0
.end method

.method public clearPool()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Projectile$Factory;->clearPool()V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    :cond_0
    return-void
.end method

.method public setupAssets()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "projectile-venom"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "bullet-trace-thin"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "particles/venom-projectile.prt"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "small-circle"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/16 v2, 0x8

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    return-void
.end method
