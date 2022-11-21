.class public abstract Lcom/prineside/tdi2/Enemy$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Enemy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prineside/tdi2/Enemy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Disposable;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public b:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public final d:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final k:Lcom/prineside/tdi2/enums/EnemyType;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/EnemyType;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/Enemy$Factory;->k:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v0, Lcom/prineside/tdi2/Enemy$Factory$2;

    const/16 v1, 0x10

    const v2, 0x7fffffff

    invoke-direct {v0, p0, v1, v2}, Lcom/prineside/tdi2/Enemy$Factory$2;-><init>(Lcom/prineside/tdi2/Enemy$Factory;II)V

    iput-object v0, p0, Lcom/prineside/tdi2/Enemy$Factory;->d:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enemy_name_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Enemy$Factory;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enemy_description_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/Enemy$Factory;->q:Ljava/lang/String;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "particles/break.prt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->blank:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v4, v3, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v6, 0x2

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/16 v3, 0x40

    const/16 v4, 0x800

    invoke-direct {v1, p1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy$Factory;->a:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v7, "particles/enemy-hit.prt"

    invoke-interface {v1, v7}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->blank:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v7}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v1

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v7, v2, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v0, v2, v5

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v0, v2, v6

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-direct {v0, p1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v0, p0, Lcom/prineside/tdi2/Enemy$Factory;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/Enemy$Factory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/Enemy$Factory;->a:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/Enemy$Factory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/Enemy$Factory;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    return-object p0
.end method


# virtual methods
.method public clearPool()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy$Factory;->d:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    return-void
.end method

.method public abstract create()Lcom/prineside/tdi2/Enemy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public free(Lcom/prineside/tdi2/Enemy;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy$Factory;->d:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract getColor()Lcom/badlogic/gdx/graphics/Color;
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy$Factory;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmojiTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHighlightTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.end method

.method public abstract getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.end method

.method public getTextureSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy$Factory;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final obtain()Lcom/prineside/tdi2/Enemy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy$Factory;->d:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy;

    return-object v0
.end method

.method public setup()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy$Factory;->setupAssets()V

    :cond_0
    return-void
.end method

.method public setupAssets()V
    .locals 0

    return-void
.end method
