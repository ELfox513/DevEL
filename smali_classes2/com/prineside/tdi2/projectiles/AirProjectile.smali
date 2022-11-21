.class public Lcom/prineside/tdi2/projectiles/AirProjectile;
.super Lcom/prineside/tdi2/EnemyFollowingProjectile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/projectiles/AirProjectile$AirProjectileFactory;
    }
.end annotation


# static fields
.field public static final D:Lcom/badlogic/gdx/graphics/Color;

.field public static final E:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public A:Z

.field public B:Lcom/prineside/tdi2/shapes/TrailMultiLine;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public C:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public x:Lcom/prineside/tdi2/towers/AirTower;

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/projectiles/AirProjectile;->D:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/AirProjectile;->E:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->AIR:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/projectiles/AirProjectile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/projectiles/AirProjectile;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/badlogic/gdx/math/Vector2;F)Lcom/prineside/tdi2/explosions/AirFallExplosion;
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_AIR_A_AIMED_DROP_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_AIR_A_ULTIMATE_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->explosionManager:Lcom/prineside/tdi2/managers/ExplosionManager;

    sget-object v3, Lcom/prineside/tdi2/enums/ExplosionType;->AIR_FALL:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ExplosionManager;->getFactory(Lcom/prineside/tdi2/enums/ExplosionType;)Lcom/prineside/tdi2/Explosion$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Explosion$Factory;->obtain()Lcom/prineside/tdi2/Explosion;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/explosions/AirFallExplosion;

    iget-object v4, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    double-to-float p1, v0

    mul-float v7, p2, p1

    const/high16 v8, 0x3fc00000    # 1.5f

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/prineside/tdi2/explosions/AirFallExplosion;->setup(Lcom/prineside/tdi2/Tower;FFFF)V

    return-object v2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->B:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->C:I

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->B:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget-object v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, p2, v2, v1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->updateStartPos(FFF)V

    :cond_0
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->AIR:Lcom/prineside/tdi2/projectiles/AirProjectile$AirProjectileFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/projectiles/AirProjectile$AirProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x41100000    # 9.0f

    sub-float v3, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v2

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v5, 0x41900000    # 18.0f

    move-object v0, p1

    move v2, v3

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public hit()V
    .locals 19

    move-object/from16 v8, p0

    invoke-super/range {p0 .. p0}, Lcom/prineside/tdi2/Projectile;->hit()V

    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v9, Lcom/prineside/tdi2/projectiles/AirProjectile;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v10, v1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v2, v8, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    iget v3, v8, Lcom/prineside/tdi2/Projectile;->a:F

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v5, v8, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    const/4 v6, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v8, Lcom/prineside/tdi2/projectiles/AirProjectile;->A:Z

    if-eqz v0, :cond_4

    invoke-virtual {v8, v9, v10}, Lcom/prineside/tdi2/projectiles/AirProjectile;->c(Lcom/badlogic/gdx/math/Vector2;F)Lcom/prineside/tdi2/explosions/AirFallExplosion;

    move-result-object v0

    iget-object v1, v8, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UnitManager$Factories;->MINE:Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;->create()Lcom/prineside/tdi2/units/MineUnit;

    move-result-object v1

    iget-object v12, v8, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v13, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v14, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v15, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v18, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v1

    move/from16 v16, v2

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v18}, Lcom/prineside/tdi2/units/MineUnit;->setup(Lcom/prineside/tdi2/Tower;FFFFLcom/prineside/tdi2/Explosion;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/UnitSystem;->register(Lcom/prineside/tdi2/Unit;)V

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/MapSystem;->spawnUnit(Lcom/prineside/tdi2/Unit;)V

    goto :goto_1

    :cond_1
    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->explosion:Lcom/prineside/tdi2/systems/ExplosionSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/ExplosionSystem;->register(Lcom/prineside/tdi2/Explosion;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/explosions/AirFallExplosion;->explode()V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v1

    iget v2, v8, Lcom/prineside/tdi2/projectiles/AirProjectile;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BURN:Lcom/prineside/tdi2/buffs/BurnBuff$BurnBuffFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/buffs/BurnBuff;

    iget v2, v0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    const v3, 0x3ca3d70a    # 0.02f

    mul-float v2, v2, v3

    iget v3, v8, Lcom/prineside/tdi2/Projectile;->a:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v5, v3, v4

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    mul-float v3, v3, v4

    move v6, v3

    goto :goto_0

    :cond_3
    move v6, v2

    :goto_0
    iget-object v3, v8, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    iget v5, v8, Lcom/prineside/tdi2/projectiles/AirProjectile;->z:F

    mul-float v7, v5, v4

    const/4 v9, 0x0

    move-object v2, v1

    move v4, v5

    move v5, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/buffs/BurnBuff;->setup(Lcom/prineside/tdi2/Tower;FFFLcom/prineside/tdi2/Ability;)V

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/BuffSystem;->P_BURN:Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;

    invoke-virtual {v2, v0, v1}, Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/BurnBuff;)Z

    iget-object v1, v8, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v1

    if-ne v1, v0, :cond_4

    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/towers/AirTower;->currentTargetIgnited:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/towers/AirTower;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->y:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->z:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->A:Z

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->B:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->y:F

    iput v0, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->z:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->A:Z

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/towers/AirTower;Lcom/prineside/tdi2/Enemy;FLcom/badlogic/gdx/math/Vector2;FFFZ)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    iput p3, p0, Lcom/prineside/tdi2/Projectile;->a:F

    iput p6, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->y:F

    iput p7, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->z:F

    iput-boolean p8, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->A:Z

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, 0x41f00000    # 30.0f

    const p3, 0x3db851ec    # 0.09f

    const/4 p6, 0x5

    sget-object p7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p7, p7, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object p7, p7, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object p7, p7, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;

    invoke-virtual {p7}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object p7

    check-cast p7, Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iput-object p7, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->B:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object p8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p8, p8, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p8, p8, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p8, p8, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->AIR:Lcom/prineside/tdi2/projectiles/AirProjectile$AirProjectileFactory;

    iget-object p8, p8, Lcom/prineside/tdi2/projectiles/AirProjectile$AirProjectileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p7, p8}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object p7, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->B:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object p8, Lcom/prineside/tdi2/projectiles/AirProjectile;->D:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p7, p8, p6, p3, p1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setup(Lcom/badlogic/gdx/graphics/Color;IFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->B:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p6, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p3, p6}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setStartPoint(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    iget-object p3, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->B:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    iget-object p1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->B:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->C:I

    :cond_0
    invoke-super {p0, p4, p2, p5}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->setup(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;F)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->x:Lcom/prineside/tdi2/towers/AirTower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->y:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->z:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/AirProjectile;->A:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
