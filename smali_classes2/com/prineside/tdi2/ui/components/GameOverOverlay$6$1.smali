.class Lcom/prineside/tdi2/ui/components/GameOverOverlay$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->retrieved(Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$6;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->k(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    return-void
.end method
