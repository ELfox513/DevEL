.class public Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;
.super Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;
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
    name = "_TowerSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/StatisticsSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x8bf59e

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public towerBuilt(Lcom/prineside/tdi2/Tower;I)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->TB:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getBuiltStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->TMS:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p1, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getMoneySpentStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object p1

    invoke-virtual {p2, p1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StatisticsType;->TBS:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, p1, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-double v3, v2

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    int-to-double v0, v2

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->setStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_0
    return-void
.end method

.method public towerSold(Lcom/prineside/tdi2/Tower;I)V
    .locals 5

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->isSellFullRefundStillActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->TS:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getSoldStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p1, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getMoneySpentStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object p1

    neg-int p2, p2

    int-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->TB:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getBuiltStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->TMS:Lcom/prineside/tdi2/enums/StatisticsType;

    neg-int p2, p2

    int-to-double v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p1, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getMoneySpentStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object p1

    invoke-virtual {p2, p1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :goto_0
    return-void
.end method

.method public towerUpgraded(Lcom/prineside/tdi2/Tower;I)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->TMS:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getMoneySpentStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v0

    invoke-virtual {p2, v0, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->TU:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p2, v0, v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p1, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getUpgradedStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object p1

    invoke-virtual {p2, p1, v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
