.class Lcom/prineside/tdi2/ui/components/StatisticsChart$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
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
.field public final synthetic o:Lcom/prineside/tdi2/ui/components/StatisticsChart;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/StatisticsChart;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$1;->o:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$1;->o:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$1;->o:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->b(Lcom/prineside/tdi2/ui/components/StatisticsChart;Z)Z

    return-void
.end method
