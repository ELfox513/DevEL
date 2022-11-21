.class public Lcom/prineside/tdi2/enemies/bosses/MobchainBossBodyEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/bosses/MobchainBossBodyEnemy$MobchainBossBodyEnemyFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/bosses/MobchainBossBodyEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/bosses/MobchainBossBodyEnemy;-><init>()V

    return-void
.end method


# virtual methods
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

    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->SPLASH:Lcom/prineside/tdi2/enums/TowerType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->SNIPER:Lcom/prineside/tdi2/enums/TowerType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->MULTISHOT:Lcom/prineside/tdi2/enums/TowerType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->MINIGUN:Lcom/prineside/tdi2/enums/TowerType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->MISSILE:Lcom/prineside/tdi2/enums/TowerType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->CANNON:Lcom/prineside/tdi2/enums/TowerType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->BASIC:Lcom/prineside/tdi2/enums/TowerType;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->VENOM:Lcom/prineside/tdi2/enums/TowerType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->TESLA:Lcom/prineside/tdi2/enums/TowerType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->LASER:Lcom/prineside/tdi2/enums/TowerType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->FREEZING:Lcom/prineside/tdi2/enums/TowerType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->FLAMETHROWER:Lcom/prineside/tdi2/enums/TowerType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->BLAST:Lcom/prineside/tdi2/enums/TowerType;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    mul-float v1, v1, p1

    return v1
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
