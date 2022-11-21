.class public Lcom/prineside/tdi2/projectiles/VenomProjectile;
.super Lcom/prineside/tdi2/EnemyFollowingProjectile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;
    }
.end annotation


# static fields
.field public static final B:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public A:Lcom/prineside/tdi2/buffs/PoisonBuff;

.field public x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public y:Z

.field public z:Lcom/prineside/tdi2/towers/VenomTower;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->B:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->VENOM:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/projectiles/VenomProjectile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/projectiles/VenomProjectile;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->VENOM:Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x41100000    # 9.0f

    sub-float v3, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v2

    iget v10, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawAngle:F

    const/high16 v4, 0x41100000    # 9.0f

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p1

    move v2, v3

    move v3, p2

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    :cond_0
    return-void
.end method

.method public hit()V
    .locals 11

    invoke-super {p0}, Lcom/prineside/tdi2/Projectile;->hit()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/BuffSystem;->P_POISON:Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->A:Lcom/prineside/tdi2/buffs/PoisonBuff;

    invoke-virtual {v0, v8, v1}, Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/PoisonBuff;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->z:Lcom/prineside/tdi2/towers/VenomTower;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->z:Lcom/prineside/tdi2/towers/VenomTower;

    iget-object v1, v0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v2, Lcom/prineside/tdi2/enums/TowerType;->VENOM:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->z:Lcom/prineside/tdi2/towers/VenomTower;

    sget-object v1, Lcom/prineside/tdi2/enums/BuffType;->CHAIN_REACTION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8, v1}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager$Factories;->CHAIN_REACTION:Lcom/prineside/tdi2/buffs/ChainReactionBuff$ChainReactionBuffFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/buffs/ChainReactionBuff;

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_VENOM_A_CHAIN_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v3

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v4, v3, v2

    invoke-virtual {v0}, Lcom/prineside/tdi2/towers/VenomTower;->getUltimateChance()F

    move-result v5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_VENOM_A_CHAIN_RANGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v6

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v7, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_VENOM_A_CHAIN_PROLONG:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v9

    double-to-float v2, v9

    add-float v7, v2, v0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->setup(FFFFF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/BuffSystem;->P_CHAIN_REACTION:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;

    invoke-virtual {v0, v8, v1}, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/ChainReactionBuff;)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->A:Lcom/prineside/tdi2/buffs/PoisonBuff;

    iget-object v2, v1, Lcom/prineside/tdi2/buffs/PoisonBuff;->tower:Lcom/prineside/tdi2/Tower;

    iget v3, v1, Lcom/prineside/tdi2/buffs/PoisonBuff;->hitDamage:F

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->POISON:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v5, p0, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    const/4 v6, 0x1

    move-object v1, v8

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->A:Lcom/prineside/tdi2/buffs/PoisonBuff;

    iget-object v0, v0, Lcom/prineside/tdi2/buffs/PoisonBuff;->tower:Lcom/prineside/tdi2/Tower;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->A:Lcom/prineside/tdi2/buffs/PoisonBuff;

    iget-object v0, v0, Lcom/prineside/tdi2/buffs/PoisonBuff;->tower:Lcom/prineside/tdi2/Tower;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Tower;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    :cond_1
    return-void
.end method

.method public multiplyDamage(FLcom/prineside/tdi2/Ability;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Projectile;->multiplyDamage(FLcom/prineside/tdi2/Ability;)V

    iget-object p2, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->A:Lcom/prineside/tdi2/buffs/PoisonBuff;

    iget v0, p2, Lcom/prineside/tdi2/buffs/PoisonBuff;->hitDamage:F

    mul-float v0, v0, p1

    iput v0, p2, Lcom/prineside/tdi2/buffs/PoisonBuff;->hitDamage:F

    iget v0, p2, Lcom/prineside/tdi2/buffs/PoisonBuff;->poisonDamage:F

    mul-float v0, v0, p1

    iput v0, p2, Lcom/prineside/tdi2/buffs/PoisonBuff;->poisonDamage:F

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->y:Z

    const-class v0, Lcom/prineside/tdi2/towers/VenomTower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/towers/VenomTower;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->z:Lcom/prineside/tdi2/towers/VenomTower;

    const-class v0, Lcom/prineside/tdi2/buffs/PoisonBuff;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/buffs/PoisonBuff;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->A:Lcom/prineside/tdi2/buffs/PoisonBuff;

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->y:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->A:Lcom/prineside/tdi2/buffs/PoisonBuff;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->z:Lcom/prineside/tdi2/towers/VenomTower;

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    return-void
.end method

.method public setup(Lcom/prineside/tdi2/towers/VenomTower;Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/PoisonBuff;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 0

    invoke-super {p0, p4, p2, p5}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->setup(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;F)V

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->z:Lcom/prineside/tdi2/towers/VenomTower;

    iput-object p3, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->A:Lcom/prineside/tdi2/buffs/PoisonBuff;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->y:Z

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/ParticleSystem;->willParticleBeSkipped()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->VENOM:Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;

    iget-object p1, p1, Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget p2, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->y:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->z:Lcom/prineside/tdi2/towers/VenomTower;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->z:Lcom/prineside/tdi2/towers/VenomTower;

    iget-object v1, v0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v2, Lcom/prineside/tdi2/enums/TowerType;->VENOM:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/prineside/tdi2/Projectile;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v4, 0x43c00000    # 384.0f

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/prineside/tdi2/systems/MapSystem;->getEnemiesNearPoint(Lcom/badlogic/gdx/utils/Array;FFF)V

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    sget-object v2, Lcom/prineside/tdi2/Projectile;->b:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->z:Lcom/prineside/tdi2/towers/VenomTower;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Projectile;->b:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy;

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->y:Z

    :goto_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_4
    invoke-super {p0, p1}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->update(F)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->y:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->z:Lcom/prineside/tdi2/towers/VenomTower;

    const-class v1, Lcom/prineside/tdi2/towers/VenomTower;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/VenomProjectile;->A:Lcom/prineside/tdi2/buffs/PoisonBuff;

    const-class v1, Lcom/prineside/tdi2/buffs/PoisonBuff;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
