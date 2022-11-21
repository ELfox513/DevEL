.class public Lcom/prineside/tdi2/managers/StatisticsManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/StatisticsManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/StatisticsManager$Serializer;
    }
.end annotation


# instance fields
.field public final a:[D

.field public final b:[D

.field public d:Z

.field public k:Lcom/badlogic/gdx/LifecycleListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v1, v0

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->b:[D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->d:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/StatisticsManager;->reload()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/StatisticsManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/StatisticsManager;->reload()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/StatisticsManager;->save()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->k:Lcom/badlogic/gdx/LifecycleListener;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    return-void
.end method

.method public formatStatisticsValue(Lcom/prineside/tdi2/enums/StatisticsType;D)Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->PTEMWD:Lcom/prineside/tdi2/enums/StatisticsType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->WCST:Lcom/prineside/tdi2/enums/StatisticsType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p2, p3, p1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    double-to-int p1, p2

    invoke-static {p1}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getMaxOneGame(Lcom/prineside/tdi2/enums/StatisticsType;)D
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->b:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getStatisticsTitle(Lcom/prineside/tdi2/enums/StatisticsType;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statistics_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->d:Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-wide v2, v0, v1

    add-double/2addr v2, p2

    aput-wide v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v0, p1, Lcom/prineside/tdi2/managers/ProgressManager;->lootBoostTimeLeft:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, p2

    double-to-float p2, v2

    iput p2, p1, Lcom/prineside/tdi2/managers/ProgressManager;->lootBoostTimeLeft:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    iput v1, p1, Lcom/prineside/tdi2/managers/ProgressManager;->lootBoostTimeLeft:F

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->requireDelayedSave()V

    :cond_1
    return-void
.end method

.method public registerMaxOneGame(Lcom/prineside/tdi2/enums/StatisticsType;D)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->b:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-wide v1, v0, v1

    cmpg-double v0, v1, p2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->d:Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->b:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-wide p2, v0, p1

    :cond_0
    return-void
.end method

.method public registerValue(Lcom/prineside/tdi2/enums/StatisticsType;D)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->d:Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-wide p2, v0, p1

    return-void
.end method

.method public final reload()V
    .locals 18

    move-object/from16 v1, p0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_STATISTICS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v3, v3

    const-wide/16 v4, 0x0

    if-ge v0, v3, :cond_0

    iget-object v3, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    aput-wide v4, v3, v0

    iget-object v3, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->b:[D

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "allTime"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x417e133800000000L    # 3.1536E7

    const-string v9, "\'"

    const-string v10, "failed to parse json: "

    const-string v11, "StatisticsManager"

    if-eqz v6, :cond_3

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v13, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v0

    iget-object v14, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v16

    aput-wide v16, v14, v15

    sget-object v14, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    if-ne v0, v14, :cond_2

    iget-object v14, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget-wide v15, v14, v15

    cmpg-double v14, v15, v4

    if-ltz v14, :cond_1

    iget-object v14, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget-wide v15, v14, v15

    cmpl-double v14, v15, v7

    if-lez v14, :cond_2

    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reset PRT statistics - invalid value "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget-wide v7, v15, v16

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aput-wide v4, v7, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skipping all time stat \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v13, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    const-wide v7, 0x417e133800000000L    # 3.1536E7

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const-string v0, "maxOneGame"

    invoke-virtual {v2, v0, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_3
    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    iget-object v0, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v0

    iget-object v7, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->b:[D

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v12

    aput-wide v12, v7, v8

    sget-object v7, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    if-ne v0, v7, :cond_6

    iget-object v7, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->b:[D

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-wide v12, v7, v8

    cmpg-double v7, v12, v4

    if-ltz v7, :cond_5

    iget-object v7, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-wide v12, v7, v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-wide v7, 0x417e133800000000L    # 3.1536E7

    cmpl-double v14, v12, v7

    if-lez v14, :cond_4

    goto :goto_4

    :cond_5
    const-wide v7, 0x417e133800000000L    # 3.1536E7

    :goto_4
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reset PRT mpg statistics - invalid value "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget-wide v14, v13, v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v1, Lcom/prineside/tdi2/managers/StatisticsManager;->b:[D

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aput-wide v4, v12, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_6
    const-wide v7, 0x417e133800000000L    # 3.1536E7

    goto :goto_3

    :catch_3
    move-exception v0

    const-wide v7, 0x417e133800000000L    # 3.1536E7

    :goto_5
    :try_start_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "skipping max one game stat \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method public save()V
    .locals 14

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_STATISTICS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-wide/16 v7, 0x0

    if-ge v6, v4, :cond_3

    aget-object v9, v3, v6

    iget-object v10, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-wide v11, v10, v11

    cmpl-double v10, v11, v7

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->a:[D

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-wide v9, v8, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "allTime"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_5

    aget-object v9, v3, v6

    iget-object v10, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->b:[D

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-wide v11, v10, v11

    cmpl-double v10, v11, v7

    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->b:[D

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-wide v12, v11, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v1, v10, v9}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxOneGame"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    iput-boolean v5, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->d:Z

    const-string v0, "StatisticsManager"

    const-string v1, "Saved"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/StatisticsManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/StatisticsManager$1;-><init>(Lcom/prineside/tdi2/managers/StatisticsManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    new-instance v0, Lcom/prineside/tdi2/managers/StatisticsManager$2;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/StatisticsManager$2;-><init>(Lcom/prineside/tdi2/managers/StatisticsManager;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager;->k:Lcom/badlogic/gdx/LifecycleListener;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/StatisticsManager;->reload()V

    return-void
.end method
