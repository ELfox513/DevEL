.class Lcom/prineside/tdi2/managers/LeaderBoardManager$5$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager$5;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/LeaderBoardManager$5;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$5;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5$3;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5$3;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$5;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5;->e:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5;->f:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    invoke-interface {v1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method
