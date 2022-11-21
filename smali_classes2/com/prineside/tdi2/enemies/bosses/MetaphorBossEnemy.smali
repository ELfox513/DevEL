.class public Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;,
        Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;
    }
.end annotation


# static fields
.field public static final y:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public creepCount:I

.field public v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public w:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/enemies/bosses/a;

    invoke-direct {v0}, Lcom/prineside/tdi2/enemies/bosses/a;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->y:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->creepCount:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->reset()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->d(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;)I
    .locals 0

    iget p1, p1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->p:F

    iget p0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->p:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v0, 0x0

    const/high16 v1, 0x424c0000    # 51.0f

    const/high16 v2, -0x3dc80000    # -46.0f

    invoke-static {v0, v0, v1, v2}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result v1

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PMath;->normalizeAngle(F)F

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(F)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/high16 v1, 0x420c0000    # 35.0f

    const/high16 v2, -0x3d800000    # -64.0f

    invoke-static {v0, v0, v1, v2}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/prineside/tdi2/utils/PMath;->normalizeAngle(F)F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(F)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 11

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    iput-object v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    new-array v0, v0, [Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->w:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    new-instance v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    const/4 v4, 0x0

    const/high16 v5, -0x3ee00000    # -10.0f

    const/high16 v6, 0x41600000    # 14.0f

    const/high16 v7, 0x41c80000    # 25.0f

    const/high16 v8, 0x42960000    # 75.0f

    const v9, 0x3f99999a    # 1.2f

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;-><init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;IFFFFF)V

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    new-instance v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    const/4 v5, 0x1

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x41600000    # 14.0f

    const v8, 0x43a78000    # 335.0f

    const v9, 0x438e8000    # 285.0f

    const v10, 0x3f99999a    # 1.2f

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;-><init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;IFFFFF)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    new-instance v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    const/4 v5, 0x0

    const/high16 v6, -0x3ef00000    # -9.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x427c0000    # 63.0f

    const/high16 v9, 0x42e20000    # 113.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;-><init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;IFFFFF)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    new-instance v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    const/4 v5, 0x1

    const/high16 v6, 0x41100000    # 9.0f

    const v8, 0x43948000    # 297.0f

    const/high16 v9, 0x43770000    # 247.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;-><init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;IFFFFF)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    new-instance v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    const/4 v5, 0x0

    const/high16 v6, -0x3ed00000    # -11.0f

    const/high16 v7, -0x3f400000    # -6.0f

    const/high16 v8, 0x42ca0000    # 101.0f

    const/high16 v9, 0x43010000    # 129.0f

    const v10, 0x3f59999a    # 0.85f

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;-><init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;IFFFFF)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    new-instance v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    const/4 v5, 0x1

    const/high16 v6, 0x41300000    # 11.0f

    const v8, 0x43818000    # 259.0f

    const/high16 v9, 0x43670000    # 231.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;-><init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;IFFFFF)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    new-instance v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    const/4 v5, 0x0

    const/high16 v6, -0x3f000000    # -8.0f

    const/high16 v7, -0x3ea00000    # -14.0f

    const/high16 v8, 0x43050000    # 133.0f

    const/high16 v9, 0x43270000    # 167.0f

    const v10, 0x3f333333    # 0.7f

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;-><init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;IFFFFF)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    new-instance v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    const/4 v5, 0x1

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v8, 0x43630000    # 227.0f

    const/high16 v9, 0x43410000    # 193.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;-><init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;IFFFFF)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    iget-object v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->w:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    array-length v3, v1

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public canHaveRandomSideShift()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/badlogic/gdx/graphics/Color;)V
    .locals 11

    iget-object p3, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-nez p3, :cond_0

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->METAPHOR_BOSS:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;

    iget-object p3, p3, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;->u:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object p3, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->start()V

    :cond_0
    iget-object p3, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p3, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p3, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :cond_1
    iget-object p3, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->c()V

    :cond_2
    iget-object p3, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p3, v2

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v4

    mul-float v4, v4, p2

    iget-object v5, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    invoke-virtual {v3, v4, v6, v5, v7}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->h(FFFF)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    aget-object p3, p2, v1

    iget p3, p3, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->q:F

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_5

    const/4 p3, 0x1

    aget-object p3, p2, p3

    iget p3, p3, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->q:F

    cmpl-float p3, p3, v0

    if-lez p3, :cond_5

    const/4 p3, 0x2

    invoke-static {p3}, Lcom/prineside/tdi2/utils/FastRandom;->getInt(I)I

    move-result p3

    aget-object p2, p2, p3

    iget-object p3, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    invoke-static {p2, v0, p3, v2}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->a(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;FFF)V

    :cond_5
    iget-object p2, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->w:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    sget-object p3, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->y:Ljava/util/Comparator;

    invoke-static {p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object p2, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->w:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    array-length p3, p2

    :goto_2
    if-ge v1, p3, :cond_7

    aget-object v2, p2, v1

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    iget v7, p0, Lcom/prineside/tdi2/Enemy;->drawScale:F

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;->b(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget p2, p0, Lcom/prineside/tdi2/Enemy;->drawScale:F

    iget p3, p0, Lcom/prineside/tdi2/Enemy;->existsTime:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p3, p3, v0

    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result p3

    const v0, 0x3d4ccccd    # 0.05f

    mul-float p3, p3, v0

    add-float/2addr p2, p3

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->METAPHOR_BOSS:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;

    iget-object p3, p3, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result p3

    int-to-float p3, p3

    const v0, 0x3fe66666    # 1.8f

    mul-float p3, p3, v0

    mul-float v7, p3, p2

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->METAPHOR_BOSS:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v5, v7, v0

    sub-float v2, p3, v5

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v3, p2, v5

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    move-object v0, p1

    move v4, v5

    move v6, v7

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

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

.method public getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->creepCount:I

    int-to-float v0, v0

    const v1, 0x3ca3d70a    # 0.02f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    mul-float p1, p1, v1

    return p1
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->creepCount:I

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->creepCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->v:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->w:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$LegConfig;

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->creepCount:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return-void
.end method
