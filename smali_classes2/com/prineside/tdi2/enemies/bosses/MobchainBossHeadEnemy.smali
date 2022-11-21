.class public Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy$MobchainBossHeadEnemyFactory;
    }
.end annotation


# instance fields
.field public vulnerable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy;->vulnerable:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public canBeAttackedBy(Lcom/prineside/tdi2/Tower;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy;->vulnerable:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->canBeAttackedBy(Lcom/prineside/tdi2/Tower;)Z

    move-result p1

    return p1
.end method

.method public drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy;->vulnerable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_0
    return-void
.end method

.method public dynamicPathfindingAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;)F
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->BALL_LIGHTNING:Lcom/prineside/tdi2/enums/AbilityType;

    if-ne p1, v0, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getBaseDamage()F
    .locals 1

    const/high16 v0, 0x41700000    # 15.0f

    return v0
.end method

.method public getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy;->vulnerable:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    return p1
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy;->vulnerable:Z

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy;->vulnerable:Z

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy;->vulnerable:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
