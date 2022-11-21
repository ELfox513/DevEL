.class Lcom/prineside/tdi2/ui/components/StatisticsChart$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/StatisticsChart;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/StatisticsChart;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/StatisticsChart;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$2;->a:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$2;->a:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$2;->a:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->b(Lcom/prineside/tdi2/ui/components/StatisticsChart;Z)Z

    return-void
.end method
