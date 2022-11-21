.class Lcom/prineside/tdi2/ui/components/StatisticsChart$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/StatisticsSystem$StatisticsSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/StatisticsChart;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/StatisticsChart;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/StatisticsChart;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$4;->b:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$4;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bestReplayLoadedFromServer()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$4;->b:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d(Lcom/prineside/tdi2/ui/components/StatisticsChart;Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;)Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$4;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$4;->b:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    sget-object v1, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->SCORE:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->setTabType(Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;)V

    :cond_0
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
