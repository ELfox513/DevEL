.class public Lcom/prineside/tdi2/managers/RatingManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/RatingManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/RatingManager$Serializer;
    }
.end annotation


# instance fields
.field public madeReview:Z

.field public showPromptAfterTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/RatingManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/RatingManager;->reload()V

    return-void
.end method


# virtual methods
.method public isMadeReview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/RatingManager;->madeReview:Z

    return v0
.end method

.method public madeReview(ILjava/lang/String;)V
    .locals 4

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/prineside/tdi2/managers/RatingManager;->madeReview:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v1, "ratingMadeReview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "stars"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "made_review"

    invoke-interface {v0, p1, v1}, Lcom/prineside/tdi2/ActionResolver;->logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public promptAnsweredLater()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/prineside/tdi2/managers/RatingManager;->showPromptAfterTime:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    iget v1, p0, Lcom/prineside/tdi2/managers/RatingManager;->showPromptAfterTime:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ratingPromptAfter"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void
.end method

.method public promptAnsweredNever()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v0

    double-to-int v0, v0

    const v1, 0xed4e00

    add-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/managers/RatingManager;->showPromptAfterTime:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    iget v1, p0, Lcom/prineside/tdi2/managers/RatingManager;->showPromptAfterTime:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ratingPromptAfter"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void
.end method

.method public final reload()V
    .locals 5

    const-string v0, "ratingMadeReview"

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v1

    :try_start_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v3, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->contains(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "false"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v2, v0, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/prineside/tdi2/managers/RatingManager;->madeReview:Z

    :cond_0
    invoke-virtual {v1, v0, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/RatingManager;->madeReview:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/RatingManager;->madeReview:Z

    :goto_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/RatingManager;->madeReview:Z

    if-nez v0, :cond_1

    :try_start_2
    const-string v0, "ratingPromptAfter"

    const-string v2, "3600"

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/managers/RatingManager;->showPromptAfterTime:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const/16 v0, 0xe10

    iput v0, p0, Lcom/prineside/tdi2/managers/RatingManager;->showPromptAfterTime:I

    :cond_1
    :goto_1
    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    new-instance v1, Lcom/prineside/tdi2/managers/RatingManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/RatingManager$1;-><init>(Lcom/prineside/tdi2/managers/RatingManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ScreenManager;->addListener(Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/RatingManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/RatingManager$2;-><init>(Lcom/prineside/tdi2/managers/RatingManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/RatingManager;->reload()V

    return-void
.end method

.method public shouldWeAskForReview()Z
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    double-to-int v0, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v3

    double-to-int v0, v3

    const v3, 0x3b53800

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/RatingManager;->madeReview:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v3

    const-wide v5, 0x409c200000000000L    # 1800.0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Lcom/prineside/tdi2/managers/RatingManager;->showPromptAfterTime:I

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v3

    double-to-int v1, v3

    sub-int/2addr v0, v1

    const v1, 0x278d00

    if-le v0, v1, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    return v2
.end method
