.class public Lcom/prineside/tdi2/BasicLevelQuestConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public a:I

.field public b:I

.field public duringGame:Z

.field public id:Ljava/lang/String;

.field public level:Lcom/prineside/tdi2/BasicLevel;

.field public prizes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public requiredValue:J

.field public savedValue:D

.field public scripted:Z

.field public scriptedTitle:Ljava/lang/String;

.field public statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->c:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/prineside/tdi2/enums/StatisticsType;JZLcom/prineside/tdi2/BasicLevel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->a:I

    iput v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->b:I

    iput-object p1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scripted:Z

    iput-object p3, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    iput-wide p4, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->requiredValue:J

    iput-boolean p6, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->duringGame:Z

    iput-object p7, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->level:Lcom/prineside/tdi2/BasicLevel;

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;Lcom/prineside/tdi2/BasicLevel;)Lcom/prineside/tdi2/BasicLevelQuestConfig;
    .locals 10

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "scripted"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v3, "statisticsType"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v4, v3

    const-wide/16 v5, 0x0

    const-string v3, "value"

    invoke-virtual {p0, v3, v5, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v3, "oneGame"

    invoke-virtual {p0, v3, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    new-instance v9, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    move-object v1, v9

    move v3, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/prineside/tdi2/BasicLevelQuestConfig;-><init>(Ljava/lang/String;ZLcom/prineside/tdi2/enums/StatisticsType;JZLcom/prineside/tdi2/BasicLevel;)V

    if-eqz v0, :cond_1

    const-string p1, "title"

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v9, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scriptedTitle:Ljava/lang/String;

    :cond_1
    const-string p1, "prizes"

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v9, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {p1}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object v9
.end method


# virtual methods
.method public createIngameQuest(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scripted:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;

    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->level:Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {v0, v1, p0, p1}, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;-><init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/BasicLevelQuestConfig;Lcom/prineside/tdi2/GameSystemProvider;)V

    return-object v0
.end method

.method public formatValueForUi(D)Ljava/lang/CharSequence;
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scripted:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->c:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    return-object p1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v1, p1, p2}, Lcom/prineside/tdi2/managers/StatisticsManager;->formatStatisticsValue(Lcom/prineside/tdi2/enums/StatisticsType;D)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public formatValueForUi(DDZ)Ljava/lang/CharSequence;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->c:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-wide/16 v1, 0x0

    cmpg-double v3, p3, v1

    if-gtz v3, :cond_0

    return-object v0

    :cond_0
    invoke-static {p3, p4, p1, p2}, Ljava/lang/StrictMath;->min(DD)D

    move-result-wide p1

    if-eqz p5, :cond_1

    const-string v1, "[#90A4AE]"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->formatValueForUi(D)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz p5, :cond_2

    const-string p1, "[][#ffffff]"

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2
    invoke-virtual {p0, p3, p4}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->formatValueForUi(D)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz p5, :cond_3

    const-string p1, "[]"

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3
    return-object v0
.end method

.method public getCurrentValue(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)D
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getRequiredValue(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    :cond_0
    iget-boolean p1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scripted:Z

    if-nez p1, :cond_1

    iget-wide v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->savedValue:D

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtraDustInEndless(Lcom/prineside/tdi2/GameValueProvider;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->level:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_1

    iget-object v1, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v1, v1, v0

    if-ne v1, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    int-to-double v0, v0

    add-int/lit8 v3, v3, -0x1

    int-to-double v2, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->BIT_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p1, v4}, Lcom/prineside/tdi2/GameValueProvider;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v4

    iget-boolean p1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->duringGame:Z

    if-eqz p1, :cond_2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    mul-double v0, v0, v4

    double-to-int p1, v0

    return p1

    :cond_2
    mul-double v4, v4, v2

    double-to-int p1, v4

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrizes(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)Lcom/badlogic/gdx/utils/Array;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->level:Lcom/prineside/tdi2/BasicLevel;

    iget-boolean v1, v0, Lcom/prineside/tdi2/BasicLevel;->fixedQuests:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prineside/tdi2/BasicLevelStage;->regular:Z

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->REGULAR_QUESTS_PRIZE_MULTIPLIER:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    return-object p1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {p1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_4

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ItemType;->GAME_VALUE_LEVEL:Lcom/prineside/tdi2/enums/ItemType;

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ItemType;->GAME_VALUE_GLOBAL:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double/2addr v4, v6

    double-to-int v4, v4

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p1

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    return-object p1
.end method

.method public getRequiredValue(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)J
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->level:Lcom/prineside/tdi2/BasicLevel;

    iget-boolean v1, v0, Lcom/prineside/tdi2/BasicLevel;->fixedQuests:Z

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->requiredValue:J

    return-wide v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prineside/tdi2/BasicLevelStage;->regular:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->requiredValue:J

    return-wide v0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->REGULAR_QUESTS_DIFFICULTY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_2

    iget-wide v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->requiredValue:J

    return-wide v0

    :cond_2
    iget-wide v2, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->requiredValue:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x64

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    return-wide v0

    :cond_3
    const-wide/16 v4, 0x1f4

    cmp-long p1, v0, v4

    if-gez p1, :cond_4

    const-wide/16 v2, 0x5

    rem-long v2, v0, v2

    :goto_0
    sub-long/2addr v0, v2

    return-wide v0

    :cond_4
    const-wide/16 v4, 0x3e8

    cmp-long p1, v0, v4

    if-gez p1, :cond_5

    const-wide/16 v2, 0xa

    rem-long v2, v0, v2

    goto :goto_0

    :cond_5
    const-wide/16 v4, 0x1388

    cmp-long p1, v0, v4

    if-gez p1, :cond_6

    const-wide/16 v2, 0x32

    rem-long v2, v0, v2

    goto :goto_0

    :cond_6
    rem-long v2, v0, v2

    goto :goto_0
.end method

.method public getTitle(ZZ)Ljava/lang/CharSequence;
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->c:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-boolean v1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scripted:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v2, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scriptedTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    iget-object v2, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/StatisticsManager;->getStatisticsTitle(Lcom/prineside/tdi2/enums/StatisticsType;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->duringGame:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const-string p2, "[#90A4AE]"

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    const-string p2, " "

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "during_one_game"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, "[]"

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2
    return-object v0
.end method

.method public isCompleted()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isQuestCompleted(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->a:I

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDuringGame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->duringGame:Z

    return v0
.end method

.method public isScripted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scripted:Z

    return v0
.end method

.method public setCompleted(Z)V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->b:I

    iput p1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->a:I

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->savedValue:D

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->setQuestCompleted(Ljava/lang/String;Z)V

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scripted:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "scripted"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scriptedTitle:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "statisticsType"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-wide v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->requiredValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->duringGame:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "oneGame"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v0, "prizes"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ItemStack;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ItemStack;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void
.end method

.method public wasEverCompleted()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isQuestEverCompleted(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->b:I

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
