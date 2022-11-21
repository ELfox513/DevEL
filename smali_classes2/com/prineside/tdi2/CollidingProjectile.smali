.class public abstract Lcom/prineside/tdi2/CollidingProjectile;
.super Lcom/prineside/tdi2/Projectile;
.source "SourceFile"


# static fields
.field public static final t:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public d:F

.field public drawAngle:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public drawPosition:Lcom/badlogic/gdx/math/Vector2;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public flyTime:F

.field public k:Lcom/badlogic/gdx/math/Vector2;

.field public p:F

.field public q:Lcom/badlogic/gdx/math/Vector2;

.field public r:F

.field public s:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public totalFlyTime:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Tile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/CollidingProjectile;->t:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/CollidingProjectile;->u:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/ProjectileType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/Projectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->flyTime:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->d:F

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->q:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/CollidingProjectile;Lcom/prineside/tdi2/utils/FloatSorter;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/CollidingProjectile;->f(Lcom/prineside/tdi2/utils/FloatSorter;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z

    move-result p0

    return p0
.end method

.method private synthetic f(Lcom/prineside/tdi2/utils/FloatSorter;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->q:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p2, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const v1, 0x45954c99

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v1, p2, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->size:F

    mul-float v1, v1, v1

    iget v2, p0, Lcom/prineside/tdi2/CollidingProjectile;->d:F

    mul-float v1, v1, v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/prineside/tdi2/CollidingProjectile;->q:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p2, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2, v3, v4, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/CollidingProjectile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v2, p2, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->enemyReference:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->enemyReference:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, v1, v0}, Lcom/prineside/tdi2/utils/FloatSorter;->add(Ljava/lang/Object;F)V

    iget-object p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->enemyReference:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public applyDrawInterpolation(F)V
    .locals 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/CollidingProjectile;->c()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawAngle:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/prineside/tdi2/CollidingProjectile;->p:F

    mul-float v3, v3, v4

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v4

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/CollidingProjectile;->c()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawAngle:F

    :goto_0
    return-void
.end method

.method public abstract b(Lcom/prineside/tdi2/Enemy;)V
.end method

.method public c()F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->angleDeg()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public d()F
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->totalFlyTime:F

    iget v1, p0, Lcom/prineside/tdi2/CollidingProjectile;->flyTime:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final e(F)Z
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/prineside/tdi2/CollidingProjectile;->p:F

    mul-float v3, v3, v4

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v4

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p1, p1, v4

    iget v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->r:F

    const/4 p1, 0x0

    const/high16 v1, 0x42000000    # 32.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->r:F

    invoke-static {}, Lcom/prineside/tdi2/utils/FloatSorter;->getInstance()Lcom/prineside/tdi2/utils/FloatSorter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/FloatSorter;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/CollidingProjectile;->q:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v4, p0, Lcom/prineside/tdi2/CollidingProjectile;->d:F

    new-instance v5, Lcom/prineside/tdi2/m1;

    invoke-direct {v5, p0, v0}, Lcom/prineside/tdi2/m1;-><init>(Lcom/prineside/tdi2/CollidingProjectile;Lcom/prineside/tdi2/utils/FloatSorter;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/prineside/tdi2/systems/MapSystem;->getEnemiesAABB(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/prineside/tdi2/utils/ObjectFilter;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/FloatSorter;->sort()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/CollidingProjectile;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/utils/FloatSorter$Entity;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/prineside/tdi2/utils/FloatSorter$Entity;->object:Ljava/lang/Object;

    check-cast v3, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/CollidingProjectile;->b(Lcom/prineside/tdi2/Enemy;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/FloatSorter;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->q:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    return p1
.end method

.method public flyOnEnemy(Lcom/prineside/tdi2/Enemy;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public g(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    div-float/2addr v0, p2

    const/high16 v1, 0x43000000    # 128.0f

    div-float/2addr v0, v1

    sget-object v1, Lcom/prineside/tdi2/CollidingProjectile;->u:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, v1, v0}, Lcom/prineside/tdi2/CollidingProjectile;->h(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    return-void
.end method

.method public h(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->r:F

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    const/high16 v1, 0x43000000    # 128.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->p:F

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    iput p3, p0, Lcom/prineside/tdi2/CollidingProjectile;->totalFlyTime:F

    iget-object p2, p0, Lcom/prineside/tdi2/CollidingProjectile;->q:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public hasReachedTarget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->flyTime:F

    iget v1, p0, Lcom/prineside/tdi2/CollidingProjectile;->totalFlyTime:F

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
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Projectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->flyTime:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->totalFlyTime:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->d:F

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->p:F

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->q:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->r:F

    const-class v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectSet;

    iput-object p1, p0, Lcom/prineside/tdi2/CollidingProjectile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->r:F

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->flyTime:F

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->totalFlyTime:F

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawAngle:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->d:F

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->q:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/Projectile;->reset()V

    return-void
.end method

.method public update(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/CollidingProjectile;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->flyTime:F

    add-float v1, v0, p1

    iget v2, p0, Lcom/prineside/tdi2/CollidingProjectile;->totalFlyTime:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    sub-float p1, v2, v0

    iput v2, p0, Lcom/prineside/tdi2/CollidingProjectile;->flyTime:F

    const/high16 v0, 0x42800000    # 64.0f

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->r:F

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/CollidingProjectile;->e(F)Z

    goto :goto_1

    :cond_1
    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->flyTime:F

    iget v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->p:F

    mul-float v0, v0, p1

    const v1, 0x428a3d71    # 69.12f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/CollidingProjectile;->e(F)Z

    goto :goto_1

    :cond_2
    int-to-float v1, v0

    div-float/2addr p1, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/CollidingProjectile;->e(F)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Projectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->flyTime:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->totalFlyTime:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->d:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->p:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->q:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->r:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/CollidingProjectile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
