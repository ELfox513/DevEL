.class Lcom/prineside/tdi2/managers/LeaderBoardManager$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/LeaderBoardManager$2;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$2;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$2;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$2;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->c:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    invoke-static {v1, v0}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->g(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)V

    return-void
.end method
