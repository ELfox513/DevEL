.class Lcom/prineside/tdi2/managers/RatingManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/RatingManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/RatingManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/RatingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/RatingManager$1;->a:Lcom/prineside/tdi2/managers/RatingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public screenChanged()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/RatingManager$1;->a:Lcom/prineside/tdi2/managers/RatingManager;

    iget-boolean v0, v0, Lcom/prineside/tdi2/managers/RatingManager;->madeReview:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v0

    instance-of v0, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v0

    instance-of v0, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/RatingManager$1;->a:Lcom/prineside/tdi2/managers/RatingManager;

    iget v2, v2, Lcom/prineside/tdi2/managers/RatingManager;->showPromptAfterTime:I

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->ratingForm:Lcom/prineside/tdi2/ui/components/RatingForm;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/RatingForm;->showRatePrompt()V

    :cond_2
    return-void
.end method
