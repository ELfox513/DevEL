.class public Lcom/badlogic/gdx/ai/steer/proximities/InfiniteProximity;
.super Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public findNeighbors(Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback<",
            "TT;>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/ai/steer/Steerable;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v2}, Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback;->reportNeighbor(Lcom/badlogic/gdx/ai/steer/Steerable;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
