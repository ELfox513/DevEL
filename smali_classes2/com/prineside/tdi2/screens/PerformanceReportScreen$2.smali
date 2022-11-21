.class Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;


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

    iput-object p1, p0, Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;->a:Lcom/prineside/tdi2/screens/PerformanceReportScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;->a:Lcom/prineside/tdi2/screens/PerformanceReportScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/PerformanceReportScreen;->c(Lcom/prineside/tdi2/screens/PerformanceReportScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;->a:Lcom/prineside/tdi2/screens/PerformanceReportScreen;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/screens/PerformanceReportScreen;->a(Lcom/prineside/tdi2/screens/PerformanceReportScreen;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;->a:Lcom/prineside/tdi2/screens/PerformanceReportScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/PerformanceReportScreen;->b(Lcom/prineside/tdi2/screens/PerformanceReportScreen;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/screens/h0;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/screens/h0;-><init>(Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finished(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/screens/g0;

    invoke-direct {v1, p0, p1, p2}, Lcom/prineside/tdi2/screens/g0;-><init>(Lcom/prineside/tdi2/screens/PerformanceReportScreen$2;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
