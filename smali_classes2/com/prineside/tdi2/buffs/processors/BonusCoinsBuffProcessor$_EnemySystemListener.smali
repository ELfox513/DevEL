.class public Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor;
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

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

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

    sget-object p3, Lcom/prineside/tdi2/enums/BuffType;->BONUS_COINS:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p3

    if-eqz p3, :cond_1

    iget p4, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;

    iget p4, p3, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->bonusCoinsMultiplier:F

    iget p1, p1, Lcom/prineside/tdi2/Enemy;->bounty:F

    mul-float p4, p4, p1

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/4 p5, 0x1

    invoke-virtual {p1, p4, p5}, Lcom/prineside/tdi2/systems/GameStateSystem;->addMoney(FZ)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p3, p3, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->issuer:Lcom/prineside/tdi2/Tower;

    if-eqz p3, :cond_0

    iget p2, p3, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    int-to-float p1, p1

    add-float/2addr p2, p1

    iput p2, p3, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget p3, p2, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    int-to-float p1, p1

    add-float/2addr p3, p1

    iput p3, p2, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    :cond_1
    :goto_0
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0xe057f

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
