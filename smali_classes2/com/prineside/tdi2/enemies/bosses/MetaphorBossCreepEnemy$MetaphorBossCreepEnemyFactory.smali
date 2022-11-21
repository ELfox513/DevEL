.class public Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;
.super Lcom/prineside/tdi2/Enemy$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaphorBossCreepEnemyFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Enemy$Factory<",
        "Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;",
        ">;"
    }
.end annotation


# instance fields
.field public r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public s:Lcom/badlogic/gdx/graphics/g2d/Animation;
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
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy$Factory;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Enemy;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;->create()Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;-><init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$1;)V

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHighlightTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public setupAssets()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "enemy-type-boss-metaphor-creep"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Animation;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    const v2, 0x3d8f5c29    # 0.07f

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/Animation;-><init>(FLcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;->s:Lcom/badlogic/gdx/graphics/g2d/Animation;

    return-void
.end method
