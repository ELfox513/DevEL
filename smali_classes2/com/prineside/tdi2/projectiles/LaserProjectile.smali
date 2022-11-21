.class public Lcom/prineside/tdi2/projectiles/LaserProjectile;
.super Lcom/prineside/tdi2/Projectile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;
    }
.end annotation


# static fields
.field public static final B:Lcom/badlogic/gdx/math/Vector2;

.field public static final C:Lcom/badlogic/gdx/math/Vector2;

.field public static final D:Lcom/badlogic/gdx/math/Vector2;

.field public static final E:Lcom/badlogic/gdx/math/Vector2;

.field public static final F:Lcom/badlogic/gdx/math/Vector2;

.field public static final G:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:F

.field public d:Lcom/prineside/tdi2/shapes/MultiLine;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public k:Lcom/prineside/tdi2/shapes/MultiLine;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public penetrationCount:I

.field public q:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public r:Lcom/prineside/tdi2/Tower;

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->B:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->C:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->D:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->E:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->F:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->G:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->LASER:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Projectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/projectiles/LaserProjectile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/projectiles/LaserProjectile;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public applyDrawInterpolation(F)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 13

    invoke-virtual {p0}, Lcom/prineside/tdi2/projectiles/LaserProjectile;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/MultiLine;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/MultiLine;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->k:Lcom/prineside/tdi2/shapes/MultiLine;

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->penetrationCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->k:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v2}, Lcom/prineside/tdi2/shapes/MultiLine;->reset()V

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->k:Lcom/prineside/tdi2/shapes/MultiLine;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->LASER:Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;

    iget-object v3, v3, Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8, v8}, Lcom/prineside/tdi2/shapes/MultiLine;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    sget-object v9, Lcom/prineside/tdi2/projectiles/LaserProjectile;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    iget v3, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    iget v4, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    sub-float/2addr v3, v4

    invoke-virtual {v9, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->LASER:Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;

    iget-object v3, v3, Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->k:Lcom/prineside/tdi2/shapes/MultiLine;

    iget v3, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    iget v4, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v7, 0x0

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/shapes/MultiLine;->appendNode(FFFFZ)V

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->k:Lcom/prineside/tdi2/shapes/MultiLine;

    iget v3, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    iget v4, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    iget v5, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v4, v5

    const/high16 v5, 0x42400000    # 48.0f

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/shapes/MultiLine;->appendNode(FFFFZ)V

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->k:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v2}, Lcom/prineside/tdi2/shapes/MultiLine;->updateAllNodes()V

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v2}, Lcom/prineside/tdi2/shapes/MultiLine;->reset()V

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->LASER:Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;

    iget-object v3, v3, Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2, v3, v8, v8}, Lcom/prineside/tdi2/shapes/MultiLine;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    sget-object v2, Lcom/prineside/tdi2/projectiles/LaserProjectile;->C:Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    iget v4, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    iget v5, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->LASER:Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;

    iget-object v3, v3, Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    iget v3, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    iget v4, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    iget v5, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    invoke-static {v2, v3, v4, v5}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->LASER:Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;

    iget-object v3, v3, Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v2, v3

    iget v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    iget v3, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v11, v2, v3

    iget v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    iget v3, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v9, v2, v3

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    const/high16 v5, 0x42400000    # 48.0f

    move v3, v11

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/shapes/MultiLine;->appendNode(FFFFZ)V

    :goto_1
    const/4 v2, 0x0

    cmpl-float v3, v10, v2

    if-lez v3, :cond_3

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v2, v10, v12

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    iget v3, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    move v11, v2

    move v9, v3

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/prineside/tdi2/projectiles/LaserProjectile;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v11, v3

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v9, v2

    :goto_2
    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v7, 0x0

    move v3, v11

    move v4, v9

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/shapes/MultiLine;->appendNode(FFFFZ)V

    sub-float/2addr v10, v12

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/MultiLine;->updateAllNodes()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->willParticleBeSkipped()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->LASER:Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    iget v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    iget v3, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    iget v4, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    invoke-static {v0, v2, v3, v4}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getAngle()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    const/high16 v3, 0x42700000    # 60.0f

    sub-float v4, v0, v3

    add-float/2addr v0, v3

    invoke-virtual {v2, v4, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    iget v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_6
    :goto_3
    iput-boolean v8, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->q:Z

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Collision point is not calculated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/projectiles/LaserProjectile;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->q:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/projectiles/LaserProjectile;->b()V

    :cond_2
    iget p2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->z:F

    const v0, 0x3e19999a    # 0.15f

    div-float v1, p2, v0

    iget v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->w:F

    sub-float v3, v2, p2

    cmpg-float v3, v3, v0

    if-gez v3, :cond_3

    sub-float/2addr v2, p2

    div-float v1, v2, v0

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, v1, p2

    if-lez v0, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_4
    iget-object p2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->k:Lcom/prineside/tdi2/shapes/MultiLine;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2, v0, v1}, Lcom/prineside/tdi2/shapes/MultiLine;->setTint(Lcom/badlogic/gdx/graphics/Color;F)V

    iget-object p2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->k:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iget-object p2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {p2, v0, v1}, Lcom/prineside/tdi2/shapes/MultiLine;->setTint(Lcom/badlogic/gdx/graphics/Color;F)V

    iget-object p2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public handleCollisions(F)V
    .locals 21

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->r:Lcom/prineside/tdi2/Tower;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->r:Lcom/prineside/tdi2/Tower;

    :cond_0
    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->r:Lcom/prineside/tdi2/Tower;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->LASER:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->r:Lcom/prineside/tdi2/Tower;

    move-object v1, v0

    check-cast v1, Lcom/prineside/tdi2/towers/LaserTower;

    :cond_1
    move-object v9, v1

    const/4 v10, 0x0

    if-nez v9, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_ULTIMATE_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    move v11, v0

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez v9, :cond_3

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Lcom/prineside/tdi2/towers/LaserTower;->getUltDamageMultiplier()F

    move-result v1

    move v12, v1

    :goto_1
    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/AchievementSystem;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->DOUBLE_LASER_DAMAGE:Lcom/prineside/tdi2/enums/AchievementType;

    sub-float v0, v12, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->G:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget v15, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    iget v1, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    iget v2, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    iget v3, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x1

    move-object v14, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v13 .. v20}, Lcom/prineside/tdi2/systems/MapSystem;->rayCastEnemies(Lcom/badlogic/gdx/utils/Array;FFFFFZ)Z

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v13, 0x1

    if-lez v0, :cond_c

    iget v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->penetrationCount:I

    const/4 v14, 0x0

    move v15, v0

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_2
    sget-object v1, Lcom/prineside/tdi2/projectiles/LaserProjectile;->G:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v2, :cond_9

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v1, :cond_5

    move/from16 v17, v7

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->F:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getSquaredSize()F

    move-result v16

    cmpl-float v0, p1, v10

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v2, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->r:Lcom/prineside/tdi2/Tower;

    iget v3, v8, Lcom/prineside/tdi2/Projectile;->a:F

    mul-float v3, v3, v12

    mul-float v3, v3, p1

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->LASER:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v5, v8, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    const/4 v6, 0x1

    move/from16 v17, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v9, :cond_7

    iget-object v0, v9, Lcom/prineside/tdi2/towers/LaserTower;->ultDamageBonuses:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_3

    :cond_6
    move/from16 v17, v7

    :cond_7
    :goto_3
    add-int/lit8 v15, v15, -0x1

    move/from16 v0, v16

    if-nez v15, :cond_8

    const/4 v14, 0x1

    goto :goto_5

    :cond_8
    :goto_4
    add-int/lit8 v7, v17, 0x1

    goto :goto_2

    :cond_9
    :goto_5
    if-eqz v14, :cond_a

    sget-object v1, Lcom/prineside/tdi2/projectiles/LaserProjectile;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    iget v3, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/prineside/tdi2/projectiles/LaserProjectile;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    iget v4, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/prineside/tdi2/projectiles/LaserProjectile;->F:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/prineside/tdi2/projectiles/LaserProjectile;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/prineside/tdi2/utils/PMath;->getLineCircleIntersection(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    iget v0, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    iput-boolean v13, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->q:Z

    goto :goto_6

    :cond_a
    iget v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    iget v1, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    iput-boolean v13, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->q:Z

    :cond_b
    iput v1, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    iget v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    iput v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    goto :goto_6

    :cond_c
    iget v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    iget v1, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_d

    iget v1, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    iget v2, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_e

    :cond_d
    iput v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    iget v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    iput v0, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    iput-boolean v13, v8, Lcom/prineside/tdi2/projectiles/LaserProjectile;->q:Z

    :cond_e
    :goto_6
    sget-object v0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->G:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public hasReachedTarget()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->z:F

    iget v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->w:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->z:F

    iget v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->w:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Projectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Tower;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->r:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->penetrationCount:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->w:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->z:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->A:F

    return-void
.end method

.method public reset()V
    .locals 3

    invoke-super {p0}, Lcom/prineside/tdi2/Projectile;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->r:Lcom/prineside/tdi2/Tower;

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->z:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->A:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->w:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->penetrationCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->q:Z

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/shapes/MultiLine$MultiLineFactory;

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Shape$Factory;->free(Lcom/prineside/tdi2/Shape;)V

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->d:Lcom/prineside/tdi2/shapes/MultiLine;

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->k:Lcom/prineside/tdi2/shapes/MultiLine;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/shapes/MultiLine$MultiLineFactory;

    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->k:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Shape$Factory;->free(Lcom/prineside/tdi2/Shape;)V

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->k:Lcom/prineside/tdi2/shapes/MultiLine;

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/projectiles/LaserProjectile;->G:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_2
    return-void
.end method

.method public setEndPos(FF)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    iput p2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->q:Z

    return-void
.end method

.method public setStartPos(FF)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    iput p2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    iput p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->q:Z

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;FFFFFFI)V
    .locals 0

    invoke-super {p0}, Lcom/prineside/tdi2/Projectile;->setup()V

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->r:Lcom/prineside/tdi2/Tower;

    iput p3, p0, Lcom/prineside/tdi2/Projectile;->a:F

    iput p4, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    iput p5, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    iput p6, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    iput p7, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    iput p8, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->penetrationCount:I

    iput p2, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->w:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->q:Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->w:F

    iput v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->z:F

    return-void
.end method

.method public update(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/projectiles/LaserProjectile;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->z:F

    iget v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->A:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->A:F

    const p1, 0x3e2e147b    # 0.17f

    const/4 v1, 0x0

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/projectiles/LaserProjectile;->handleCollisions(F)V

    iput v1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->A:F

    :cond_2
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Projectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->r:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->s:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->t:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->u:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->v:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->penetrationCount:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->w:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->x:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->y:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->z:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/LaserProjectile;->A:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
