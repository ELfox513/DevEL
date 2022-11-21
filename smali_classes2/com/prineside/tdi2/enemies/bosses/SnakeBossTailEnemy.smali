.class public Lcom/prineside/tdi2/enemies/bosses/SnakeBossTailEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/bosses/SnakeBossTailEnemy$SnakeBossTailEnemyFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_TAIL:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/bosses/SnakeBossTailEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/bosses/SnakeBossTailEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-static {v1}, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->calculateSwingRotation(F)F

    move-result v1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->angle:F

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

    const/high16 v0, 0x41200000    # 10.0f

    return v0
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPositionSetToPath()V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->transformPositionToSwing(FFLcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Enemy;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method
