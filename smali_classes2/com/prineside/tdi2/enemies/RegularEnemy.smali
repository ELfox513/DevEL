.class public Lcom/prineside/tdi2/enemies/RegularEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/RegularEnemy$RegularEnemyFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/RegularEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/RegularEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public getTowerDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->getTowerDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F

    move-result p1

    return p1
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
