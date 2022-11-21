.class public Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy$SnakeBossBodyEnemyFactory;
.super Lcom/prineside/tdi2/Enemy$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnakeBossBodyEnemyFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Enemy$Factory<",
        "Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy;",
        ">;"
    }
.end annotation


# instance fields
.field public r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy$Factory;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Enemy;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy$SnakeBossBodyEnemyFactory;->create()Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy;-><init>(Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy$1;)V

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHighlightTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy$SnakeBossBodyEnemyFactory;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy$SnakeBossBodyEnemyFactory;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "enemy-type-boss-snake-body"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy$SnakeBossBodyEnemyFactory;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
