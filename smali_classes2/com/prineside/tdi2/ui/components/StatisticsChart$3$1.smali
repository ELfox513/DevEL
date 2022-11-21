.class Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/StatisticsChart$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/ui/components/StatisticsChart$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/StatisticsChart$3;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;->q:Lcom/prineside/tdi2/ui/components/StatisticsChart$3;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;->q:Lcom/prineside/tdi2/ui/components/StatisticsChart$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->c:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->c(Lcom/prineside/tdi2/ui/components/StatisticsChart;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;->q:Lcom/prineside/tdi2/ui/components/StatisticsChart$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->b:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->isOffscreen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;->q:Lcom/prineside/tdi2/ui/components/StatisticsChart$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->b:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;->q:Lcom/prineside/tdi2/ui/components/StatisticsChart$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->c:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;->q:Lcom/prineside/tdi2/ui/components/StatisticsChart$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->c:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;->q:Lcom/prineside/tdi2/ui/components/StatisticsChart$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->c:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->b(Lcom/prineside/tdi2/ui/components/StatisticsChart;Z)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;->q:Lcom/prineside/tdi2/ui/components/StatisticsChart$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->c:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->a(Lcom/prineside/tdi2/ui/components/StatisticsChart;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3$1;->q:Lcom/prineside/tdi2/ui/components/StatisticsChart$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;->c:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->setVisible(Z)V

    :cond_2
    :goto_1
    return-void
.end method
