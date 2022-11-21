.class public Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/AchievementSystem;
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

    iput-object p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/AchievementSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 1

    iget-object p2, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object p4, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v0, 0x1

    if-eq p2, p4, :cond_0

    sget-object p4, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq p2, p4, :cond_0

    sget-object p4, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq p2, p4, :cond_0

    sget-object p4, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq p2, p4, :cond_0

    sget-object p4, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne p2, p4, :cond_2

    :cond_0
    iget p2, p1, Lcom/prineside/tdi2/Enemy;->existsTime:F

    const/high16 p4, 0x40400000    # 3.0f

    cmpg-float p2, p2, p4

    if-gtz p2, :cond_1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object p4, Lcom/prineside/tdi2/enums/AchievementType;->FAST_BOSS_KILL:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p2, p4, v0}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "boss killed in "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Lcom/prineside/tdi2/Enemy;->existsTime:F

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "AchievementSystem"

    invoke-static {p4, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p2, Lcom/prineside/tdi2/enums/BuffType;->BONUS_COINS:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object p4, Lcom/prineside/tdi2/enums/AchievementType;->KILL_BOSS_BONUS_COINS:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p2, p4, v0}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_2
    sget-object p2, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/AchievementType;->KILL_THROWN_BACK_ENEMIES:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/systems/AchievementSystem;->registerDelta(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_3
    if-eqz p5, :cond_4

    iget-object p1, p5, Lcom/prineside/tdi2/Projectile;->type:Lcom/prineside/tdi2/enums/ProjectileType;

    sget-object p2, Lcom/prineside/tdi2/enums/ProjectileType;->MULTISHOT:Lcom/prineside/tdi2/enums/ProjectileType;

    if-ne p1, p2, :cond_4

    check-cast p5, Lcom/prineside/tdi2/projectiles/MultishotProjectile;

    iget-boolean p1, p5, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->flyingBack:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/AchievementType;->KILL_ENEMY_WITH_BACK_PROJECTILE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/systems/AchievementSystem;->registerDelta(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_4
    sget-object p1, Lcom/prineside/tdi2/enums/DamageType;->FIRE:Lcom/prineside/tdi2/enums/DamageType;

    if-ne p3, p1, :cond_7

    iget-object p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p1, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/AchievementSystem;->r:Lcom/badlogic/gdx/utils/IntArray;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget p1, p1, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget p2, p2, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    const/4 p3, 0x0

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/AchievementSystem;->r:Lcom/badlogic/gdx/utils/IntArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_6

    iget-object p4, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p5, p4, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    iget-object p5, p5, Lcom/prineside/tdi2/systems/AchievementSystem;->r:Lcom/badlogic/gdx/utils/IntArray;

    iget-object p5, p5, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget p5, p5, p1

    sub-int p5, p2, p5

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {p4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRate()I

    move-result p4

    if-gt p5, p4, :cond_5

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    iget-object p4, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    iget-object p4, p4, Lcom/prineside/tdi2/systems/AchievementSystem;->r:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object p2, Lcom/prineside/tdi2/enums/AchievementType;->MASS_BURN_ENEMIES:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_7
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const/16 v0, 0x3a9d

    return v0
.end method

.method public mdpsUpdated(D)V
    .locals 2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object p2, Lcom/prineside/tdi2/enums/AchievementType;->MILLION_MDPS_ONE_GAME:Lcom/prineside/tdi2/enums/AchievementType;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/EnemySystem;->getTowersMaxDps()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
