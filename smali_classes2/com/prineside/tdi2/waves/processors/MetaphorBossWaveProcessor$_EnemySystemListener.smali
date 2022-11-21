.class public Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_EnemySystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 6

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {p2}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->a(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {p2}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->a(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {p1}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {p2}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    iget-object p2, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p2, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object p2, p2, p1

    iget-object p2, p2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {p2}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p2

    iget-object v0, p2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {p2}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    iget-object p2, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p2, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object p2, p2, p1

    iget-object v1, p2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    const/4 v2, 0x0

    sget-object v3, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/systems/EnemySystem;->killEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x4d10c32

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    const-class v1, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
