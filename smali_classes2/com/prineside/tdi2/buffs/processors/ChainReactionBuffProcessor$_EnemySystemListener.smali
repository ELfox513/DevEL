.class public Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_EnemySystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 7

    sget-object p2, Lcom/prineside/tdi2/enums/BuffType;->CHAIN_REACTION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p2

    if-eqz p2, :cond_6

    iget p3, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/buffs/ChainReactionBuff;

    iget p3, p2, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->rangeInTiles:F

    mul-float p4, p3, p3

    const/high16 p5, 0x43000000    # 128.0f

    mul-float p4, p4, p5

    mul-float p4, p4, p5

    iget p5, p2, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->chance:F

    const/high16 v0, 0x3fe00000    # 1.75f

    const/4 v1, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->getNeighbourTilesAndThis()Lcom/badlogic/gdx/utils/Array;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    iget v2, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_6

    iget-object v2, p3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_1

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v4, :cond_0

    if-eq v4, p1, :cond_0

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v5

    cmpg-float v5, v5, p4

    if-gez v5, :cond_0

    sget-object v5, Lcom/prineside/tdi2/enums/BuffType;->CHAIN_REACTION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v5

    cmpg-float v5, v5, p5

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget v6, p2, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->durationMultiplier:F

    invoke-static {v5, p1, v4, v6}, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->c(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Enemy;F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_2
    iget-object p3, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_5

    iget-object p3, p3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object p3, p3, v1

    iget-object p3, p3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    if-eq p3, p1, :cond_4

    invoke-virtual {p3}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_4

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->CHAIN_REACTION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget v2, p2, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->durationMultiplier:F

    invoke-static {v0, p1, p3, v2}, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->c(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Enemy;F)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_6
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0xe0583

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
