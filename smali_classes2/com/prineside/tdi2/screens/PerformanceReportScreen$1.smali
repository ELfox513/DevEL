.class Lcom/prineside/tdi2/screens/PerformanceReportScreen$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/PerformanceReportScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/PerformanceReportScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/PerformanceReportScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/PerformanceReportScreen$1;->a:Lcom/prineside/tdi2/screens/PerformanceReportScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->stop()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMainMenu()V

    return-void
.end method
