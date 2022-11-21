.class public Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy$ConstructorBossBodyEnemyFactory;
    }
.end annotation


# static fields
.field public static final v:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;"
        }
    .end annotation
.end field

.field public groupSpawned25hp:Z

.field public groupSpawned50hp:Z

.field public groupSpawned75hp:Z

.field public invulnerable:Z

.field public processor:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

.field public spawnDelayAfterTime:F

.field public spawnDelayBeforeTime:F

.field public spawningTime:F

.field public timeSinceCreepSpawn:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->v:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public changeSpeedTo(FF)V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getSpeed()F

    move-result v0

    sub-float v0, p1, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p2, p2, v1

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(F)F

    move-result v1

    cmpg-float v2, p2, v1

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getSpeed()F

    move-result p1

    div-float/2addr p2, v1

    mul-float v0, v0, p2

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->isInvulnerable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->v:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy$ConstructorBossBodyEnemyFactory;

    iget-object v2, v0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy$ConstructorBossBodyEnemyFactory;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x42c00000    # 96.0f

    sub-float v4, v1, v3

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v3

    const/high16 v5, 0x43400000    # 192.0f

    const/high16 v6, 0x43400000    # 192.0f

    move-object v1, p1

    move v3, v4

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method public dynamicPathfindingAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;)F
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->BALL_LIGHTNING:Lcom/prineside/tdi2/enums/AbilityType;

    if-ne p1, v0, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getBaseDamage()F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    return v0
.end method

.method public getSize()F
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->isInvulnerable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42c00000    # 96.0f

    return v0

    :cond_0
    const/high16 v0, 0x42800000    # 64.0f

    return v0
.end method

.method public getSquaredSize()F
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->isInvulnerable()Z

    const/high16 v0, 0x45800000    # 4096.0f

    return v0
.end method

.method public giveDamage(Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;)F
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->isInvulnerable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned25hp:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->processor:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    if-eqz v0, :cond_6

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    :goto_0
    invoke-virtual {p0, v0, p3}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result v0

    mul-float p2, p2, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned75hp:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v1

    iget v2, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    const v3, 0x3f3d70a4    # 0.74f

    :goto_1
    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    goto :goto_2

    :cond_2
    iget-boolean v2, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned50hp:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v1

    iget v2, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    const v3, 0x3efae148    # 0.49f

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned25hp:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v1

    iget v2, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    const v3, 0x3e75c28f    # 0.24f

    goto :goto_1

    :cond_4
    :goto_2
    cmpl-float v2, p2, v1

    if-lez v2, :cond_5

    move p2, v1

    :cond_5
    div-float/2addr p2, v0

    invoke-super {p0, p1, p2, p3}, Lcom/prineside/tdi2/Enemy;->giveDamage(Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    return p1

    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/prineside/tdi2/Enemy;->giveDamage(Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    return p1
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInvulnerable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->invulnerable:Z

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawningTime:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->timeSinceCreepSpawn:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayBeforeTime:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayAfterTime:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned75hp:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned50hp:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned25hp:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->invulnerable:Z

    const-class v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->processor:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawningTime:F

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->timeSinceCreepSpawn:F

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayBeforeTime:F

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayAfterTime:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned75hp:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned50hp:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned25hp:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->invulnerable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->processor:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawningTime:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->timeSinceCreepSpawn:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayBeforeTime:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayAfterTime:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned75hp:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned50hp:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned25hp:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->invulnerable:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->processor:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    const-class v1, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
