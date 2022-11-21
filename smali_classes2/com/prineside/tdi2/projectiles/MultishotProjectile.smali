.class public Lcom/prineside/tdi2/projectiles/MultishotProjectile;
.super Lcom/prineside/tdi2/CollidingProjectile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/projectiles/MultishotProjectile$MultishotProjectileFactory;
    }
.end annotation


# static fields
.field public static final D:Lcom/badlogic/gdx/graphics/Color;

.field public static final E:Lcom/badlogic/gdx/graphics/Color;

.field public static final F:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public flyingBack:Z

.field public v:Lcom/prineside/tdi2/shapes/TrailMultiLine;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public w:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public x:Lcom/prineside/tdi2/Tower;

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->D:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->E:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->F:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->MULTISHOT:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/CollidingProjectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/projectiles/MultishotProjectile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/projectiles/MultishotProjectile;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/prineside/tdi2/Enemy;)V
    .locals 10

    iget-boolean v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->A:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->isAir()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/Projectile;->a:F

    iget-boolean v1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->B:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getBuffedSpeed()F

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MULTISHOT_A_COUNTER_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MULTISHOT_A_COUNTER_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_1
    move v4, v0

    sget-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->PIERCING:Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->isVulnerableToSpecial(Lcom/prineside/tdi2/enums/SpecialDamageType;)Z

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_2

    iput-boolean v9, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->y:Z

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->x:Lcom/prineside/tdi2/Tower;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v3, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->x:Lcom/prineside/tdi2/Tower;

    sget-object v5, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v6, p0, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    :cond_3
    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->z:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->C:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/prineside/tdi2/Projectile;->a:F

    float-to-double v0, p1

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MULTISHOT_A_PENETRATING_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    iput p1, p0, Lcom/prineside/tdi2/Projectile;->a:F

    iput-boolean v9, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->C:Z

    goto :goto_1

    :cond_5
    :goto_0
    iput-boolean v9, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->y:Z

    :goto_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->v:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->w:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->F:Lcom/badlogic/gdx/math/Vector2;

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

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->v:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, p2, v2, v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->updateStartPos(FFF)V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/CollidingProjectile;->d()F

    move-result p2

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    sget-object p2, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->D:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/prineside/tdi2/CollidingProjectile;->d()F

    move-result v1

    div-float/2addr v1, v0

    iput v1, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->MULTISHOT:Lcom/prineside/tdi2/projectiles/MultishotProjectile$MultishotProjectileFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/projectiles/MultishotProjectile$MultishotProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x40900000    # 4.5f

    sub-float v2, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v0, 0x41400000    # 12.0f

    sub-float v3, p2, v0

    const/high16 v4, 0x40900000    # 4.5f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawAngle:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->y:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/prineside/tdi2/CollidingProjectile;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/CollidingProjectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Tower;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->x:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->y:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->z:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->A:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->B:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->C:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->flyingBack:Z

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/CollidingProjectile;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->flyingBack:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->C:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->y:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->z:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->A:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->B:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->x:Lcom/prineside/tdi2/Tower;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->v:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZZZ)V
    .locals 0

    invoke-super {p0, p3, p5, p4}, Lcom/prineside/tdi2/CollidingProjectile;->g(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)V

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->x:Lcom/prineside/tdi2/Tower;

    iput p2, p0, Lcom/prineside/tdi2/Projectile;->a:F

    iput-boolean p6, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->z:Z

    iput-boolean p7, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->A:Z

    iput-boolean p8, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->B:Z

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

    const/4 p1, 0x3

    const p2, 0x3e6147ae    # 0.22f

    const/high16 p4, 0x41c00000    # 24.0f

    sget-object p5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p5, p5, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object p5, p5, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object p5, p5, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;

    invoke-virtual {p5}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object p5

    check-cast p5, Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iput-object p5, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->v:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->MULTISHOT:Lcom/prineside/tdi2/projectiles/MultishotProjectile$MultishotProjectileFactory;

    iget-object p6, p6, Lcom/prineside/tdi2/projectiles/MultishotProjectile$MultishotProjectileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p5, p6}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object p5, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->v:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object p6, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->E:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p5, p6, p1, p2, p4}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setup(Lcom/badlogic/gdx/graphics/Color;IFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->v:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget p2, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setStartPoint(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->v:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    iget-object p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->v:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->w:I

    :cond_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/CollidingProjectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->x:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->y:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->z:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->A:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->B:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->C:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->flyingBack:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
