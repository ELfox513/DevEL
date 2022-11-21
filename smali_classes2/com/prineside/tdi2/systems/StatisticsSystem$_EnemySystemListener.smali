.class public Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/StatisticsSystem;
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

    iput-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/StatisticsSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p5, Lcom/prineside/tdi2/enums/StatisticsType;->EK:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p5, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p5, Lcom/prineside/tdi2/enums/StatisticsType;->TEK:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p5, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p5, p5, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p2, p2, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p5, p2}, Lcom/prineside/tdi2/managers/TowerManager;->getEnemiesKilledStatisticsType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->KEW_A:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/systems/StatisticsSystem$1;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->KEW_L:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->KEW_EL:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->KEW_E:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->KEW_P:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->KEW_F:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->KEW_B:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enemyReachedTarget(Lcom/prineside/tdi2/Enemy;ILcom/prineside/tdi2/tiles/TargetTile;)Z
    .locals 2

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->EP:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public enemyTakeDamage(Lcom/prineside/tdi2/Enemy;FLcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Projectile;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p4, Lcom/prineside/tdi2/enums/StatisticsType;->TDD:Lcom/prineside/tdi2/enums/StatisticsType;

    float-to-double v0, p2

    invoke-virtual {p1, p4, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p3, p3, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/TowerManager;->getDamageDealtStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_0
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x808b9

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
