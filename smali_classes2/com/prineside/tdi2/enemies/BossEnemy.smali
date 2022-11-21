.class public Lcom/prineside/tdi2/enemies/BossEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/BossEnemy$BossEnemyFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/BossEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/BossEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseDamage()F
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    return v0
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
