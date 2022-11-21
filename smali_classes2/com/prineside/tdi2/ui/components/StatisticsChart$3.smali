.class Lcom/prineside/tdi2/ui/components/StatisticsChart$3;
.super Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/StatisticsChart;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/Timer$Task;

.field public final synthetic b:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic c:Lcom/prineside/tdi2/ui/components/StatisticsChart;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/StatisticsChart;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->c:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->b:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;-><init>()V

    new-instance p1, Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;-><init>(Lcom/prineside/tdi2/ui/components/StatisticsChart$3;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->a:Lcom/badlogic/gdx/utils/Timer$Task;

    return-void
.end method


# virtual methods
.method public offscreenStartingToChange()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->a:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->a:Lcom/badlogic/gdx/utils/Timer$Task;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_0
    return-void
.end method

.method public visibilityChanged()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->a:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->a:Lcom/badlogic/gdx/utils/Timer$Task;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_0
    return-void
.end method
