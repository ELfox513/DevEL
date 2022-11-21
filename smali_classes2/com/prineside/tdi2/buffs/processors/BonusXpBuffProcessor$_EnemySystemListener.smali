.class public Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor;
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

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object p3, Lcom/prineside/tdi2/enums/BuffType;->BONUS_XP:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p3

    if-eqz p3, :cond_1

    iget p4, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/prineside/tdi2/buffs/BonusXpBuff;

    iget-object p4, p0, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result p1

    iget p3, p3, Lcom/prineside/tdi2/buffs/BonusXpBuff;->bonusXpMultiplier:F

    mul-float p1, p1, p3

    invoke-virtual {p4, p2, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->addExperienceBuffed(Lcom/prineside/tdi2/Tower;F)F

    move-result p1

    iget-object p2, p0, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p3, Lcom/prineside/tdi2/enums/StatisticsType;->XPG_BB:Lcom/prineside/tdi2/enums/StatisticsType;

    float-to-double p4, p1

    invoke-virtual {p2, p3, p4, p5}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_1
    return-void
.end method

.method public enemyTakeDamage(Lcom/prineside/tdi2/Enemy;FLcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Projectile;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    sget-object p4, Lcom/prineside/tdi2/enums/BuffType;->BONUS_XP:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, p4}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p4

    if-eqz p4, :cond_1

    iget p5, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz p5, :cond_1

    const/4 p5, 0x0

    cmpl-float p5, p2, p5

    if-lez p5, :cond_1

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/prineside/tdi2/buffs/BonusXpBuff;

    iget-object p5, p0, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p5, p5, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget v0, p1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr p2, v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result p1

    mul-float p2, p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p2, p2, p1

    iget p1, p4, Lcom/prineside/tdi2/buffs/BonusXpBuff;->bonusXpMultiplier:F

    mul-float p2, p2, p1

    invoke-virtual {p5, p3, p2}, Lcom/prineside/tdi2/systems/TowerSystem;->addExperienceBuffed(Lcom/prineside/tdi2/Tower;F)F

    move-result p1

    iget-object p2, p0, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p3, Lcom/prineside/tdi2/enums/StatisticsType;->XPG_BB:Lcom/prineside/tdi2/enums/StatisticsType;

    float-to-double p4, p1

    invoke-virtual {p2, p3, p4, p5}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_1
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x8c38af

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
