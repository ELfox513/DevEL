.class public Lcom/prineside/tdi2/managers/DailyQuestManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/DailyQuestManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;,
        Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;,
        Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;,
        Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;,
        Lcom/prineside/tdi2/managers/DailyQuestManager$Serializer;
    }
.end annotation


# static fields
.field public static final LEVEL_NAME_PREFIX:Ljava/lang/String; = "DQ"

.field public static final RESET_QUESTS_QUEST_ID:Ljava/lang/String; = "_resetQuests"

.field public static final u:Ljava/util/Calendar;

.field public static final v:Ljava/text/SimpleDateFormat;

.field public static final w:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

.field public final b:Ljava/util/Date;

.field public d:I

.field public dailyLootCurrentDay:Ljava/lang/String;

.field public dailyLootCurrentDayIndex:I

.field public dailyLootCurrentQuest:Ljava/lang/String;

.field public dailyLootDayConfigs:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;",
            ">;"
        }
    .end annotation
.end field

.field public dailyLootDaysInRow:I

.field public dailyLootLastCompletedDay:Ljava/lang/String;

.field public dailyLootMaxBonusPerMonth:I

.field public dailyLootMinBonusPerMonth:I

.field public k:Ljava/lang/String;

.field public p:I

.field public final q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;",
            ">;"
        }
    .end annotation
.end field

.field public r:[I

.field public s:I

.field public t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    sput-object v1, Lcom/prineside/tdi2/managers/DailyQuestManager;->u:Ljava/util/Calendar;

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/prineside/tdi2/managers/DailyQuestManager;->v:Ljava/text/SimpleDateFormat;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->w:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->b:Ljava/util/Date;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->p:I

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDayConfigs:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDayIndex:I

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/DailyQuestManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->reload()V

    return-void
.end method

.method public static synthetic b()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->w:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/DailyQuestManager;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/managers/DailyQuestManager;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    return-object p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/managers/DailyQuestManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/managers/DailyQuestManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->k:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic g(Lcom/prineside/tdi2/managers/DailyQuestManager;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->p:I

    return p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/managers/DailyQuestManager;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->p:I

    return p1
.end method

.method public static synthetic i(Lcom/prineside/tdi2/managers/DailyQuestManager;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->o(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/managers/DailyQuestManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic k(Lcom/prineside/tdi2/managers/DailyQuestManager;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->d:I

    return p0
.end method

.method public static synthetic l()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->v:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public getCurrentDayDate()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->b:Ljava/util/Date;

    invoke-virtual {v2, v0, v1}, Ljava/util/Date;->setTime(J)V

    sget-object v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->v:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->b:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDayLevel(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayDate()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getForDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->isLocalFallback:Z

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v0, "DailyQuestManager"

    const-string v1, "requesting from server"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->n()Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v2, "POST"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/prineside/tdi2/Config;->GET_DAILY_QUEST_INFO_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v3, Lcom/prineside/tdi2/managers/DailyQuestManager$3;

    invoke-direct {v3, p0, p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$3;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v2, v1, v3}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to get daily quest"

    invoke-static {v0, v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/DailyQuestManager$4;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$4;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getDailyLootCurrentDayIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->p()V

    iget v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDayIndex:I

    return v0
.end method

.method public getDailyLootCurrentMonthIndex()I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDayIndex:I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDayConfigs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getDailyLootCurrentQuest()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->p()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentQuest:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyLootDaysInRow()I
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->p()V

    iget v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDaysInRow:I

    return v0
.end method

.method public getDailyLootNextDaysInRowLegendariesCount()I
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->p()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->r:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    iget v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDaysInRow:I

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    return v0
.end method

.method public getDailyLootNextDaysInRowMilestone()I
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->p()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->r:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    iget v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDaysInRow:I

    if-le v1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDaysInRow:I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, v1, v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->s:I

    div-int/2addr v0, v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v1, v1, v3

    add-int/lit8 v0, v0, 0x1

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public getDailyQuestHash(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "levels/DQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "levels/maps/DQ"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    const-string v2, "UTF-8"

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"configuration\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"map\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/utils/StringFormatter;->md5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDailyQuestHashFromServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->GET_DAILY_QUEST_HASH_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v1, Lcom/prineside/tdi2/managers/DailyQuestManager$2;

    invoke-direct {v1, p0, p2}, Lcom/prineside/tdi2/managers/DailyQuestManager$2;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    return-void
.end method

.method public getDailyQuestLevelCache()Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayDate()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getForDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->isLocalFallback:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->n()Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    return-object v0
.end method

.method public getLeaderboards(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v6, v1, p1, v0}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_4

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;

    aget-object v2, v2, v1

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v3

    iget v4, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->requestTimestamp:I

    sub-int/2addr v3, v4

    const/16 v4, 0x1e

    if-le v3, v4, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->date:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->playerId:Ljava/lang/String;

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->playerId:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-interface {p2, v2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v0, "POST"

    invoke-direct {v7, v0}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Config;->GET_DAILY_QUEST_LEADERBOARDS_URL:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "date"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "playerid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v3, v1

    invoke-static {v0}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v8, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v9, Lcom/prineside/tdi2/managers/DailyQuestManager$7;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/managers/DailyQuestManager$7;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V

    invoke-interface {v8, v7, v9}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "DailyQuestManager"

    const-string v1, "Failed to get leaderboards"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v6}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getNextDayDate()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->b:Ljava/util/Date;

    invoke-virtual {v2, v0, v1}, Ljava/util/Date;->setTime(J)V

    sget-object v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->v:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->b:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondsTillNextDailyLoot()I
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->p()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/prineside/tdi2/managers/DailyQuestManager;->u:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0x15180

    sub-int/2addr v0, v1

    return v0
.end method

.method public isTodayDailyLootQuestCompleted()Z
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->p()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayDate()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootLastCompletedDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadAndStoreDailyQuestFromServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/BasicLevel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->GET_DAILY_QUEST_MAP_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v2, Lcom/prineside/tdi2/managers/DailyQuestManager$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$5;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager;Lcom/prineside/tdi2/utils/ObjectRetriever;I)V

    invoke-interface {v1, v0, v2}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_4

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/BasicLevelStage;

    aget-object v3, v3, v2

    iget-boolean v4, v3, Lcom/prineside/tdi2/BasicLevelStage;->regular:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_3

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v5, v5, v4

    iget-boolean v6, v5, Lcom/prineside/tdi2/BasicLevel;->fixedQuests:Z

    if-eqz v6, :cond_0

    goto :goto_3

    :cond_0
    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isOpened(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isVisible(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :goto_2
    iget-object v7, v5, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v8, :cond_2

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_9

    const/4 v0, 0x0

    :goto_4
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_8

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/BasicLevelStage;

    aget-object v2, v2, v0

    iget-boolean v3, v2, Lcom/prineside/tdi2/BasicLevelStage;->regular:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_5
    iget-object v4, v2, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_7

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    :goto_6
    iget-object v6, v4, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_6

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v0, v4, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    return-object v0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    const-string v0, "_resetQuests"

    return-object v0

    :cond_9
    const/4 v1, 0x3

    if-le v2, v1, :cond_a

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/prineside/tdi2/utils/FastRandom;->getFairInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_a
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->random()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final n()Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;
    .locals 9

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayDate()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->k:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->p:I

    goto/16 :goto_2

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/BasicLevel;

    iget-boolean v5, v4, Lcom/prineside/tdi2/BasicLevel;->dailyQuest:Z

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->random()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->k:Ljava/lang/String;

    const-string v7, "DailyQuestManager"

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->p:I

    if-ne v6, v5, :cond_3

    iget v6, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v6, v2, :cond_3

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->random()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "quest "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was selected for the last time, fallback to "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected quest "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " out of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    :goto_2
    new-instance v3, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    invoke-direct {v3}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;-><init>()V

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->setForDate(Ljava/lang/String;)V

    iput v1, v3, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->questId:I

    :try_start_0
    sget-object v4, Lcom/prineside/tdi2/managers/DailyQuestManager;->v:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getNextDayDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v5, v4

    iput v5, v3, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->endTimestamp:I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DQ"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;Ljava/lang/String;)Ljava/lang/String;

    iput-boolean v2, v3, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->isLocalFallback:Z

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v4, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v2

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->k:Ljava/lang/String;

    iput v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->p:I

    const-string v4, "dailyQuestLastQuestDate"

    invoke-virtual {v2, v4, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dailyQuestLastQuestId"

    invoke-virtual {v2, v1, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-object v3
.end method

.method public final o(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V
    .locals 5

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->wasCompleted()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v3}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->setCompleted(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, v0, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    invoke-virtual {v3}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->setCompleted(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/ScreenManager;->startNewDailyLevel(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V

    return-void
.end method

.method public final p()V
    .locals 8

    const-string v0, "DailyQuestManager"

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayDate()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDay:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_0
    sget-object v2, Lcom/prineside/tdi2/managers/DailyQuestManager;->v:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDay:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/prineside/tdi2/utils/PMath;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v5, "failed to parse dailyLootCurrentDay"

    invoke-static {v0, v5, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    :goto_1
    iget-object v5, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootLastCompletedDay:Ljava/lang/String;

    if-eqz v5, :cond_2

    if-nez v2, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dailyLootDaysInRow reset ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootLastCompletedDay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDay:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDaysInRow:I

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootLastCompletedDay:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDayIndex:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDayIndex:I

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDay:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentQuest:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->save()V

    :cond_5
    return-void
.end method

.method public final reload()V
    .locals 9

    const-string v0, "0"

    const-string v1, "DailyQuestManager"

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v4, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v3

    :try_start_0
    const-string v4, "lastCompletedDailyQuestTimestamp"

    invoke-virtual {v3, v4, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->d:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last completed daily quest timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "no last completed daily quest timestamp"

    invoke-static {v1, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v4, "dailyQuestLastQuestDate"

    invoke-virtual {v3, v4, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->k:Ljava/lang/String;

    const-string v4, "dailyQuestLastQuestId"

    const-string v5, "-1"

    invoke-virtual {v3, v4, v5}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->p:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->k:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last loaded daily quest id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->p:I

    iput-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->k:Ljava/lang/String;

    const-string v4, "no last loaded daily quest"

    invoke-static {v1, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-instance v4, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "res/daily-loot.json"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    const-string v5, "minBonusPerMonth"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootMinBonusPerMonth:I

    const-string v5, "maxBonusPerMonth"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootMaxBonusPerMonth:I

    const-string v5, "daysInRow"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    new-instance v6, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    const-string v7, "milestones"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/IntArray;->toArray()[I

    move-result-object v6

    iput-object v6, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->r:[I

    const-string v6, "furtherInterval"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->s:I

    iget-object v5, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDayConfigs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const-string v5, "days"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v6, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDayConfigs:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v5}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    :try_start_2
    const-string v4, "dailyLootCurrentDayIndex"

    invoke-virtual {v3, v4, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDayIndex:I

    const-string v4, "dailyLootDaysInRow"

    invoke-virtual {v3, v4, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDaysInRow:I

    const-string v0, "dailyLootLastCompletedDay"

    invoke-virtual {v3, v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootLastCompletedDay:Ljava/lang/String;

    const-string v0, "dailyLootCurrentQuest"

    invoke-virtual {v3, v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentQuest:Ljava/lang/String;

    const-string v0, "dailyLootCurrentDay"

    invoke-virtual {v3, v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDay:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v2, "failed to load daily loot config"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method public removeLoadedDailyQuestMapIfMd5HashDiffers(ILjava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "levels/DQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    const-string v3, "DailyQuestManager"

    if-eqz v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "levels/maps/DQ"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    const-string v4, "UTF-8"

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"configuration\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",\"map\":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/tdi2/utils/StringFormatter;->md5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hash mismatch for quest level "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on disk, removing"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    :cond_1
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DQ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->unloadLevel(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hash match for quest level "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on disk"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "local DQ config not exists"

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final save()V
    .locals 4

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->t:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDayIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "dailyLootCurrentDayIndex"

    invoke-virtual {v0, v3, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDaysInRow:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dailyLootDaysInRow"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootLastCompletedDay:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "dailyLootLastCompletedDay"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentQuest:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "dailyLootCurrentQuest"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDay:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "dailyLootCurrentDay"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "manager not set up yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDailyLootQuestCompleted()Lcom/prineside/tdi2/IssuedItems;
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayDate()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootLastCompletedDay:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyLootNextDaysInRowMilestone()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyLootNextDaysInRowLegendariesCount()I

    move-result v3

    iput-object v1, v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootLastCompletedDay:Ljava/lang/String;

    iget v4, v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDaysInRow:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDaysInRow:I

    iget-object v4, v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDayConfigs:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;

    iget v7, v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootCurrentDayIndex:I

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    rem-int v8, v7, v4

    aget-object v6, v6, v8

    div-int/2addr v7, v4

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;->getCount(I)I

    move-result v4

    new-instance v7, Lcom/prineside/tdi2/IssuedItems;

    sget-object v8, Lcom/prineside/tdi2/IssuedItems$IssueReason;->DAILY_LOOT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iput-object v1, v7, Lcom/prineside/tdi2/IssuedItems;->dailyLootDate:Ljava/lang/String;

    iget v1, v0, Lcom/prineside/tdi2/managers/DailyQuestManager;->dailyLootDaysInRow:I

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getInventoryStatistics()Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->cpy()Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object v9, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    sget-object v10, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v15}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v15

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->BIT_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v15, v5}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v14

    double-to-float v15, v14

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move/from16 v16, v5

    move-object/from16 v20, v1

    invoke-virtual/range {v8 .. v20}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v5

    iget-object v8, v7, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->countItem(Lcom/prineside/tdi2/Item;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    iget-object v3, v6, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;->item:Lcom/prineside/tdi2/Item;

    invoke-direct {v2, v3, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v7, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v2, v7, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->save()V

    return-object v7
.end method

.method public setLastCompletedDailyQuestTimestamp(I)V
    .locals 3

    iput p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->d:I

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "lastCompletedDailyQuestTimestamp"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/DailyQuestManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$1;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->reload()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager;->t:Z

    return-void
.end method

.method public startDailyLevel()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/managers/DailyQuestManager$6;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$6;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayLevel(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method
