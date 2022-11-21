.class public Lcom/prineside/tdi2/systems/WaveSystem$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/WaveSystem;
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

    iput-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/WaveSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/WaveSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

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

    iget-object p2, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    if-eqz p2, :cond_0

    iget p3, p2, Lcom/prineside/tdi2/Wave;->killedEnemiesCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p2, Lcom/prineside/tdi2/Wave;->killedEnemiesCount:I

    iget p4, p2, Lcom/prineside/tdi2/Wave;->killedEnemiesBountySum:I

    int-to-float p4, p4

    iget p1, p1, Lcom/prineside/tdi2/Enemy;->bounty:F

    add-float/2addr p4, p1

    float-to-int p1, p4

    iput p1, p2, Lcom/prineside/tdi2/Wave;->killedEnemiesBountySum:I

    iget p4, p2, Lcom/prineside/tdi2/Wave;->totalEnemiesCount:I

    if-ne p3, p4, :cond_0

    iget p2, p2, Lcom/prineside/tdi2/Wave;->waveNumber:I

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 p2, p2, 0x64

    int-to-float p1, p1

    const p3, 0x3dcccccd    # 0.1f

    mul-float p1, p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    int-to-long p2, p2

    sget-object p4, Lcom/prineside/tdi2/enums/StatisticsType;->SG_WCL:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p2, p3, p4}, Lcom/prineside/tdi2/systems/GameStateSystem;->addScore(JLcom/prineside/tdi2/enums/StatisticsType;)V

    :cond_0
    return-void
.end method

.method public enemyReachedTarget(Lcom/prineside/tdi2/Enemy;ILcom/prineside/tdi2/tiles/TargetTile;)Z
    .locals 1

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    if-eqz p1, :cond_0

    iget p3, p1, Lcom/prineside/tdi2/Wave;->passedEnemiesCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p1, Lcom/prineside/tdi2/Wave;->passedEnemiesCount:I

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/WaveSystem;->isAutoForceWaveEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne p3, v0, :cond_1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/WaveSystem;->setAutoForceWaveEnabled(Z)V

    :cond_1
    return p2
.end method

.method public enemyTakeDamage(Lcom/prineside/tdi2/Enemy;FLcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Projectile;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    if-eqz p1, :cond_0

    iget p3, p1, Lcom/prineside/tdi2/Wave;->enemiesTookDamage:F

    add-float/2addr p3, p2

    iput p3, p1, Lcom/prineside/tdi2/Wave;->enemiesTookDamage:F

    :cond_0
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x57f68e9

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
