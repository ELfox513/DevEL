.class Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1$1;
.super Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1$1;->a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1$1;->a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3;->b:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->p(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)V

    return-void
.end method

.method public offscreenStartingToChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1$1;->a()V

    return-void
.end method

.method public visibilityChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$3$1$1;->a()V

    return-void
.end method
