.class Lcom/prineside/tdi2/managers/LeaderBoardManager$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager$4;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/LeaderBoardManager$4;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$4;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4$2;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4$2;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$4;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;

    invoke-interface {v1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method
