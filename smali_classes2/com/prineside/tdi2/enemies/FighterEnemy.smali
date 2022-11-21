.class public Lcom/prineside/tdi2/enemies/FighterEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;
    }
.end annotation


# instance fields
.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->FIGHTER:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/FighterEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/FighterEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseDamage()F
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/FighterEnemy;->v:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    :goto_0
    return v0
.end method

.method public getEmojiTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/FighterEnemy;->v:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->FIGHTER:Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->FIGHTER:Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;->getEmojiTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getHighlightTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/FighterEnemy;->v:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->FIGHTER:Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->FIGHTER:Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/FighterEnemy;->v:Z

    if-eqz v0, :cond_0

    const v0, 0x418f5c29    # 17.92f

    return v0

    :cond_0
    const v0, 0x41f5c28f    # 30.72f

    return v0
.end method

.method public getSquaredSize()F
    .locals 1

    const v0, 0x446bedfa

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/FighterEnemy;->v:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->FIGHTER:Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->FIGHTER:Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreDie()V
    .locals 9

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->onPreDie()V

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/FighterEnemy;->v:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->FIGHTER:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/prineside/tdi2/enemies/FighterEnemy;

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/prineside/tdi2/enemies/FighterEnemy;->v:Z

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/Enemy;->setMaxHealth(F)V

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->bounty:F

    const v2, 0x3ea8f5c3    # 0.33f

    mul-float v1, v1, v2

    iput v1, v3, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result v1

    mul-float v1, v1, v2

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/Enemy;->setKillExp(F)V

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->killScore:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v3, Lcom/prineside/tdi2/Enemy;->killScore:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getSpeed()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v1, v1, v2

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v4, p0, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    iget-object v5, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget v8, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual/range {v2 .. v8}, Lcom/prineside/tdi2/systems/EnemySystem;->addEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/tiles/SpawnTile;Lcom/prineside/tdi2/Path;ILcom/prineside/tdi2/Wave;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/enemies/FighterEnemy;->v:Z

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/FighterEnemy;->v:Z

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/enemies/FighterEnemy;->v:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
