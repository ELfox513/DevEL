.class public Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;
.super Lcom/prineside/tdi2/BuffProcessor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/BuffProcessor<",
        "Lcom/prineside/tdi2/buffs/ChainReactionBuff;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_BUFFS_PER_ENEMY:I = 0x2

.field public static final k:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Buff;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Buff;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/BuffProcessor;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Enemy;F)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->d(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Enemy;F)V

    return-void
.end method

.method public static d(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Enemy;F)V
    .locals 8

    iget-boolean v0, p2, Lcom/prineside/tdi2/Enemy;->wasAimedAtWithChainReactionBuff:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/prineside/tdi2/Enemy;->wasAimedAtWithChainReactionBuff:Z

    sget-object v0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    iget-object v5, p1, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v4, v5, v4

    const/4 v5, 0x0

    :goto_1
    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_2

    iget-object v6, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/Buff;

    aget-object v6, v6, v5

    invoke-virtual {v6, p3}, Lcom/prineside/tdi2/Buff;->cpy(F)Lcom/prineside/tdi2/Buff;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v7, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->BUFF:Lcom/prineside/tdi2/projectiles/BuffProjectile$BuffProjectileFactory;

    invoke-virtual {p3}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object p3

    check-cast p3, Lcom/prineside/tdi2/projectiles/BuffProjectile;

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {p0, p3}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    sget-object p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    const/high16 v0, 0x3fe00000    # 1.75f

    invoke-virtual {p3, p2, p0, p1, v0}, Lcom/prineside/tdi2/projectiles/BuffProjectile;->setup(Lcom/prineside/tdi2/Enemy;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/math/Vector2;F)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z
    .locals 0

    check-cast p2, Lcom/prineside/tdi2/buffs/ChainReactionBuff;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/ChainReactionBuff;)Z

    move-result p1

    return p1
.end method

.method public addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/ChainReactionBuff;)Z
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->CHAIN_REACTION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/buffs/ChainReactionBuff;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->chance:F

    iget v3, p2, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->chance:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->free()V

    return v2

    :cond_0
    invoke-virtual {p0, p1, v0, v2}, Lcom/prineside/tdi2/BuffProcessor;->removeBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/enums/BuffType;I)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z

    move-result p1

    return p1
.end method

.method public getBuffCountStatistic()Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->EB_CR:Lcom/prineside/tdi2/enums/StatisticsType;

    return-object v0
.end method

.method public getUpdateInterval()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;

    return-void
.end method

.method public setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object p1, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;

    if-nez p1, :cond_0

    new-instance p1, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$1;)V

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public setUnregistered()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;

    const-class v1, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
