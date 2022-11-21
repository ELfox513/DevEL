.class Lcom/prineside/tdi2/ui/components/StatisticsChart$5;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/StatisticsChart;->setTabType(Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

.field public final synthetic p:Lcom/prineside/tdi2/ui/components/StatisticsChart;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/StatisticsChart;Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$5;->p:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$5;->o:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$5;->p:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$5;->o:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->setTabType(Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;)V

    return-void
.end method
