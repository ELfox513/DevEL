.class Lcom/prineside/tdi2/screens/StatisticsScreen$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/StatisticsScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/StatisticsScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/StatisticsScreen$3;->a:Lcom/prineside/tdi2/screens/StatisticsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/StatisticsScreen$3;->a:Lcom/prineside/tdi2/screens/StatisticsScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/StatisticsScreen;->h(Lcom/prineside/tdi2/screens/StatisticsScreen;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/StatisticsScreen$3;->a:Lcom/prineside/tdi2/screens/StatisticsScreen;

    sget-object v1, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->BY_GAME:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/StatisticsScreen;->e(Lcom/prineside/tdi2/screens/StatisticsScreen;Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;)Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/StatisticsScreen$3;->a:Lcom/prineside/tdi2/screens/StatisticsScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/StatisticsScreen;->f(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    return-void
.end method
