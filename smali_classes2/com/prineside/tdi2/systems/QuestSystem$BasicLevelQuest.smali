.class public Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;
.super Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/QuestSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicLevelQuest"
.end annotation


# instance fields
.field public final i:Lcom/prineside/tdi2/BasicLevel;

.field public final j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

.field public final k:Lcom/prineside/tdi2/GameSystemProvider;

.field public l:D


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/BasicLevelQuestConfig;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 7

    invoke-virtual {p2}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getTitle(ZZ)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getRequiredValue(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)J

    move-result-wide v3

    long-to-double v3, v3

    iget-object v0, p3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getPrizes(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    move-object v0, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;DLcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/GameSystemProvider;)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->l:D

    iput-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->i:Lcom/prineside/tdi2/BasicLevel;

    iput-object p2, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iput-object p3, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method


# virtual methods
.method public getValue()D
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v0}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isDuringGame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iget-wide v1, v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->savedValue:D

    iget-object v3, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v3

    add-double/2addr v1, v3

    return-wide v1
.end method

.method public onCompletion()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/systems/QuestSystem;->getListItem(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->addCompletedQuest(Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getExtraDustInEndless(Lcom/prineside/tdi2/GameValueProvider;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-static {v2}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v4, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v3, v4, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->i:Lcom/prineside/tdi2/BasicLevel;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->questBasicLevel:Ljava/lang/String;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->questId:Ljava/lang/String;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/high16 v2, 0x44000000    # 512.0f

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x43700000    # 240.0f

    sub-float/2addr v3, v4

    const/16 v4, 0x10

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->addCompletedQuestIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;FFI)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->e:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/prineside/tdi2/systems/QuestSystem;->a(Lcom/prineside/tdi2/systems/QuestSystem;I)I

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem;->b(Lcom/prineside/tdi2/systems/QuestSystem;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public update()V
    .locals 11

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->getValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->l:D

    cmpl-double v4, v2, v0

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-virtual {v2, p0}, Lcom/prineside/tdi2/systems/QuestSystem;->getListItem(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->h:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v4, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-wide v4, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->d:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iget-wide v6, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->d:D

    invoke-static {v0, v1, v6, v7}, Ljava/lang/StrictMath;->min(DD)D

    move-result-wide v6

    double-to-long v6, v6

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->d:D

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->formatValueForUi(DDZ)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iput-wide v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->l:D

    :cond_2
    return-void
.end method
