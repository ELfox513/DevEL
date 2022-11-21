.class public abstract Lcom/prineside/tdi2/Enemy;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ScheduledUpdater$Updatable;
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Enemy$Factory;,
        Lcom/prineside/tdi2/Enemy$EnemyReference;
    }
.end annotation


# static fields
.field public static final HEALTH_BAR_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final SIZE:F = 25.6f

.field public static final UNREGISTERED_ID:I

.field public static final u:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public a:I

.field public angle:F

.field public b:F

.field public bounty:F

.field public buffBlizzardActive:Z

.field public buffFreezingLightningLengthBonus:F

.field public buffFreezingPercent:F

.field public buffFreezingPoisonDurationBonus:F

.field public buffRegenerationParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public buffSnowballActive:Z

.field public buffSnowballHits:I

.field public buffStunActive:Z

.field public buffStunCount:B

.field public buffStunCountByTower:Lcom/badlogic/gdx/utils/IntIntMap;

.field public buffStunImmunity:F

.field public buffThrowBackAffectedBy:Lcom/badlogic/gdx/utils/IntSet;

.field public buffsAppliedByType:[Z

.field public buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation runtime Lcom/prineside/tdi2/utils/EnumKeyArray;
        enumerator = Lcom/prineside/tdi2/enums/BuffType;
    .end annotation
.end field

.field public crusherTowerTarget:Z

.field public crusherTowerVulnerability:F

.field public d:Lcom/badlogic/gdx/math/Vector2;

.field public disabled:Z

.field public drawAngle:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public drawPosition:Lcom/badlogic/gdx/math/Vector2;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public drawScale:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public existsTime:F

.field public gaussMiningSpeedGiven:Z

.field public graphPath:Lcom/prineside/tdi2/Path;

.field public healthBarInvisible:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public healthBarScale:F

.field public id:I

.field public ignorePathfinding:Z

.field public ignoredByAutoWaveCall:Z

.field public k:F

.field public killScore:I

.field public loot:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public lowAimPriority:Z

.field public maxHealth:F

.field public p:F

.field public passedTiles:F

.field public pathSearches:I

.field public q:F

.field public r:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public s:Lcom/prineside/tdi2/Tile$Pos;

.field public setUpByEnemySystem:Z

.field public sideShiftIndex:I

.field public spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

.field public sumPassedTiles:F

.field public t:Lcom/badlogic/gdx/graphics/Color;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public type:Lcom/prineside/tdi2/enums/EnemyType;

.field public userData:Lcom/badlogic/gdx/utils/IntMap;

.field public visible:Z

.field public wasAimedAtWithChainReactionBuff:Z

.field public wasStunnedByGauss:Z

.field public wave:Lcom/prineside/tdi2/Wave;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/Enemy;->HEALTH_BAR_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    sput-object v0, Lcom/prineside/tdi2/Enemy;->u:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/EnemyType;)V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->b:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->killScore:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->disabled:Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/Enemy;->visible:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->lowAimPriority:Z

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy;->d:Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, Lcom/prineside/tdi2/Enemy;->k:F

    iput v3, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->p:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->bounty:F

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->q:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->r:F

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->healthBarScale:F

    iput v2, p0, Lcom/prineside/tdi2/Enemy;->id:I

    iput v2, p0, Lcom/prineside/tdi2/Enemy;->pathSearches:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    iput-byte v2, p0, Lcom/prineside/tdi2/Enemy;->buffStunCount:B

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->buffStunImmunity:F

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->crusherTowerVulnerability:F

    iput-object p1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->t:Lcom/badlogic/gdx/graphics/Color;

    if-nez v0, :cond_0

    const-class v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/prineside/tdi2/Enemy;->t:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/Enemy;->k:F

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->t:Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f74bc6a    # 0.956f

    const v3, -0x40d78d50    # -0.658f

    mul-float v3, v3, v0

    add-float/2addr v3, v2

    const v2, 0x3e8624dd    # 0.262f

    const v4, 0x3ed91687    # 0.424f

    mul-float v4, v4, v0

    add-float/2addr v4, v2

    const v2, 0x3e581062    # 0.211f

    const v5, 0x3dd0e560    # 0.102f

    mul-float v0, v0, v5

    add-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public addLoot(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->loot:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v2, v1, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Enemy;->loot:Lcom/badlogic/gdx/utils/Array;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->loot:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    sget-object v0, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    sget-object v0, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lcom/prineside/tdi2/ItemStack;->covered:Z

    return-object p1
.end method

.method public applyDrawInterpolation(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    iget-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->disabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    if-eqz v2, :cond_3

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Enemy;->getPassedTilesDelta(F)F

    move-result v2

    add-float/2addr v0, v2

    const v2, -0x41000150    # -0.49999f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    const v0, -0x41000022    # -0.499999f

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iget v4, p0, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    invoke-virtual {v3, v0, v4}, Lcom/prineside/tdi2/Path;->getPosition(FI)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iget v3, p0, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    invoke-virtual {v2, v0, v3}, Lcom/prineside/tdi2/Path;->getRotation(FI)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passedTiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", interpolatedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Enemy;->getPassedTilesDelta(F)F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Enemy"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/prineside/tdi2/Enemy;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :goto_0
    iget v0, p0, Lcom/prineside/tdi2/Enemy;->existsTime:F

    add-float v2, v0, p1

    cmpg-float v2, v2, v1

    if-gez v2, :cond_4

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    add-float/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Enemy;->drawScale:F

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/prineside/tdi2/Enemy;->drawScale:F

    :goto_1
    return-void
.end method

.method public canBeAttackedBy(Lcom/prineside/tdi2/Tower;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final canBeBuffed(Lcom/prineside/tdi2/enums/BuffType;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Enemy;->getBuffVulnerability(Lcom/prineside/tdi2/enums/BuffType;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canHaveRandomSideShift()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1, p2, v0}, Lcom/prineside/tdi2/Enemy;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/badlogic/gdx/graphics/Color;)V
    .locals 15

    move-object v0, p0

    sget-object v1, Lcom/prineside/tdi2/Enemy;->u:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v13, p1

    invoke-virtual {v13, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/EnemySystem;->isEmojiEnemies()Z

    move-result v1

    const/high16 v14, 0x3f000000    # 0.5f

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getEmojiTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/prineside/tdi2/Enemy;->drawScale:F

    mul-float v1, v1, v2

    iget-object v2, v0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v5, v1, v14

    sub-float/2addr v4, v5

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v5, v2, v5

    move-object/from16 v2, p1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/prineside/tdi2/Enemy;->loot:Lcom/badlogic/gdx/utils/Array;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHighlightTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/prineside/tdi2/Enemy;->drawScale:F

    mul-float v1, v1, v2

    iget-object v2, v0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v7, v1, v14

    sub-float/2addr v4, v7

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v5, v2, v7

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, v0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    move-object/from16 v2, p1

    move v6, v7

    move v8, v1

    move v9, v1

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    move v7, v1

    :goto_1
    iget-boolean v1, v0, Lcom/prineside/tdi2/Enemy;->buffBlizzardActive:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/prineside/tdi2/Enemy;->buffSnowballActive:Z

    if-eqz v1, :cond_3

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget v2, v0, Lcom/prineside/tdi2/Enemy;->id:I

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/EnemyManager;->getIceOverlayTexture(I)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    iget-object v1, v0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v14, v14, v7

    sub-float v4, v2, v14

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v5, v1, v14

    move-object/from16 v2, p1

    move v6, v7

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_3
    return-void
.end method

.method public drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->r:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Enemy;->u:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v3, v3, v0}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1, p2, v2}, Lcom/prineside/tdi2/Enemy;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/badlogic/gdx/graphics/Color;)V

    iget p1, p0, Lcom/prineside/tdi2/Enemy;->r:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p2, p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/prineside/tdi2/Enemy;->r:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->r:F

    :cond_0
    return-void
.end method

.method public drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 14

    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    iget-object v6, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v5, v6, v5

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    int-to-float v1, v4

    const/high16 v3, 0x41800000    # 16.0f

    mul-float v1, v1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v1, v4

    sub-float/2addr v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v4, v1

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v1, v2

    iget-object v6, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v7, :cond_4

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/BuffManager;->getFactory(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/Buff$Factory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Buff$Factory;->getHealthBarIcon()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v11

    invoke-virtual {v5}, Lcom/prineside/tdi2/Buff$Factory;->effectIsCumulative()Z

    move-result v5

    const/high16 v12, 0x42880000    # 68.0f

    if-eqz v5, :cond_2

    iget v5, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v5, v5, -0x1

    move v13, v5

    :goto_2
    if-ltz v13, :cond_3

    iget-object v5, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v5, v12

    int-to-float v6, v13

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float v6, v6, v7

    add-float v8, v5, v6

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41800000    # 16.0f

    move-object v5, p1

    move-object v6, v11

    move v7, v0

    invoke-virtual/range {v5 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v8, v5, v12

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41800000    # 16.0f

    move-object v5, p1

    move-object v6, v11

    move v7, v0

    invoke-virtual/range {v5 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_3
    add-float/2addr v0, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/prineside/tdi2/Enemy;->k:F

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr v0, v1

    sget-object v1, Lcom/prineside/tdi2/Enemy;->HEALTH_BAR_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x41e00000    # 28.0f

    iget v5, p0, Lcom/prineside/tdi2/Enemy;->healthBarScale:F

    mul-float v4, v4, v5

    sub-float v4, v2, v4

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v8, 0x42500000    # 52.0f

    mul-float v2, v5, v8

    add-float/2addr v1, v2

    const/high16 v2, 0x42600000    # 56.0f

    mul-float v6, v5, v2

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v7, v5, v2

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->t:Lcom/badlogic/gdx/graphics/Color;

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->a()V

    :cond_6
    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->t:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x41d00000    # 26.0f

    iget v5, p0, Lcom/prineside/tdi2/Enemy;->healthBarScale:F

    mul-float v4, v4, v5

    sub-float v4, v2, v4

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v2, 0x42580000    # 54.0f

    mul-float v2, v2, v5

    add-float/2addr v1, v2

    mul-float v0, v0, v8

    mul-float v0, v0, v5

    float-to-int v0, v0

    int-to-float v6, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float v7, v5, v0

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public dynamicPathfindingAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getBaseDamage()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getBreakParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/Enemy$Factory;->a(Lcom/prineside/tdi2/Enemy$Factory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    return-object v0
.end method

.method public getBuffVulnerability(Lcom/prineside/tdi2/enums/BuffType;)F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F
    .locals 9

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Enemy;->getTowerDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F

    move-result p1

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FREEZING_A_EVAPORATION_STACK:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v2

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FREEZING_A_EVAPORATION_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    iget v6, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_2

    iget-object v6, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/buffs/FreezingBuff;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/prineside/tdi2/buffs/FreezingBuff;->tower:Lcom/prineside/tdi2/Tower;

    if-eqz v6, :cond_1

    iget-object v7, v6, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v8, Lcom/prineside/tdi2/enums/TowerType;->FREEZING:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v7, v8, :cond_1

    invoke-virtual {v6, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-float v0, v5

    mul-float v3, v3, v0

    add-float/2addr v3, p2

    mul-float p1, p1, v3

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->ARMOR:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->BLIZZARD:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/BlizzardBuff;

    iget v0, v0, Lcom/prineside/tdi2/buffs/BlizzardBuff;->damageMultiplier:F

    mul-float p1, p1, v0

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    if-eqz v0, :cond_8

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_8

    :goto_3
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_7

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/prineside/tdi2/buffs/ThrowBackBuff;

    iget v2, v2, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->damageMultiplier:F

    cmpl-float v3, v2, p2

    if-lez v3, :cond_6

    move p2, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    mul-float p1, p1, p2

    :cond_8
    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_VULNERABILITY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float p2, v0

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_9

    const/4 p2, 0x0

    :cond_9
    mul-float p1, p1, p2

    return p1
.end method

.method public getBuffedSpeed()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->q:F

    return v0
.end method

.method public getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTile()Lcom/prineside/tdi2/Tile;
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->s:Lcom/prineside/tdi2/Tile$Pos;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->s:Lcom/prineside/tdi2/Tile$Pos;

    iget v2, v1, Lcom/prineside/tdi2/Tile$Pos;->x:I

    iget v1, v1, Lcom/prineside/tdi2/Tile$Pos;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    return-object v0
.end method

.method public getEmojiTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy$Factory;->getEmojiTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getHealth()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->k:F

    return v0
.end method

.method public getHighlightTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy$Factory;->getHighlightTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getHitParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/Enemy$Factory;->b(Lcom/prineside/tdi2/Enemy$Factory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    return-object v0
.end method

.method public getKillExp()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->b:F

    return v0
.end method

.method public getKillScore()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->killScore:I

    return v0
.end method

.method public getPassedTilesDelta(F)F
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getBuffedSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iget v2, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v3, p0, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/Path;->getSpeedMultiplier(FI)F

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iget v3, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    mul-float v4, v0, p1

    add-float/2addr v3, v4

    iget v5, p0, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    invoke-virtual {v2, v3, v5}, Lcom/prineside/tdi2/Path;->getSpeedMultiplier(FI)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, p1}, Ljava/lang/StrictMath;->min(FF)F

    move-result p1

    mul-float v4, v4, p1

    return v4

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get passed tiles delta, position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prineside/tdi2/Enemy;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prineside/tdi2/Enemy;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", passedTiles: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", deltaTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", speed: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    mul-float v0, v0, p1

    return v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->d:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    const v0, 0x41cccccd    # 25.6f

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->p:F

    return v0
.end method

.method public getSquaredSize()F
    .locals 1

    const v0, 0x4423d70b

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getTowerDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/TowerSystem;->towerEnemyDamageMultiplier:[[F

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getUserData(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->userData:Lcom/badlogic/gdx/utils/IntMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public giveDamage(Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    mul-float p2, p2, p1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result p2

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    iget p1, p0, Lcom/prineside/tdi2/Enemy;->r:F

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p1, p3

    iput p1, p0, Lcom/prineside/tdi2/Enemy;->r:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_2

    iput p3, p0, Lcom/prineside/tdi2/Enemy;->r:F

    :cond_2
    return p2
.end method

.method public hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract hasDrawPriority()Z
.end method

.method public initBuffsByTypeArray()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager;->enemyBuffArraysPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public isAir()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->flyingEnemy:[Z

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isVulnerableTo(Lcom/prineside/tdi2/enums/DamageType;)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyDamageVulnerability:[[Z

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-boolean p1, v0, p1

    return p1
.end method

.method public isVulnerableToSpecial(Lcom/prineside/tdi2/enums/SpecialDamageType;)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-boolean p1, v0, p1

    return p1
.end method

.method public onPositionSetToPath()V
    .locals 0

    return-void
.end method

.method public onPreDie()V
    .locals 0

    return-void
.end method

.method public onSpawned()V
    .locals 0

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->a:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->b:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->killScore:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->disabled:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->visible:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->lowAimPriority:Z

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/Enemy;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    const-class v0, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/EnemyType;

    iput-object v0, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->k:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->p:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->healthBarScale:F

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/Enemy;->loot:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->id:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    const-class v1, Lcom/prineside/tdi2/Tile$Pos;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Tile$Pos;

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy;->s:Lcom/prineside/tdi2/Tile$Pos;

    const-class v1, Lcom/prineside/tdi2/Path;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Path;

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->pathSearches:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/Enemy;->ignorePathfinding:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->sumPassedTiles:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->existsTime:F

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/IntMap;

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy;->userData:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, [Z

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy;->buffsAppliedByType:[Z

    const-class v1, Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/tiles/SpawnTile;

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    const-class v1, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Wave;

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/Enemy;->ignoredByAutoWaveCall:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->buffFreezingLightningLengthBonus:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->buffFreezingPoisonDurationBonus:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/Enemy;->buffBlizzardActive:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->buffSnowballHits:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->buffSnowballActive:Z

    const-class v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntSet;

    iput-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffThrowBackAffectedBy:Lcom/badlogic/gdx/utils/IntSet;

    const-class v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/IntIntMap;

    iput-object p1, p0, Lcom/prineside/tdi2/Enemy;->buffStunCountByTower:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/prineside/tdi2/Enemy;->buffStunCount:B

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Enemy;->buffStunImmunity:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/Enemy;->buffStunActive:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/Enemy;->wasStunnedByGauss:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/Enemy;->crusherTowerTarget:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Enemy;->crusherTowerVulnerability:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/Enemy;->gaussMiningSpeedGiven:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/Enemy;->wasAimedAtWithChainReactionBuff:Z

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->b:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->killScore:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->disabled:Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/Enemy;->visible:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->lowAimPriority:Z

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->drawScale:F

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->healthBarInvisible:Z

    iget-object v3, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, Lcom/prineside/tdi2/Enemy;->k:F

    iput v3, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->p:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->bounty:F

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->q:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->r:F

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->healthBarScale:F

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->loot:Lcom/badlogic/gdx/utils/Array;

    iput v2, p0, Lcom/prineside/tdi2/Enemy;->id:I

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->s:Lcom/prineside/tdi2/Tile$Pos;

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iput v2, p0, Lcom/prineside/tdi2/Enemy;->pathSearches:I

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->ignorePathfinding:Z

    iput v2, p0, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->sumPassedTiles:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->existsTime:F

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->userData:Lcom/badlogic/gdx/utils/IntMap;

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->buffsAppliedByType:[Z

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->buffRegenerationParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->buffFreezingLightningLengthBonus:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->buffFreezingPoisonDurationBonus:F

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->buffBlizzardActive:Z

    iput v2, p0, Lcom/prineside/tdi2/Enemy;->buffSnowballHits:I

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->buffSnowballActive:Z

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->buffThrowBackAffectedBy:Lcom/badlogic/gdx/utils/IntSet;

    iput-object v3, p0, Lcom/prineside/tdi2/Enemy;->buffStunCountByTower:Lcom/badlogic/gdx/utils/IntIntMap;

    iput-byte v2, p0, Lcom/prineside/tdi2/Enemy;->buffStunCount:B

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->buffStunImmunity:F

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->buffStunActive:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->wasStunnedByGauss:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->crusherTowerTarget:Z

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->crusherTowerVulnerability:F

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->gaussMiningSpeedGiven:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/Enemy;->wasAimedAtWithChainReactionBuff:Z

    return-void
.end method

.method public final scheduledUpdatableGetId()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->a:I

    return v0
.end method

.method public final scheduledUpdatableSetId(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/Enemy;->a:I

    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 0

    return-void
.end method

.method public setCurrentTile(Lcom/prineside/tdi2/Tile;)V
    .locals 2

    const-class v0, Lcom/prineside/tdi2/Tile$Pos;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/Enemy;->s:Lcom/prineside/tdi2/Tile$Pos;

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->s:Lcom/prineside/tdi2/Tile$Pos;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/Enemy;->s:Lcom/prineside/tdi2/Tile$Pos;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->s:Lcom/prineside/tdi2/Tile$Pos;

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/prineside/tdi2/Tile$Pos;

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    iput v0, v1, Lcom/prineside/tdi2/Tile$Pos;->x:I

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    iput p1, v1, Lcom/prineside/tdi2/Tile$Pos;->y:I

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy;->s:Lcom/prineside/tdi2/Tile$Pos;

    :cond_2
    :goto_0
    return-void
.end method

.method public setHealth(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/Enemy;->k:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HP is NaN, previously "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKillExp(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/Enemy;->b:F

    return-void
.end method

.method public setMaxHealth(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public setPositionToPath()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v2, p0, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/Path;->getRotation(FI)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v2, p0, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/Path;->getPosition(FI)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Enemy;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Enemy;->applyDrawInterpolation(F)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->onPositionSetToPath()V

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/Enemy;->p:F

    return-void
.end method

.method public setUnregistered()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/EnemyManager;->enemyBuffArraysPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->t:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_1

    const-class v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/Enemy;->t:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/prineside/tdi2/Enemy;->t:Lcom/badlogic/gdx/graphics/Color;

    :cond_1
    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public setUserData(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->userData:Lcom/badlogic/gdx/utils/IntMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Enemy;->userData:Lcom/badlogic/gdx/utils/IntMap;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->userData:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public update(F)V
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->existsTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->existsTime:F

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;

    iget v0, v0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->force:F

    neg-float v0, v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->buffBlizzardActive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->buffSnowballActive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->buffStunActive:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/Enemy;->p:F

    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, p0, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    const v1, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->q:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    const/high16 v2, 0x40800000    # 4.0f

    mul-float p1, p1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(F)F

    move-result v1

    cmpl-float v2, v1, p1

    if-lez v2, :cond_3

    div-float/2addr p1, v1

    mul-float v0, v0, p1

    :cond_3
    iget p1, p0, Lcom/prineside/tdi2/Enemy;->q:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/prineside/tdi2/Enemy;->q:F

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/Enemy;->buffRegenerationParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    :cond_5
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->a:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->b:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->killScore:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->disabled:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->visible:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->lowAimPriority:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    const-class v1, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->k:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->p:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->healthBarScale:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->loot:Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->id:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->s:Lcom/prineside/tdi2/Tile$Pos;

    const-class v2, Lcom/prineside/tdi2/Tile$Pos;

    invoke-virtual {p1, p2, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    const-class v2, Lcom/prineside/tdi2/Path;

    invoke-virtual {p1, p2, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->pathSearches:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->ignorePathfinding:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->sumPassedTiles:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->existsTime:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->userData:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffsAppliedByType:[Z

    const-class v2, [Z

    invoke-virtual {p1, p2, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    const-class v2, Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-virtual {p1, p2, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    const-class v2, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->ignoredByAutoWaveCall:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->buffFreezingLightningLengthBonus:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->buffFreezingPoisonDurationBonus:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->buffBlizzardActive:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->buffSnowballHits:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean v0, p0, Lcom/prineside/tdi2/Enemy;->buffSnowballActive:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffThrowBackAffectedBy:Lcom/badlogic/gdx/utils/IntSet;

    const-class v1, Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffStunCountByTower:Lcom/badlogic/gdx/utils/IntIntMap;

    const-class v1, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-byte p1, p0, Lcom/prineside/tdi2/Enemy;->buffStunCount:B

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    iget p1, p0, Lcom/prineside/tdi2/Enemy;->buffStunImmunity:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/Enemy;->buffStunActive:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/Enemy;->wasStunnedByGauss:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/Enemy;->crusherTowerTarget:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/Enemy;->crusherTowerVulnerability:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/Enemy;->gaussMiningSpeedGiven:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/Enemy;->wasAimedAtWithChainReactionBuff:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
