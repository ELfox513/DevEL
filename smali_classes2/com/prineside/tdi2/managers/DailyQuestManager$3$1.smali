.class Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/DailyQuestManager$3;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/DailyQuestManager$3;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;ILcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;ILcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/BasicLevel;)V

    return-void
.end method

.method private synthetic b(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;ILcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 2

    if-eqz p4, :cond_0

    iget-object p4, p4, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;Ljava/lang/String;)Ljava/lang/String;

    iget-object p4, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object p4, p4, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {p4, p1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->d(Lcom/prineside/tdi2/managers/DailyQuestManager;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    sget-object p4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p4, p4, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v0, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object p4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getForDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->f(Lcom/prineside/tdi2/managers/DailyQuestManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {v0, p2}, Lcom/prineside/tdi2/managers/DailyQuestManager;->h(Lcom/prineside/tdi2/managers/DailyQuestManager;I)I

    iget-object p2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {p2}, Lcom/prineside/tdi2/managers/DailyQuestManager;->e(Lcom/prineside/tdi2/managers/DailyQuestManager;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "dailyQuestLastQuestDate"

    invoke-virtual {p4, v0, p2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {p2}, Lcom/prineside/tdi2/managers/DailyQuestManager;->g(Lcom/prineside/tdi2/managers/DailyQuestManager;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "dailyQuestLastQuestId"

    invoke-virtual {p4, v0, p2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    invoke-interface {p3, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->c(Lcom/prineside/tdi2/managers/DailyQuestManager;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "DailyQuestManager"

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    const-string v2, "min_build"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb8

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "game_needs_update_for_daily_quests"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object v2, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->c(Lcom/prineside/tdi2/managers/DailyQuestManager;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;-><init>()V

    const-string v3, "date"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->setForDate(Ljava/lang/String;)V

    const-string v3, "end_timestamp"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->endTimestamp:I

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v3

    add-int/lit8 v3, v3, -0x3c

    iget v5, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->endTimestamp:I

    if-gt v3, v5, :cond_9

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    iget v5, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->endTimestamp:I

    const v6, 0x15180

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v3, "prize_first_place"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v5, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesFirstPlace:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v3, "prize_second_place"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v5, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesSecondPlace:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v3, "prize_third_place"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v5, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesThirdPlace:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string v3, "prize_top_3_percent"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v5, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop3Percent:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const-string v3, "prize_top_10_percent"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v5, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop10Percent:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    const-string v3, "prize_top_30_percent"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v5, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop30Percent:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    const-string v3, "daily_quest"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->questId:I

    iget-object v4, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyQuestHash(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data_hash"

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded DQ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hash differ, loading from server"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object v4, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    new-instance v5, Lcom/prineside/tdi2/managers/l;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/prineside/tdi2/managers/l;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;ILcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v4, v3, v5}, Lcom/prineside/tdi2/managers/DailyQuestManager;->loadAndStoreDailyQuestFromServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V

    goto :goto_7

    :cond_8
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DQ"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {v1, v2}, Lcom/prineside/tdi2/managers/DailyQuestManager;->d(Lcom/prineside/tdi2/managers/DailyQuestManager;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-interface {v1, v2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    goto :goto_7

    :cond_9
    :goto_6
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    const-string v2, "Error: incorrect device time"

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object v2, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->c(Lcom/prineside/tdi2/managers/DailyQuestManager;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "failed to parse daily quest map"

    invoke-static {v0, v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$3;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->c(Lcom/prineside/tdi2/managers/DailyQuestManager;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_7
    return-void
.end method
