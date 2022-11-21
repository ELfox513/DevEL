.class public Lcom/prineside/tdi2/enemies/HeliEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/HeliEnemy$HeliEnemyFactory;
    }
.end annotation


# instance fields
.field public v:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->HELI:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/HeliEnemy;->v:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/HeliEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/HeliEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/enemies/HeliEnemy;->v:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/prineside/tdi2/enemies/HeliEnemy;->v:F

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    const/high16 v2, 0x3f000000    # 0.5f

    rem-float/2addr v0, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v0, v0, v2

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

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

    iput v0, p0, Lcom/prineside/tdi2/enemies/HeliEnemy;->v:F

    return-void
.end method
