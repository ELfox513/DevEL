.class Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;
.super Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/LiveLeaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_GameStateSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;->a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Lcom/prineside/tdi2/ui/components/LiveLeaderboard$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)V

    return-void
.end method


# virtual methods
.method public scoreChanged(JZLcom/prineside/tdi2/enums/StatisticsType;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$_GameStateSystemListener;->a:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->r(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;)V

    return-void
.end method
