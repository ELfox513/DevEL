.class public Lcom/prineside/tdi2/managers/ExplosionManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/ExplosionManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ExplosionManager$Factories;,
        Lcom/prineside/tdi2/managers/ExplosionManager$Serializer;
    }
.end annotation


# instance fields
.field public final F:Lcom/prineside/tdi2/managers/ExplosionManager$Factories;

.field public final a:[Lcom/prineside/tdi2/Explosion$Factory;

.field public particleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/managers/ExplosionManager$Factories;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ExplosionManager$Factories;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ExplosionManager;->F:Lcom/prineside/tdi2/managers/ExplosionManager$Factories;

    sget-object v1, Lcom/prineside/tdi2/enums/ExplosionType;->values:[Lcom/prineside/tdi2/enums/ExplosionType;

    array-length v2, v1

    new-array v2, v2, [Lcom/prineside/tdi2/Explosion$Factory;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/ExplosionManager;->a:[Lcom/prineside/tdi2/Explosion$Factory;

    sget-object v3, Lcom/prineside/tdi2/enums/ExplosionType;->CANNON:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/explosions/CannonExplosion$CannonExplosionFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/explosions/CannonExplosion$CannonExplosionFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/ExplosionManager$Factories;->CANNON:Lcom/prineside/tdi2/explosions/CannonExplosion$CannonExplosionFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ExplosionType;->MISSILE:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/explosions/MissileExplosion$MissileExplosionFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/explosions/MissileExplosion$MissileExplosionFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/ExplosionManager$Factories;->MISSILE:Lcom/prineside/tdi2/explosions/MissileExplosion$MissileExplosionFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ExplosionType;->FIREBALL:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/explosions/FireballExplosion$FireballExplosionFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/explosions/FireballExplosion$FireballExplosionFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/ExplosionManager$Factories;->FIREBALL:Lcom/prineside/tdi2/explosions/FireballExplosion$FireballExplosionFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ExplosionType;->AIR_FALL:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/explosions/AirFallExplosion$AirFallExplosionFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/explosions/AirFallExplosion$AirFallExplosionFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/ExplosionManager$Factories;->AIR_FALL:Lcom/prineside/tdi2/explosions/AirFallExplosion$AirFallExplosionFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ExplosionType;->GENERIC:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/explosions/GenericExplosion$GenericExplosionFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/explosions/GenericExplosion$GenericExplosionFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/ExplosionManager$Factories;->GENERIC:Lcom/prineside/tdi2/explosions/GenericExplosion$GenericExplosionFactory;

    aput-object v4, v2, v3

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ExplosionManager;->a:[Lcom/prineside/tdi2/Explosion$Factory;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v4, v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all explosion factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public clearPools()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ExplosionManager;->a:[Lcom/prineside/tdi2/Explosion$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Explosion$Factory;->clearPool()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ExplosionManager;->particleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/ExplosionType;)Lcom/prineside/tdi2/Explosion$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/ExplosionType;",
            ")",
            "Lcom/prineside/tdi2/Explosion$Factory<",
            "+",
            "Lcom/prineside/tdi2/Explosion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ExplosionManager;->a:[Lcom/prineside/tdi2/Explosion$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public setup()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ExplosionManager;->a:[Lcom/prineside/tdi2/Explosion$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/Explosion$Factory;->setup()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "particles/explosion.prt"

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "particle-shockwave"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/16 v2, 0x8

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ExplosionManager;->particleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    :cond_1
    return-void
.end method
