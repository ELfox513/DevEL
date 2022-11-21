.class public Lcom/prineside/tdi2/enemies/FastEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/FastEnemy$FastEnemyFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->FAST:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/FastEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/FastEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuffedSpeed()F
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    sget-object v2, Lcom/prineside/tdi2/enums/BuffType;->POISON:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v0, v0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    const/high16 v1, 0x3e800000    # 0.25f

    :cond_1
    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->getBuffedSpeed()F

    move-result v0

    mul-float v0, v0, v1

    return v0
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
