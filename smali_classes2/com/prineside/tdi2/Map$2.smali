.class Lcom/prineside/tdi2/Map$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/pfa/Heuristic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
        "Lcom/prineside/tdi2/PathNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public estimate(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;)F
    .locals 2

    iget v0, p2, Lcom/prineside/tdi2/PathNode;->x:I

    iget v1, p1, Lcom/prineside/tdi2/PathNode;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(I)I

    move-result v0

    iget p2, p2, Lcom/prineside/tdi2/PathNode;->y:I

    iget p1, p1, Lcom/prineside/tdi2/PathNode;->y:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/StrictMath;->abs(I)I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    return p1
.end method

.method public bridge synthetic estimate(Ljava/lang/Object;Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/PathNode;

    check-cast p2, Lcom/prineside/tdi2/PathNode;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/Map$2;->estimate(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;)F

    move-result p1

    return p1
.end method
