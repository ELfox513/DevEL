.class public Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/GameStateSystem;
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

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/GameStateSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getKillScore()I

    move-result p3

    int-to-float p3, p3

    const/high16 p5, 0x3fe00000    # 1.75f

    mul-float p3, p3, p5

    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p3

    iget-object p5, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p5, p5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    int-to-long v0, p3

    sget-object p3, Lcom/prineside/tdi2/enums/StatisticsType;->SG_EK:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p5, v0, v1, p3}, Lcom/prineside/tdi2/systems/GameStateSystem;->addScore(JLcom/prineside/tdi2/enums/StatisticsType;)V

    iget p3, p1, Lcom/prineside/tdi2/Enemy;->bounty:F

    const/4 p5, 0x0

    if-eqz p2, :cond_1

    iget v0, p2, Lcom/prineside/tdi2/Tower;->bountyModifiersNearby:I

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    sub-float/2addr v0, p3

    iput v0, p2, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    sget-object v1, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->BONUS_COINS:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v1, v0}, Lcom/prineside/tdi2/SpaceTileBonus;->getEffect(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)F

    move-result v0

    iget v1, p2, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v0, v2

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    iput v1, p2, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    mul-float p3, p3, v0

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/prineside/tdi2/Ability;->getKilledEnemiesCoinMultiplier()F

    move-result p2

    mul-float p3, p3, p2

    :cond_2
    cmpl-float p2, p3, p5

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Lcom/prineside/tdi2/systems/GameStateSystem;->addMoney(FZ)I

    move-result p2

    iget-object p3, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p4, Lcom/prineside/tdi2/enums/StatisticsType;->CG_EK:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v0, p2

    invoke-virtual {p3, p4, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p3, p4, p1, p2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addCoinParticle(FFI)V

    :cond_3
    return-void
.end method

.method public enemyReachedTarget(Lcom/prineside/tdi2/Enemy;ILcom/prineside/tdi2/tiles/TargetTile;)Z
    .locals 1

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, p3, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    if-eqz v0, :cond_0

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p3

    iget-object p3, p3, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/tiles/TargetTile;->showHitEffect(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p3, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {p3, p2}, Lcom/prineside/tdi2/ui/components/MainUi;->showHealthDelta(I)V

    :cond_0
    iget-object p3, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    iput-object p1, p3, Lcom/prineside/tdi2/systems/GameStateSystem;->lastEnemyReachedTarget:Lcom/prineside/tdi2/enums/EnemyType;

    if-lez p2, :cond_1

    int-to-float p1, p2

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->removeHealth(I)V

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->b(Lcom/prineside/tdi2/systems/GameStateSystem;)Lcom/prineside/tdi2/utils/CheatSafeInt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result p1

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    sget-object p2, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->ZERO_BASE_HEALTH:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameStateSystem;->triggerGameOver(Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0xb3a9f8

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
