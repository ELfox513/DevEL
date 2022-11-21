.class public Lcom/prineside/tdi2/Path$Connection;
.super Lcom/badlogic/gdx/ai/pfa/DefaultConnection;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/Path$Connection$Serializer;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Path$Connection$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/ai/pfa/DefaultConnection<",
        "Lcom/prineside/tdi2/PathNode;",
        ">;"
    }
.end annotation


# instance fields
.field public cost:F

.field public fromIdx:I

.field public isTeleport:Z

.field public map:Lcom/prineside/tdi2/Map;

.field public toIdx:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/Map;IIZF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/badlogic/gdx/ai/pfa/DefaultConnection;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/prineside/tdi2/Path$Connection;->map:Lcom/prineside/tdi2/Map;

    iput p2, p0, Lcom/prineside/tdi2/Path$Connection;->fromIdx:I

    iput p3, p0, Lcom/prineside/tdi2/Path$Connection;->toIdx:I

    iput-boolean p4, p0, Lcom/prineside/tdi2/Path$Connection;->isTeleport:Z

    iput p5, p0, Lcom/prineside/tdi2/Path$Connection;->cost:F

    return-void
.end method


# virtual methods
.method public getCost()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Path$Connection;->cost:F

    return v0
.end method

.method public getFromNode()Lcom/prineside/tdi2/PathNode;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Path$Connection;->map:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->pathfindingNodes:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/PathNode;

    iget v1, p0, Lcom/prineside/tdi2/Path$Connection;->fromIdx:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getFromNode()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path$Connection;->getFromNode()Lcom/prineside/tdi2/PathNode;

    move-result-object v0

    return-object v0
.end method

.method public getToNode()Lcom/prineside/tdi2/PathNode;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Path$Connection;->map:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->pathfindingNodes:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/PathNode;

    iget v1, p0, Lcom/prineside/tdi2/Path$Connection;->toIdx:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getToNode()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path$Connection;->getToNode()Lcom/prineside/tdi2/PathNode;

    move-result-object v0

    return-object v0
.end method
