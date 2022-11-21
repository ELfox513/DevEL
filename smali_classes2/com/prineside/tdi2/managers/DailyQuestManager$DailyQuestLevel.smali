.class public Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/DailyQuestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DailyQuestLevel"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public endTimestamp:I

.field public forDate:Ljava/lang/String;

.field public forDateTimestamp:I

.field public isLocalFallback:Z

.field public prizesFirstPlace:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public prizesSecondPlace:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public prizesThirdPlace:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public prizesTop10Percent:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public prizesTop30Percent:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public prizesTop3Percent:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public questId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesFirstPlace:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesSecondPlace:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesThirdPlace:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop3Percent:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop10Percent:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop30Percent:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getForDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->forDate:Ljava/lang/String;

    return-object v0
.end method

.method public getForDateTimestamp()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->forDateTimestamp:I

    return v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestName()Ljava/lang/CharSequence;
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    iget-object v1, v0, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v3, ": "

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-static {}, Lcom/prineside/tdi2/managers/DailyQuestManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/managers/DailyQuestManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4, v4}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getTitle(ZZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->requiredValue:J

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->formatValueForUi(D)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/managers/DailyQuestManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    invoke-static {}, Lcom/prineside/tdi2/managers/DailyQuestManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/managers/DailyQuestManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "defeat_waves"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->waves:I

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/managers/DailyQuestManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getQuestRewards()Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    iget-object v1, v0, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->isLocalFallback:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->questId:I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->forDate:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->forDateTimestamp:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->endTimestamp:I

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesFirstPlace:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesSecondPlace:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesThirdPlace:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop3Percent:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop10Percent:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop30Percent:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public setCompleted()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    iget v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->forDateTimestamp:I

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->setLastCompletedDailyQuestTimestamp(I)V

    return-void
.end method

.method public setForDate(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->forDate:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/prineside/tdi2/managers/DailyQuestManager;->l()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->forDateTimestamp:I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public validate()V
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->questId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/prineside/tdi2/BasicLevel;->dailyQuest:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v3, " found"

    const-string v4, "level must contain only one quest, "

    const/4 v5, 0x0

    const-string v6, ":"

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v7, :cond_1

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Q:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quest name must start with Q:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v8, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v8, :cond_6

    if-nez v1, :cond_5

    if-ne v8, v7, :cond_4

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quest name must start with WQ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "level must contain only one quest but it contains regular & wave quests"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v7, v1

    :goto_1
    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->isUseStockGameValues()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "base must disable researches & trophies"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no quests found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BasicLevel.dailyQuest must be true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name must be DQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->questId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wasCompleted()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->forDateTimestamp:I

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->k(Lcom/prineside/tdi2/managers/DailyQuestManager;)I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    const-class v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->isLocalFallback:Z

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->questId:I

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->forDate:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->forDateTimestamp:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->endTimestamp:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesFirstPlace:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesSecondPlace:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesThirdPlace:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop3Percent:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop10Percent:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop30Percent:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
