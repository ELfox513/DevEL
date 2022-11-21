.class public abstract Lcom/prineside/tdi2/BuffProcessor;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ScheduledUpdater$Updatable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/BuffProcessor$BuffProcessorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prineside/tdi2/Buff;",
        ">",
        "Lcom/prineside/tdi2/Registrable;",
        "Lcom/prineside/tdi2/ScheduledUpdater$Updatable;"
    }
.end annotation


# static fields
.field public static final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/BuffProcessor$BuffProcessorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/BuffProcessor;->b:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/BuffProcessor$BuffProcessorListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/BuffProcessor;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/BuffProcessor;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/Enemy;",
            "TT;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->getType()Lcom/prineside/tdi2/enums/BuffType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->canBeBuffed(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->free()V

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->initBuffsByTypeArray()V

    sget-boolean v0, Lcom/prineside/tdi2/GameSystemProvider;->DEBUG:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_4

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->getType()Lcom/prineside/tdi2/enums/BuffType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    :goto_1
    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_3

    iget-object v5, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v5, v5, v4

    if-eq v5, p2, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buff "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is already applied to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", can\'t apply to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_5
    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->getType()Lcom/prineside/tdi2/enums/BuffType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/BuffProcessor;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/prineside/tdi2/BuffProcessor;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/prineside/tdi2/BuffProcessor;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/BuffProcessor$BuffProcessorListener;

    invoke-interface {v2, p1, p2}, Lcom/prineside/tdi2/BuffProcessor$BuffProcessorListener;->buffAdded(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/BuffProcessor;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->EB:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3, v4}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffsAppliedByType:[Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffsAppliedByType:[Z

    :cond_7
    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffsAppliedByType:[Z

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->getType()Lcom/prineside/tdi2/enums/BuffType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-boolean v0, v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/prineside/tdi2/BuffProcessor;->getBuffCountStatistic()Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v5, v0, v3, v4}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffsAppliedByType:[Z

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->getType()Lcom/prineside/tdi2/enums/BuffType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aput-boolean v2, v0, p2

    :cond_8
    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/AchievementSystem;->isActive()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_4
    if-ge v1, p2, :cond_a

    aget-object v3, p1, v1

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object p2, Lcom/prineside/tdi2/enums/AchievementType;->MASS_BUFF_ENEMY:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_b
    return v2
.end method

.method public addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/Enemy;",
            "TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->a(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/Enemy;",
            "TT;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->getType()Lcom/prineside/tdi2/enums/BuffType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->getType()Lcom/prineside/tdi2/enums/BuffType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/tdi2/BuffProcessor;->removeBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/enums/BuffType;I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->a(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z

    move-result p1

    return p1
.end method

.method public getBuffCountStatistic()Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpdateInterval()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ListenerGroup;

    iput-object p1, p0, Lcom/prineside/tdi2/BuffProcessor;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/BuffProcessor;->a:I

    return-void
.end method

.method public removeAllBuffs(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/enums/BuffType;)V
    .locals 3

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/tdi2/BuffProcessor;->removeBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/enums/BuffType;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public removeBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/Enemy;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->getType()Lcom/prineside/tdi2/enums/BuffType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->getType()Lcom/prineside/tdi2/enums/BuffType;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/prineside/tdi2/BuffProcessor;->removeBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/enums/BuffType;I)V

    :cond_1
    return-void
.end method

.method public removeBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/enums/BuffType;I)V
    .locals 3

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Buff;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/prineside/tdi2/BuffProcessor;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/BuffProcessor;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/BuffProcessor;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/BuffProcessor$BuffProcessorListener;

    invoke-interface {v2, p1, v0}, Lcom/prineside/tdi2/BuffProcessor$BuffProcessorListener;->buffRemoved(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/BuffProcessor;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff;->free()V

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    return-void
.end method

.method public scheduledUpdatableGetId()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/BuffProcessor;->a:I

    return v0
.end method

.method public final scheduledUpdatableSetId(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/BuffProcessor;->a:I

    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 0

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/BuffProcessor;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/BuffProcessor;->a:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method
