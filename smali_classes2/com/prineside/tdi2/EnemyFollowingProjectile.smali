.class public abstract Lcom/prineside/tdi2/EnemyFollowingProjectile;
.super Lcom/prineside/tdi2/Projectile;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAX_ROT_SPEED:F = 1800.0f

.field public static final DEFAULT_MAX_ROT_SPEED_DYNAMIC:F = 120.0f

.field public static final w:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public d:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public drawAngle:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public drawPosition:Lcom/badlogic/gdx/math/Vector2;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public k:Z

.field public maxRotationSpeed:F

.field public maxRotationSpeedDynamic:F

.field public p:Lcom/badlogic/gdx/math/Vector2;

.field public q:F

.field public r:F

.field public s:Lcom/badlogic/gdx/math/Vector2;

.field public speed:F

.field public start:Lcom/badlogic/gdx/math/Vector2;

.field public t:F

.field public u:F

.field public v:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->w:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/ProjectileType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/Projectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->start:Lcom/badlogic/gdx/math/Vector2;

    sget-object p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->p:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->s:Lcom/badlogic/gdx/math/Vector2;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->t:F

    iput p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->u:F

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeed:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 p1, 0x44960000    # 1200.0f

    goto :goto_0

    :cond_0
    mul-float p1, p1, v1

    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->v:F

    invoke-static {v1, v0}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/StrictMath;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->v:F

    invoke-static {v1}, Ljava/lang/StrictMath;->abs(F)F

    move-result v2

    div-float/2addr p1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    :cond_1
    return v0
.end method

.method public applyDrawInterpolation(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->v:F

    iput p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawAngle:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->a(F)F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawAngle:F

    sget-object v1, Lcom/prineside/tdi2/EnemyFollowingProjectile;->w:Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->speed:F

    mul-float v2, v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawAngle:F

    const/high16 v0, 0x42b40000    # 90.0f

    add-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :goto_0
    return-void
.end method

.method public final b(F)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->a(F)F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->speed:F

    mul-float p1, p1, v1

    sget-object v1, Lcom/prineside/tdi2/EnemyFollowingProjectile;->w:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->v:F

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->q:F

    const/high16 v3, 0x42000000    # 32.0f

    add-float v4, v1, v3

    add-float/2addr v1, v3

    mul-float v4, v4, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->t:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->t:F

    iget v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->u:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->u:F

    cmpl-float p1, v0, v3

    if-gtz p1, :cond_0

    mul-float v1, v1, v1

    cmpl-float p1, v1, v4

    if-lez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->s:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->r:F

    invoke-static {p1, v0, v1, v3}, Lcom/badlogic/gdx/math/Intersector;->intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->k:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->k:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/Projectile;->hit()V

    return p1

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->s:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iput v2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->t:F

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public flyOnEnemy(Lcom/prineside/tdi2/Enemy;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    return-void
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getTarget()Lcom/prineside/tdi2/Enemy;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    return-object v0
.end method

.method public hasReachedTarget()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->k:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->k:Z

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Projectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->start:Lcom/badlogic/gdx/math/Vector2;

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->speed:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeed:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeedDynamic:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->k:Z

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->r:F

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->s:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->t:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->u:F

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    iput-object p1, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->v:F

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Projectile;->reset()V

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->speed:F

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->q:F

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->r:F

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->t:F

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->u:F

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->v:F

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawAngle:F

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeed:F

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeedDynamic:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->k:Z

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->start:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->s:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public setTarget(Lcom/prineside/tdi2/Enemy;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-void
.end method

.method public setUnregistered()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public setup(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;F)V
    .locals 8

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    const/high16 v6, 0x44e10000    # 1800.0f

    const/high16 v7, 0x42f00000    # 120.0f

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->setup(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;FFFF)V

    return-void
.end method

.method public setup(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;FFFF)V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Projectile;->setup()V

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->start:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v0, 0x43000000    # 128.0f

    mul-float p4, p4, v0

    iput p4, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->speed:F

    iput p5, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeed:F

    iput p6, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeedDynamic:F

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result p4

    iput p4, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->q:F

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getSquaredSize()F

    move-result p4

    iput p4, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->r:F

    iget-object p4, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->k:Z

    iget-object p2, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->s:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->t:F

    iput p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->u:F

    iput p3, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->v:F

    return-void
.end method

.method public update(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->q:F

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getSquaredSize()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->r:F

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeed:F

    iget v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeedDynamic:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeed:F

    iget v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->speed:F

    mul-float v0, v0, p1

    const v1, 0x428a3d71    # 69.12f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->b(F)Z

    goto :goto_1

    :cond_1
    int-to-float v1, v0

    div-float/2addr p1, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->b(F)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Projectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->start:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->speed:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeed:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeedDynamic:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->k:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->r:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->s:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->t:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->u:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->v:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
