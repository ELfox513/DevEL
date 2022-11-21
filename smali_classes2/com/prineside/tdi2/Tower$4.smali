.class Lcom/prineside/tdi2/Tower$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Tower$AimStrategyEnemyComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Tower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Enemy;)Z
    .locals 0

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result p1

    invoke-virtual {p3}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
