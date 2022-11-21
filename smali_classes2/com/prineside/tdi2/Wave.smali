.class public Lcom/prineside/tdi2/Wave;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation


# instance fields
.field public completed:Z

.field public difficulty:I

.field public enemiesCanBeSplitBetweenSpawns:Z

.field public enemiesCanHaveRandomSideShifts:Z

.field public enemiesSumBounty:F

.field public enemiesSumHealth:F

.field public enemiesTookDamage:F

.field public enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/EnemyGroup;",
            ">;"
        }
    .end annotation
.end field

.field public killedEnemiesBountySum:I

.field public killedEnemiesCount:I

.field public passedEnemiesCount:I

.field public started:Z

.field public totalEnemiesCount:I

.field public waveMessage:Ljava/lang/String;

.field public waveNumber:I

.field public waveProcessor:Lcom/prineside/tdi2/WaveProcessor;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Wave;->enemiesCanBeSplitBetweenSpawns:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/Wave;->enemiesCanHaveRandomSideShifts:Z

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/EnemyGroup;

    invoke-direct {v1, v0, v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/Wave;->waveMessage:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/Wave;->enemiesSumHealth:F

    iput v1, p0, Lcom/prineside/tdi2/Wave;->enemiesSumBounty:F

    iput v1, p0, Lcom/prineside/tdi2/Wave;->enemiesTookDamage:F

    iput-object v0, p0, Lcom/prineside/tdi2/Wave;->waveProcessor:Lcom/prineside/tdi2/WaveProcessor;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/Wave;->killedEnemiesCount:I

    iput v0, p0, Lcom/prineside/tdi2/Wave;->passedEnemiesCount:I

    iput v0, p0, Lcom/prineside/tdi2/Wave;->killedEnemiesBountySum:I

    iput-boolean v0, p0, Lcom/prineside/tdi2/Wave;->completed:Z

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/EnemyGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Wave;->enemiesCanBeSplitBetweenSpawns:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/Wave;->enemiesCanHaveRandomSideShifts:Z

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/EnemyGroup;

    invoke-direct {v1, v0, v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/Wave;->waveMessage:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/prineside/tdi2/Wave;->enemiesSumHealth:F

    iput v2, p0, Lcom/prineside/tdi2/Wave;->enemiesSumBounty:F

    iput v2, p0, Lcom/prineside/tdi2/Wave;->enemiesTookDamage:F

    iput-object v0, p0, Lcom/prineside/tdi2/Wave;->waveProcessor:Lcom/prineside/tdi2/WaveProcessor;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/Wave;->killedEnemiesCount:I

    iput v0, p0, Lcom/prineside/tdi2/Wave;->passedEnemiesCount:I

    iput v0, p0, Lcom/prineside/tdi2/Wave;->killedEnemiesBountySum:I

    iput-boolean v0, p0, Lcom/prineside/tdi2/Wave;->completed:Z

    iput p1, p0, Lcom/prineside/tdi2/Wave;->waveNumber:I

    iput p2, p0, Lcom/prineside/tdi2/Wave;->difficulty:I

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/EnemyGroup;

    iget p3, p0, Lcom/prineside/tdi2/Wave;->totalEnemiesCount:I

    iget v0, p2, Lcom/prineside/tdi2/EnemyGroup;->count:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/prineside/tdi2/Wave;->totalEnemiesCount:I

    iget p3, p0, Lcom/prineside/tdi2/Wave;->enemiesSumBounty:F

    int-to-float v1, v0

    iget v2, p2, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    mul-float v1, v1, v2

    add-float/2addr p3, v1

    iput p3, p0, Lcom/prineside/tdi2/Wave;->enemiesSumBounty:F

    iget p3, p0, Lcom/prineside/tdi2/Wave;->enemiesSumHealth:F

    int-to-float v0, v0

    iget p2, p2, Lcom/prineside/tdi2/EnemyGroup;->health:F

    mul-float v0, v0, p2

    add-float/2addr p3, v0

    iput p3, p0, Lcom/prineside/tdi2/Wave;->enemiesSumHealth:F

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public isFullySpawned()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/EnemyGroup;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/prineside/tdi2/EnemyGroup;->a:I

    check-cast v2, [Lcom/prineside/tdi2/EnemyGroup;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/prineside/tdi2/EnemyGroup;->count:I

    if-ge v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Wave;->waveNumber:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Wave;->difficulty:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Wave;->totalEnemiesCount:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/Wave;->enemiesCanBeSplitBetweenSpawns:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/Wave;->enemiesCanHaveRandomSideShifts:Z

    const-class v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v1, p0, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/Wave;->waveMessage:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Wave;->enemiesSumHealth:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Wave;->enemiesSumBounty:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Wave;->enemiesTookDamage:F

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/WaveProcessor;

    iput-object p1, p0, Lcom/prineside/tdi2/Wave;->waveProcessor:Lcom/prineside/tdi2/WaveProcessor;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/Wave;->started:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Wave;->killedEnemiesCount:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Wave;->passedEnemiesCount:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Wave;->killedEnemiesBountySum:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/Wave;->completed:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wave {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  waveNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/Wave;->waveNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  averageDifficulty: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/Wave;->difficulty:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  enemiesCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/Wave;->totalEnemiesCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  enemyGroups: {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/EnemyGroup;

    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/prineside/tdi2/EnemyGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "  }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/Wave;->waveNumber:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/Wave;->difficulty:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/Wave;->totalEnemiesCount:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean v0, p0, Lcom/prineside/tdi2/Wave;->enemiesCanBeSplitBetweenSpawns:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Wave;->enemiesCanHaveRandomSideShifts:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Wave;->waveMessage:Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/Wave;->enemiesSumHealth:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Wave;->enemiesSumBounty:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Wave;->enemiesTookDamage:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Wave;->waveProcessor:Lcom/prineside/tdi2/WaveProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/Wave;->started:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/Wave;->killedEnemiesCount:I

    invoke-virtual {p2, p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/Wave;->passedEnemiesCount:I

    invoke-virtual {p2, p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/Wave;->killedEnemiesBountySum:I

    invoke-virtual {p2, p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean p1, p0, Lcom/prineside/tdi2/Wave;->completed:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
