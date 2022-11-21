.class Lcom/prineside/tdi2/Tower$5;
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

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
