.class Lcom/prineside/tdi2/Tower$1;
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
    .locals 1

    iget-object p1, p2, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    const v0, 0x460ca400    # 9001.0f

    if-nez p1, :cond_0

    const p1, 0x460ca400    # 9001.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Path;->getLengthInTiles()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    sub-float/2addr p1, p2

    :goto_0
    iget-object p2, p3, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/prineside/tdi2/Path;->getLengthInTiles()I

    move-result p2

    int-to-float p2, p2

    iget p3, p3, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    sub-float v0, p2, p3

    :goto_1
    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1
.end method
