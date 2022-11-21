.class public Lcom/prineside/tdi2/projectiles/SplashProjectile;
.super Lcom/prineside/tdi2/CollidingProjectile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/projectiles/SplashProjectile$SplashProjectileFactory;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/graphics/Color;

.field public static final B:Lcom/badlogic/gdx/graphics/Color;

.field public static final C:Lcom/badlogic/gdx/math/Vector2;

.field public static final D:Lcom/badlogic/gdx/math/Vector2;

.field public static final E:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public chainKillGeneration:I

.field public v:Lcom/prineside/tdi2/Tower;

.field public w:Z

.field public x:Z

.field public y:Lcom/prineside/tdi2/shapes/TrailMultiLine;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public z:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->A:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->B:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->C:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->D:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->E:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->SPLASH:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/CollidingProjectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->chainKillGeneration:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/projectiles/SplashProjectile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/projectiles/SplashProjectile;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/prineside/tdi2/Enemy;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, v8, Lcom/prineside/tdi2/Projectile;->a:F

    iget-object v2, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->getBuffedSpeed()F

    move-result v2

    iget-object v3, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SPLASH_A_RIFFLED_SPEED_MARK:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    float-to-double v2, v0

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SPLASH_A_RIFFLED_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v0, v2

    :cond_1
    move v3, v0

    sget-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->PIERCING:Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Enemy;->isVulnerableToSpecial(Lcom/prineside/tdi2/enums/SpecialDamageType;)Z

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_2

    iput-boolean v9, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->x:Z

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v10, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v2, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v5, v8, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->chainKillGeneration:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SPLASH_A_ULTIMATE_SPLINTERS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->chainKillGeneration:I

    if-nez v2, :cond_3

    float-to-double v1, v1

    iget-object v3, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SPLASH_A_ULTIMATE_BASE_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    :cond_3
    float-to-double v1, v1

    iget-object v3, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SPLASH_A_ULTIMATE_CHAIN_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v1, v1, v3

    double-to-float v1, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v4, Lcom/prineside/tdi2/enums/ProjectileType;->SPLASH:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/projectiles/SplashProjectile;

    iget-object v4, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    iget-object v4, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v4

    const v5, 0x40c90fdb

    mul-float v4, v4, v5

    sget-object v5, Lcom/prineside/tdi2/projectiles/SplashProjectile;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v6

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v4

    invoke-virtual {v5, v6, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/prineside/tdi2/projectiles/SplashProjectile;->C:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v6, Lcom/prineside/tdi2/projectiles/SplashProjectile;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v13, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    iget v5, v8, Lcom/prineside/tdi2/Projectile;->a:F

    mul-float v14, v5, v1

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v18, 0x40000000    # 2.0f

    move-object v12, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v18}, Lcom/prineside/tdi2/projectiles/SplashProjectile;->setup(Lcom/prineside/tdi2/Tower;FFLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    iget v4, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->chainKillGeneration:I

    add-int/2addr v4, v9

    iput v4, v3, Lcom/prineside/tdi2/projectiles/SplashProjectile;->chainKillGeneration:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/AchievementSystem;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->SPLASH_CHAIN_KILL:Lcom/prineside/tdi2/enums/AchievementType;

    iget v2, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->chainKillGeneration:I

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_5
    iput-boolean v9, v8, Lcom/prineside/tdi2/projectiles/SplashProjectile;->w:Z

    iget v0, v8, Lcom/prineside/tdi2/Projectile;->a:F

    float-to-double v0, v0

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SPLASH_A_PENETRATING_DAMAGE_CHAIN:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, v8, Lcom/prineside/tdi2/Projectile;->a:F

    :cond_6
    :goto_2
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->z:I

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result v0

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->C:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, p2, v2, v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->updateStartPos(FFF)V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/CollidingProjectile;->d()F

    move-result p2

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    sget-object p2, Lcom/prineside/tdi2/projectiles/SplashProjectile;->A:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/prineside/tdi2/CollidingProjectile;->d()F

    move-result v1

    div-float/2addr v1, v0

    iput v1, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->SPLASH:Lcom/prineside/tdi2/projectiles/SplashProjectile$SplashProjectileFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/projectiles/SplashProjectile$SplashProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x40900000    # 4.5f

    sub-float v2, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v0, 0x41100000    # 9.0f

    sub-float v3, p2, v0

    const/high16 v4, 0x40900000    # 4.5f

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawAngle:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public isDone()Z
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0}, Lcom/prineside/tdi2/CollidingProjectile;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->x:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->w:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/CollidingProjectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->chainKillGeneration:I

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Tower;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->w:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->x:Z

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/CollidingProjectile;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->chainKillGeneration:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    iput-object v1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->w:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->x:Z

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;FFLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 0

    invoke-super {p0, p4, p6, p5}, Lcom/prineside/tdi2/CollidingProjectile;->g(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)V

    iput p3, p0, Lcom/prineside/tdi2/CollidingProjectile;->d:F

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    iput p2, p0, Lcom/prineside/tdi2/Projectile;->a:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->w:Z

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->x:Z

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

    const/high16 p1, 0x41c00000    # 24.0f

    const p2, 0x3e6147ae    # 0.22f

    const/4 p3, 0x3

    sget-object p5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p5, p5, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object p5, p5, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object p5, p5, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;

    invoke-virtual {p5}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object p5

    check-cast p5, Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iput-object p5, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->SPLASH:Lcom/prineside/tdi2/projectiles/SplashProjectile$SplashProjectileFactory;

    iget-object p6, p6, Lcom/prineside/tdi2/projectiles/SplashProjectile$SplashProjectileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p5, p6}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object p5, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object p6, Lcom/prineside/tdi2/projectiles/SplashProjectile;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p5, p6, p3, p2, p1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setup(Lcom/badlogic/gdx/graphics/Color;IFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget p2, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setStartPoint(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    iget-object p1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->z:I

    :cond_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/CollidingProjectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->chainKillGeneration:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->v:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->w:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/SplashProjectile;->x:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
