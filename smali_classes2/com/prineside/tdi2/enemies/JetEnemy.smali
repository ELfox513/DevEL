.class public Lcom/prineside/tdi2/enemies/JetEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/JetEnemy$JetEnemyFactory;
    }
.end annotation


# instance fields
.field public v:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public w:Lcom/badlogic/gdx/math/Vector2;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->JET:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/JetEnemy;->v:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/JetEnemy;->w:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/JetEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/JetEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/prineside/tdi2/enemies/JetEnemy;->v:F

    add-float v1, v1, p2

    iput v1, v0, Lcom/prineside/tdi2/enemies/JetEnemy;->v:F

    invoke-super/range {p0 .. p2}, Lcom/prineside/tdi2/Enemy;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget v1, v0, Lcom/prineside/tdi2/enemies/JetEnemy;->v:F

    const v2, 0x3e19999a    # 0.15f

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v1

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v3

    const v3, 0x3f4ccccd    # 0.8f

    add-float/2addr v1, v3

    iget v3, v0, Lcom/prineside/tdi2/enemies/JetEnemy;->v:F

    const/high16 v4, 0x3e800000    # 0.25f

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-static {v3}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v3

    const v3, 0x3f666666    # 0.9f

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/prineside/tdi2/enemies/JetEnemy;->w:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    const/high16 v5, 0x43340000    # 180.0f

    sub-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v3, v4, v5}, Lcom/prineside/tdi2/utils/PMath;->shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/enemies/JetEnemy;->w:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    const/high16 v6, 0x42b40000    # 90.0f

    add-float/2addr v4, v6

    mul-float v5, v5, v2

    invoke-static {v3, v4, v5}, Lcom/prineside/tdi2/utils/PMath;->shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->JET:Lcom/prineside/tdi2/enemies/JetEnemy$JetEnemyFactory;

    iget-object v8, v3, Lcom/prineside/tdi2/enemies/JetEnemy$JetEnemyFactory;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v3, v0, Lcom/prineside/tdi2/enemies/JetEnemy;->w:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v10, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v3, 0x42800000    # 64.0f

    mul-float v13, v1, v3

    const/high16 v1, 0x42000000    # 32.0f

    mul-float v14, v2, v1

    iget v1, v0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    sub-float v17, v1, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    return-void
.end method

.method public getBuffedSpeed()F
    .locals 3

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->getBuffedSpeed()F

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->buffsAppliedByType:[Z

    if-eqz v1, :cond_0

    sget-object v2, Lcom/prineside/tdi2/enums/BuffType;->BURN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    const v1, 0x3f266666    # 0.65f

    mul-float v0, v0, v1

    :cond_0
    return v0
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/JetEnemy;->v:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/JetEnemy;->w:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method
