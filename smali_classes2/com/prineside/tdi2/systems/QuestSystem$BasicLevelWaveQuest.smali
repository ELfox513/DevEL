.class public Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;
.super Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/QuestSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicLevelWaveQuest"
.end annotation


# instance fields
.field public final i:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

.field public final j:Lcom/prineside/tdi2/BasicLevel;

.field public final k:Lcom/prineside/tdi2/GameSystemProvider;

.field public l:D


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/BasicLevel$WaveQuest;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 7

    iget-object v1, p2, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "defeat_waves"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p2, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->waves:I

    int-to-double v3, v0

    iget-object v5, p2, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    move-object v0, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;DLcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/GameSystemProvider;)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->l:D

    iput-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->j:Lcom/prineside/tdi2/BasicLevel;

    iput-object p2, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->i:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iput-object p3, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;)Lcom/prineside/tdi2/BasicLevel$WaveQuest;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->i:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    return-object p0
.end method


# virtual methods
.method public getValue()D
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/WaveSystem;->getCompletedWavesCount()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public onCompletion()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/systems/QuestSystem;->getListItem(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->i:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->addCompletedQuest(Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->WAVE_QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->i:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->j:Lcom/prineside/tdi2/BasicLevel;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->waveQuestBasicLevel:Ljava/lang/String;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->i:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->waveQuestId:Ljava/lang/String;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43700000    # 240.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x44000000    # 512.0f

    const/16 v4, 0x10

    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->addCompletedQuestIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;FFI)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->i:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->i:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/prineside/tdi2/systems/QuestSystem;->a(Lcom/prineside/tdi2/systems/QuestSystem;I)I

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem;->b(Lcom/prineside/tdi2/systems/QuestSystem;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public update()V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->getValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->l:D

    cmpl-double v4, v2, v0

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-virtual {v2, p0}, Lcom/prineside/tdi2/systems/QuestSystem;->getListItem(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->h:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v4, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v4, " [#90A4AE]"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->d:D

    invoke-static {v0, v1, v5, v6}, Ljava/lang/StrictMath;->min(DD)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const-string v5, "[] / [#FFFFFF]"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->d:D

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const-string v5, "[]"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iput-wide v0, p0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->l:D

    :cond_1
    return-void
.end method
