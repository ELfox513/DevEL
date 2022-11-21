.class public Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;
.super Lcom/prineside/tdi2/Projectile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/projectiles/ChainLightningProjectile$ChainLightningProjectileFactory;
    }
.end annotation


# instance fields
.field public d:Z

.field public k:Lcom/prineside/tdi2/Tower;

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lcom/badlogic/gdx/math/Vector2;

.field public v:Lcom/prineside/tdi2/Tile;

.field public w:F

.field public final x:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/shapes/ChainLightning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Projectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->t:Lcom/badlogic/gdx/utils/ObjectSet;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->u:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/shapes/ChainLightning;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->x:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/projectiles/ChainLightningProjectile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_b

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v1

    iget v6, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    iput v3, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    return v5

    :cond_0
    const/4 v1, 0x0

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v7, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->v:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tile;->getNeighbourTilesAndThis()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_8

    iget-object v10, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/Tile;

    aget-object v10, v10, v9

    iget-object v11, v10, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v11, v10, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v11, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_7

    iget-object v13, v10, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v13, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v13, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v13, v13, v12

    iget-object v13, v13, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v14

    iget-object v15, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->u:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v14

    cmpg-float v15, v14, v6

    if-gez v15, :cond_6

    iget-object v15, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->t:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v2, v13}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->k:Lcom/prineside/tdi2/Tower;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v13}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/prineside/tdi2/enums/DamageType;->ELECTRICITY:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v13, v2}, Lcom/prineside/tdi2/Enemy;->isVulnerableTo(Lcom/prineside/tdi2/enums/DamageType;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const v1, 0x414ccccd    # 12.8f

    cmpg-float v1, v14, v1

    if-gez v1, :cond_5

    move-object v1, v13

    move v6, v14

    goto :goto_3

    :cond_5
    move-object v1, v13

    move v6, v14

    :cond_6
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    iget-object v2, v10, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_8
    if-nez v1, :cond_9

    iput v3, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    return v5

    :cond_9
    iget v2, v1, Lcom/prineside/tdi2/Enemy;->buffFreezingLightningLengthBonus:F

    const v5, 0x3c23d70a    # 0.01f

    mul-float v2, v2, v5

    sub-float/2addr v4, v2

    iget v2, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    sub-float/2addr v2, v4

    iput v2, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    iput v3, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    :cond_a
    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->b(Lcom/prineside/tdi2/Enemy;)V

    goto :goto_4

    :cond_b
    iget v1, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->w:F

    add-float v1, v1, p1

    iput v1, v0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->w:F

    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method public applyDrawInterpolation(F)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/prineside/tdi2/Enemy;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v3

    mul-float v1, v1, v3

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v3

    add-float v7, v0, v1

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v1

    sub-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v2

    mul-float v1, v1, v2

    mul-float v1, v1, v3

    add-float v6, v0, v1

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectilesDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/shapes/ChainLightning$ChainLightningFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/ChainLightning;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/projectiles/ChainLightningProjectile$ChainLightningProjectileFactory;

    iget-object v1, v1, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile$ChainLightningProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/prineside/tdi2/shapes/ChainLightning;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/shapes/ChainLightning;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v20, 0x41800000    # 16.0f

    iget-object v1, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->u:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v16, 0x3e800000    # 0.25f

    const/16 v17, 0x1

    const v18, 0x41570a3e    # 13.440001f

    const v19, 0x42866666    # 67.2f

    move-object v10, v0

    move v13, v7

    move v14, v6

    invoke-virtual/range {v10 .. v20}, Lcom/prineside/tdi2/shapes/ChainLightning;->setup(FFFFFFZFFF)V

    iget-object v1, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->x:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->u:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v7, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    iput-object v0, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->v:Lcom/prineside/tdi2/Tile;

    sget-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->CHAINING:Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-virtual {v9, v0}, Lcom/prineside/tdi2/Enemy;->isVulnerableToSpecial(Lcom/prineside/tdi2/enums/SpecialDamageType;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    :cond_1
    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->t:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v2, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->k:Lcom/prineside/tdi2/Tower;

    iget v3, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->p:F

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->ELECTRICITY:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v5, v8, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    const/4 v10, 0x1

    move-object/from16 v1, p1

    move v11, v6

    move v6, v10

    move v10, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->k:Lcom/prineside/tdi2/Tower;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v2, Lcom/prineside/tdi2/enums/TowerType;->TESLA:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v1, v2, :cond_2

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget v1, v1, Lcom/prineside/tdi2/systems/EnemySystem;->lastDamageGiven:F

    check-cast v0, Lcom/prineside/tdi2/towers/TeslaTower;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/prineside/tdi2/towers/TeslaTower;->damageSinceLastBallLightning:F

    add-float/2addr v2, v1

    iput v2, v0, Lcom/prineside/tdi2/towers/TeslaTower;->damageSinceLastBallLightning:F

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_ULTIMATE_KILL_INTERVAL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v1

    int-to-float v1, v1

    iget v2, v9, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v1, v1, v2

    iget v2, v0, Lcom/prineside/tdi2/towers/TeslaTower;->damageSinceLastBallLightning:F

    cmpl-float v3, v2, v1

    if-ltz v3, :cond_2

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/prineside/tdi2/towers/TeslaTower;->damageSinceLastBallLightning:F

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    sget-object v2, Lcom/prineside/tdi2/enums/AbilityType;->BALL_LIGHTNING:Lcom/prineside/tdi2/enums/AbilityType;

    float-to-int v3, v10

    float-to-int v4, v11

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/systems/AbilitySystem;->startAbility(Lcom/prineside/tdi2/enums/AbilityType;II)Lcom/prineside/tdi2/Ability;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/abilities/BallLightningAbility;

    iget v2, v0, Lcom/prineside/tdi2/towers/TeslaTower;->damage:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    iget-object v4, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_ULTIMATE_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v2, v2, v4

    iput v2, v1, Lcom/prineside/tdi2/abilities/BallLightningAbility;->damage:F

    iget v2, v0, Lcom/prineside/tdi2/towers/TeslaTower;->attackDelay:F

    mul-float v2, v2, v3

    iput v2, v1, Lcom/prineside/tdi2/abilities/BallLightningAbility;->attackInterval:F

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_ULTIMATE_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v2

    iput v2, v1, Lcom/prineside/tdi2/abilities/BallLightningAbility;->duration:F

    iput-object v0, v1, Lcom/prineside/tdi2/abilities/BallLightningAbility;->launchedByTower:Lcom/prineside/tdi2/Tower;

    :cond_2
    iget v0, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->p:F

    iget v1, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->r:F

    mul-float v0, v0, v1

    iput v0, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->p:F

    iget v1, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->q:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iput v1, v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->p:F

    :cond_3
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->x:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_2

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/shapes/ChainLightning;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/prineside/tdi2/shapes/ChainLightning;->update(F)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/shapes/ChainLightning;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->x:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/prineside/tdi2/shapes/ChainLightning;->free()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/shapes/ChainLightning;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hasReachedTarget()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->w:F

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->hasReachedTarget()Z

    move-result v0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Projectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->d:Z

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Tower;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->k:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->p:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->r:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    const-class v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectSet;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->t:Lcom/badlogic/gdx/utils/ObjectSet;

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->u:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Tile;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->v:Lcom/prineside/tdi2/Tile;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->w:F

    return-void
.end method

.method public reset()V
    .locals 3

    invoke-super {p0}, Lcom/prineside/tdi2/Projectile;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->d:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->p:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->q:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->r:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->w:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->k:Lcom/prineside/tdi2/Tower;

    iput-object v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->v:Lcom/prineside/tdi2/Tile;

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->t:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->x:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/shapes/ChainLightning;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/shapes/ChainLightning;->free()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->u:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Enemy;FFFFLcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p6, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->u:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p7}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->k:Lcom/prineside/tdi2/Tower;

    iput p3, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->p:F

    iput p4, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->q:F

    iput p5, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->r:F

    iput p6, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    iput v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->w:F

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->b(Lcom/prineside/tdi2/Enemy;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->d:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "chainLength is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->k:Lcom/prineside/tdi2/Tower;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->v:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    if-nez v0, :cond_2

    iput v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    :cond_2
    const v0, 0x3d0d3dcb

    div-float v0, p1, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->a(F)Z

    goto :goto_1

    :cond_3
    int-to-float v1, v0

    div-float/2addr p1, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->a(F)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    iput v1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    iget v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->w:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Projectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->d:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->k:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->p:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->r:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->s:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->t:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->u:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->v:Lcom/prineside/tdi2/Tile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->w:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
