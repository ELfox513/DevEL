.class public Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_EnemySystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyTakeDamage(Lcom/prineside/tdi2/Enemy;FLcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Projectile;)V
    .locals 0

    iget-object p3, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    invoke-static {p3}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->b(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    invoke-static {p3}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->b(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p3

    iget-object p3, p3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-ne p1, p3, :cond_2

    move-object p3, p1

    check-cast p3, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;

    invoke-virtual {p3}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result p4

    iget p5, p3, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr p4, p5

    const/high16 p5, 0x3e800000    # 0.25f

    cmpg-float p4, p4, p5

    if-gez p4, :cond_0

    invoke-virtual {p3}, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->wasInRage()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p3}, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->startRage()V

    :cond_0
    invoke-virtual {p3}, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->isInRage()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result p4

    const/high16 p5, 0x3fc00000    # 1.5f

    mul-float p2, p2, p5

    add-float/2addr p4, p2

    iget p2, p1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    cmpl-float p5, p4, p2

    if-lez p5, :cond_1

    move p4, p2

    :cond_1
    invoke-virtual {p1, p4}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    invoke-virtual {p3}, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->healthRestoredWithDamage()V

    :cond_2
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x52fd46

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    const-class v1, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
