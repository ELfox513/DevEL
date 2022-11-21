.class Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->a(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->b(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;->score:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    if-ne v2, v3, :cond_0

    sget-object v3, Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;->waves:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    :cond_0
    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->show(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;)V

    return-void
.end method
