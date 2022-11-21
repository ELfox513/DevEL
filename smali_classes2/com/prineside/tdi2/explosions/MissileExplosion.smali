.class public Lcom/prineside/tdi2/explosions/MissileExplosion;
.super Lcom/prineside/tdi2/Explosion;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/explosions/MissileExplosion$MissileExplosionFactory;
    }
.end annotation


# static fields
.field public static final u:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P400:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/explosions/MissileExplosion;->u:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->MISSILE:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Explosion;-><init>(Lcom/prineside/tdi2/enums/ExplosionType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/explosions/MissileExplosion$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/explosions/MissileExplosion;-><init>()V

    return-void
.end method


# virtual methods
.method public enemyAffected(Lcom/prineside/tdi2/Enemy;FF)V
    .locals 8

    invoke-virtual {p0}, Lcom/prineside/tdi2/Explosion;->getTower()Lcom/prineside/tdi2/Tower;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    iget-object v1, v2, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->MISSILE:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v1

    iget v3, p1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr v1, v3

    float-to-double v3, v1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MISSILE_A_OVERWEIGHT_HP:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MISSILE_A_OVERWEIGHT_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MISSILE_A_ULTIMATE_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v5

    add-double/2addr v3, v5

    :cond_1
    float-to-double v0, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-float v0, v0

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-static {v0, p2, p3}, Lcom/prineside/tdi2/Explosion;->calculateDamage(FFF)F

    move-result v3

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->EXPLOSION:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v5, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public explode()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Explosion;->explode()V

    sget-object v0, Lcom/prineside/tdi2/explosions/MissileExplosion;->u:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/LimitedParticleType;->EXPLOSION_MISSILE:Lcom/prineside/tdi2/enums/LimitedParticleType;

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/Explosion;->addExplosionParticle(Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/LimitedParticleType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/SoundSystem;->playExplosionSound(F)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lcom/prineside/tdi2/Explosion;->reset()V

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;FFFF)V
    .locals 10

    const v0, 0x3da3d70a    # 0.08f

    mul-float v0, v0, p5

    const/high16 v1, 0x3e800000    # 0.25f

    add-float v8, v0, v1

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-super/range {v2 .. v9}, Lcom/prineside/tdi2/Explosion;->a(Lcom/prineside/tdi2/Tower;FFFFFLcom/prineside/tdi2/Ability;)V

    return-void
.end method
