.class public Lcom/prineside/tdi2/abilities/BulletWallAbility;
.super Lcom/prineside/tdi2/Ability;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/abilities/BulletWallAbility$BulletWallAbilityFactory;
    }
.end annotation


# static fields
.field public static final b:[I

.field public static final d:[[I

.field public static final k:Lcom/badlogic/gdx/math/Vector2;

.field public static final p:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/tdi2/abilities/BulletWallAbility;->b:[I

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/prineside/tdi2/abilities/BulletWallAbility;->d:[[I

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/abilities/BulletWallAbility;->k:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/abilities/BulletWallAbility;->p:Lcom/badlogic/gdx/math/Vector2;

    return-void

    nop

    :array_0
    .array-data 4
        0x64
        0x7d
        0x96
        0xaf
        0xfa
        0x12c
        0x190
        0x226
        0x2bc
        0x320
        0x352
    .end array-data

    :array_1
    .array-data 4
        0x5
        0xa
        0x19
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x5
        0xa
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0xa
        0x14
        0x28
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0x19
        0x32
        0x0
        0x64
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0x19
        0x50
        0x96
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->BULLET_WALL:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Ability;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/abilities/BulletWallAbility$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/abilities/BulletWallAbility;-><init>()V

    return-void
.end method

.method public static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/BulletWallAbility;->b:[I

    return-object v0
.end method

.method public static synthetic c()[[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/BulletWallAbility;->d:[[I

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    return-void
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public start(II)V
    .locals 10

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_BULLET_WALL_COINS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/prineside/tdi2/Ability;->a:F

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_BULLET_WALL_DENSITY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/EnemySystem;->getTowersMaxDps()D

    move-result-wide v0

    double-to-float p2, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_BULLET_WALL_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p2, p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    int-to-float v1, v1

    cmpg-float v1, v8, v1

    if-gez v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->BULLET_WALL:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/projectiles/BulletWallProjectile;

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    sget-object v3, Lcom/prineside/tdi2/abilities/BulletWallAbility;->k:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v2, 0x43000000    # 128.0f

    mul-float v4, v8, v2

    invoke-virtual {v3, v0, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/prineside/tdi2/abilities/BulletWallAbility;->p:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v6

    iget v6, v6, Lcom/prineside/tdi2/Map;->widthTiles:I

    int-to-float v6, v6

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v6, v9

    mul-float v6, v6, v2

    invoke-virtual {v5, v6, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/high16 v2, 0x40a00000    # 5.0f

    mul-int/lit8 v4, v7, 0xa

    int-to-float v4, v4

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v4, v4, v6

    add-float v6, v4, v2

    move v2, p2

    move-object v4, v5

    move v5, v6

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/projectiles/BulletWallProjectile;->setup(FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/prineside/tdi2/abilities/BulletWallAbility;)V

    add-int/lit8 v7, v7, 0x1

    div-float/2addr v9, p1

    add-float/2addr v8, v9

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 0

    return-void
.end method
